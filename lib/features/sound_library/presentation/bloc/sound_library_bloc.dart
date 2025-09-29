import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:audioplayers/audioplayers.dart';
import '../../../../core/models/page_state/bloc_status.dart';
import '../../domain/repository/sound_library_repository.dart';
import '../../data/model.dart';
import '../../data/services/sound_downloader.dart';
import '../../data/services/sound_file_type_util.dart';
import 'sound_library_event.dart';
import 'sound_library_state.dart';

/// Manages the state and business logic for the sound library feature
/// Handles hierarchical category navigation and direct sounds display
@injectable
class SoundLibraryBloc extends Bloc<SoundLibraryEvent, SoundLibraryState> {
  final SoundLibraryRepository _repository;
  final Map<String, AudioPlayer> _audioPlayers = {};

  SoundLibraryBloc(this._repository) : super(const SoundLibraryState()) {
    on<FetchHierarchicalCategoriesEvent>(_onFetchHierarchicalCategories);
    on<SelectLevel1CategoryEvent>(_onSelectLevel1Category);
    on<NavigateToLevel2CategoryEvent>(_onNavigateToLevel2Category);
    on<NavigateToLevel3CategoryEvent>(_onNavigateToLevel3Category);
    on<NavigateToLevel4CategoryEvent>(_onNavigateToLevel4Category);
    on<ToggleDirectSoundsViewEvent>(_onToggleDirectSoundsView);
    on<ResetSoundLibraryEvent>(_onReset);
    on<RefreshSoundLibraryEvent>(_onRefresh);
    on<ShowAllSubcategorySoundsEvent>(_onShowAllSubcategorySounds);
    
    // Audio player events
    on<LoadAudioEvent>(_onLoadAudio);
    on<PlayAudioEvent>(_onPlayAudio);
    on<PauseAudioEvent>(_onPauseAudio);
    on<StopAudioEvent>(_onStopAudio);
    on<UpdateAudioPositionEvent>(_onUpdateAudioPosition);
    on<SeekAudioEvent>(_onSeekAudio);
    on<UpdateAudioDurationEvent>(_onUpdateAudioDuration);
    on<AudioErrorEvent>(_onAudioError);
    on<ResetAudioStateEvent>(_onResetAudioState);
    on<UpdateAudioPlayerStateEvent>(_onUpdateAudioPlayerState);
    on<DownloadAudioEvent>(_onDownloadAudio);
    on<ShowDownloadMessageEvent>(_onShowDownloadMessage);
    on<UpdateDownloadProgressEvent>(_onUpdateDownloadProgress);
    
    // MusicPlayer events
    on<InitializeMusicPlayerEvent>(_onInitializeMusicPlayer);
    on<MusicPlayerTogglePlayPauseEvent>(_onMusicPlayerTogglePlayPause);
    on<MusicPlayerSeekEvent>(_onMusicPlayerSeek);
    on<MusicPlayerDownloadEvent>(_onMusicPlayerDownload);
  }

  /// Fetches hierarchical sound categories from the API
  /// Automatically selects the first category after successful fetch
  Future<void> _onFetchHierarchicalCategories(
    FetchHierarchicalCategoriesEvent event,
    Emitter<SoundLibraryState> emit,
  ) async {
    // If we already have data, don't fetch again
    if (state.level1Categories.isNotEmpty && state.status.isSuccess()) {
      return;
    }

    emit(state.copyWith(status: const BlocStatus.loading()));

    try {
      // Add timeout to prevent long waits
      final result = await _repository.getHierarchicalSoundCategories()
          .timeout(const Duration(seconds: 30));
      
      result.fold(
        (error) => emit(state.copyWith(status: BlocStatus.fail(error: error))),
        (response) {
          final categories = response.data.level1RootCategories;
      
      emit(state.copyWith(
            status: const BlocStatus.success(),
            level1Categories: categories,
        error: null,
          ));
          
          if (categories.isNotEmpty) {
            add(SelectLevel1CategoryEvent(category: categories.first));
          }
        },
      );
    } catch (e) {
      emit(state.copyWith(
        status: BlocStatus.fail(error: 'Request timeout: ${e.toString()}'),
      ));
    }
  }

  /// Selects a main category and displays its direct sounds and subcategories
  void _onSelectLevel1Category(
    SelectLevel1CategoryEvent event,
    Emitter<SoundLibraryState> emit,
  ) {
    final category = event.category;

    emit(state.copyWith(
      selectedLevel1Category: category,
      currentLevel2Categories: category.level2Children,
      displaySounds: category.directSounds,
      displaySubcategories: category.level2Children,
      currentLevel2Category: null,
      currentLevel3Category: null,
      currentLevel4Category: null,
      currentLevel3Categories: [],
      currentLevel4Categories: [],
      status: const BlocStatus.success(),
    ));
  }

  /// Navigates to a Level 2 subcategory
  void _onNavigateToLevel2Category(
    NavigateToLevel2CategoryEvent event,
    Emitter<SoundLibraryState> emit,
  ) {
    final category = event.category;
    emit(state.copyWith(
      status: const BlocStatus.success(),
      currentLevel2Category: category,
      currentLevel3Categories: category.level3Grandchildren,
      displaySounds: category.directSounds,
      displaySubcategories: category.level3Grandchildren,
      currentLevel3Category: null,
      currentLevel4Category: null,
      currentLevel4Categories: [],
    ));
  }

  /// Navigates to a Level 3 subcategory
  void _onNavigateToLevel3Category(
    NavigateToLevel3CategoryEvent event,
    Emitter<SoundLibraryState> emit,
  ) {
    final category = event.category;
      emit(state.copyWith(
      status: const BlocStatus.success(),
      currentLevel3Category: category,
      currentLevel4Categories: category.level4GreatGrandchildren,
      displaySounds: category.directSounds,
      displaySubcategories: category.level4GreatGrandchildren,
      currentLevel4Category: null,
    ));
  }

  /// Navigates to a Level 4 subcategory
  void _onNavigateToLevel4Category(
    NavigateToLevel4CategoryEvent event,
    Emitter<SoundLibraryState> emit,
  ) {
    final category = event.category;
      emit(state.copyWith(
      status: const BlocStatus.success(),
      currentLevel4Category: category,
      displaySounds: category.directSounds,
      displaySubcategories: [],
    ));
  }

  /// Toggles between showing 3 direct sounds or all direct sounds
  void _onToggleDirectSoundsView(
    ToggleDirectSoundsViewEvent event,
    Emitter<SoundLibraryState> emit,
  ) {
    emit(state.copyWith(isViewingDirectSounds: !state.isViewingDirectSounds));
  }

  /// Resets navigation state but keeps loaded categories and selected main category
  void _onReset(ResetSoundLibraryEvent event, Emitter<SoundLibraryState> emit) {
    // If we have a selected category, restore its content
    if (state.selectedLevel1Category != null) {
      final selectedCategory = state.selectedLevel1Category!;
      emit(state.copyWith(
        // Keep selectedLevel1Category to maintain main category selection
        currentLevel2Category: null,
        currentLevel3Category: null,
        currentLevel4Category: null,
        currentLevel2Categories: [],
        currentLevel3Categories: [],
        currentLevel4Categories: [],
        displaySounds: selectedCategory.directSounds,
        displaySubcategories: selectedCategory.level2Children,
        isViewingDirectSounds: false,
        status: const BlocStatus.success(),
      ));
    } else {
      // If no category selected, just reset navigation state
      emit(state.copyWith(
        currentLevel2Category: null,
        currentLevel3Category: null,
        currentLevel4Category: null,
        currentLevel2Categories: [],
        currentLevel3Categories: [],
        currentLevel4Categories: [],
        displaySounds: [],
        displaySubcategories: [],
        isViewingDirectSounds: false,
        status: const BlocStatus.success(),
      ));
    }
  }

  /// Shows all sounds for a specific subcategory
  void _onShowAllSubcategorySounds(
    ShowAllSubcategorySoundsEvent event,
    Emitter<SoundLibraryState> emit,
  ) {
    final subcategory = event.subcategory;
    List<SoundData> allSounds = [];
    
    if (subcategory is Level2Category) {
      allSounds = subcategory.directSounds;
    } else if (subcategory is Level3Category) {
      allSounds = subcategory.directSounds;
    } else if (subcategory is Level4Category) {
      allSounds = subcategory.directSounds;
    }
    
    emit(state.copyWith(
      displaySounds: allSounds,
      displaySubcategories: [],
      status: const BlocStatus.success(),
    ));
  }

  /// Refreshes the sound library data by forcing a new API call
  void _onRefresh(
    RefreshSoundLibraryEvent event,
    Emitter<SoundLibraryState> emit,
  ) {
    // Reset state and fetch fresh data
    emit(const SoundLibraryState());
    add(const FetchHierarchicalCategoriesEvent());
  }

  // UI Helper Methods

  /// Gets the current page title based on navigation state
  String getCurrentPageTitle() {
    return state.currentLevel4Category?.catTitle ??
           state.currentLevel3Category?.catTitle ??
           state.currentLevel2Category?.catTitle ??
           state.selectedLevel1Category?.catTitle ??
           'مكتبة الأصوات';
  }

  /// Gets subcategories that have direct sounds for preview
  List<dynamic> getSubcategoriesWithSounds() {
    return state.displaySubcategories.where((subcategory) {
      if (subcategory is Level2Category) return subcategory.directSounds.isNotEmpty;
      if (subcategory is Level3Category) return subcategory.directSounds.isNotEmpty;
      if (subcategory is Level4Category) return subcategory.directSounds.isNotEmpty;
      return false;
    }).toList();
  }

  /// Gets up to 3 sounds from a subcategory for preview
  List<SoundData> getPreviewSounds(dynamic subcategory) {
    if (subcategory is Level2Category) return subcategory.directSounds.take(3).toList();
    if (subcategory is Level3Category) return subcategory.directSounds.take(3).toList();
    if (subcategory is Level4Category) return subcategory.directSounds.take(3).toList();
    return [];
  }

  /// Gets direct sounds for display (3 or all based on toggle state)
  List<SoundData> getDisplayDirectSounds() {
    final selectedCategory = state.selectedLevel1Category;
    if (selectedCategory == null) return [];
    return state.isViewingDirectSounds 
        ? selectedCategory.directSounds
        : selectedCategory.directSounds.take(3).toList();
  }

  /// Checks if "الكل" button should be shown for direct sounds
  bool shouldShowDirectSoundsAllButton() {
    final selectedCategory = state.selectedLevel1Category;
    return (selectedCategory?.directSounds.length ?? 0) > 3;
  }

  /// Checks if "الكل" button should be shown for a specific Level1 category
  bool shouldShowLevel1CategoryAllButton(Level1RootCategory category) {
    return category.directSounds.length > 3;
  }

  /// Gets subcategory title
  String getSubcategoryTitle(dynamic subcategory) {
    if (subcategory is Level2Category) return subcategory.catTitle;
    if (subcategory is Level3Category) return subcategory.catTitle;
    if (subcategory is Level4Category) return subcategory.catTitle;
    return "فئة فرعية";
  }

  /// Checks if loading state should be shown
  bool shouldShowLoading() => state.status.isLoading() && state.level1Categories.isEmpty;

  /// Checks if error state should be shown
  bool shouldShowError() => state.status.isFail();

  /// Checks if selected category content should be shown
  bool shouldShowSelectedCategory() => state.selectedLevel1Category != null;

  /// Checks if all categories should be shown
  bool shouldShowAllCategories() => state.status.isSuccess() && state.selectedLevel1Category == null;

  /// Gets error message
  String getErrorMessage() => state.status.error ?? "حدث خطأ غير متوقع";

  /// Checks if direct sounds should be shown
  bool shouldShowDirectSounds() {
    final selectedCategory = state.selectedLevel1Category;
    return selectedCategory?.directSounds.isNotEmpty == true;
  }

  /// Checks if subcategories should be shown
  bool shouldShowSubcategories() {
    final selectedCategory = state.selectedLevel1Category;
    return selectedCategory?.level2Children.isNotEmpty == true;
  }

  /// Gets direct sounds for display
  List<SoundData> getDirectSounds() {
    final selectedCategory = state.selectedLevel1Category;
    return selectedCategory?.directSounds ?? [];
  }

  /// Gets subcategories for display
  List<Level2Category> getSubcategories() {
    final selectedCategory = state.selectedLevel1Category;
    return selectedCategory?.level2Children ?? [];
  }

  /// Gets empty state message
  String getEmptyMessage() {
    if (state.level1Categories.isEmpty) {
      return 'لا توجد فئات صوتية متاحة';
    }
    return 'لا توجد محتويات متاحة';
  }

  /// Checks if content should be shown
  bool shouldShowContent() {
    return state.status.isSuccess() && 
           (state.level1Categories.isNotEmpty || 
            (state.selectedLevel1Category != null && 
             (state.displaySounds.isNotEmpty || state.displaySubcategories.isNotEmpty)));
  }

  /// Checks if subcategory content should be shown
  bool shouldShowSubcategoryContent() {
    return state.status.isSuccess() && 
           (state.displaySounds.isNotEmpty || state.displaySubcategories.isNotEmpty);
  }

  /// Gets subcategory empty message
  String getSubcategoryEmptyMessage() {
    return 'لا توجد محتويات متاحة';
  }

  /// Checks if direct sounds should be shown in subcategory
  bool shouldShowSubcategoryDirectSounds() {
    return state.displaySounds.isNotEmpty;
  }

  /// Checks if subcategories should be shown in subcategory page
  bool shouldShowSubcategorySubcategories() {
    return state.displaySubcategories.isNotEmpty;
  }

  /// Gets direct sounds for subcategory display
  List<SoundData> getSubcategoryDirectSounds() {
    return state.displaySounds;
  }

  /// Gets subcategories for subcategory display
  List<dynamic> getSubcategorySubcategories() {
    return state.displaySubcategories;
  }

  /// Checks if "الكل" button should be shown for a subcategory
  /// Returns true if the subcategory has more than 3 sounds
  bool shouldShowAllButtonForSubcategory(dynamic subcategory) {
    if (subcategory is Level2Category) {
      return subcategory.directSounds.length > 3;
    } else if (subcategory is Level3Category) {
      return subcategory.directSounds.length > 3;
    } else if (subcategory is Level4Category) {
      return subcategory.directSounds.length > 3;
    }
    return false;
  }

  /// Gets all sounds from a subcategory (for "الكل" button functionality)
  List<SoundData> getAllSoundsFromSubcategory(dynamic subcategory) {
    if (subcategory is Level2Category) {
      return subcategory.directSounds;
    } else if (subcategory is Level3Category) {
      return subcategory.directSounds;
    } else if (subcategory is Level4Category) {
      return subcategory.directSounds;
    }
    return [];
  }

  /// Gets the count of sounds in a subcategory
  int getSubcategorySoundsCount(dynamic subcategory) {
    if (subcategory is Level2Category) {
      return subcategory.directSounds.length;
    } else if (subcategory is Level3Category) {
      return subcategory.directSounds.length;
    } else if (subcategory is Level4Category) {
      return subcategory.directSounds.length;
    }
    return 0;
  }

  /// Debug method to log sound URL information
  void logSoundUrlInfo(SoundData sound) {
    print('=== SOUND URL DEBUG INFO ===');
    print('Sound ID: ${sound.soundId}');
    print('Sound Title: ${sound.soundTitle}');
    print('Sound File URL: ${sound.soundFileUrl}');
    print('Sound File: ${sound.soundFile}');
    print('Sound Source URL: ${sound.soundSourceUrl}');
    print('============================');
  }

  // ==================== AUDIO PLAYER EVENT HANDLERS ====================

  /// Loads audio for a specific sound
  Future<void> _onLoadAudio(
    LoadAudioEvent event,
    Emitter<SoundLibraryState> emit,
  ) async {
    final soundId = event.soundId;
    final audioUrl = event.audioUrl;
    final alternativeUrls = event.alternativeUrls ?? [];

    // Get current audio state
    final currentState = state.audioPlayerStates[soundId] ?? const AudioPlayerState();
    
    // Prevent duplicate downloads
    if (currentState.isDownloading || currentState.isLoading) {
      print('Audio is already being downloaded for $soundId, skipping...');
      return;
    }

    // Check if we already have this URL loaded
    if (currentState.currentUrl == audioUrl && currentState.duration > Duration.zero) {
      print('Audio already loaded for $soundId, skipping download...');
      return;
    }

    try {
      // Update state to show downloading
      final updatedStates = Map<String, AudioPlayerState>.from(state.audioPlayerStates);
      updatedStates[soundId] = currentState.copyWith(
        isDownloading: true,
        isLoading: true,
        hasError: false,
      );
      
      emit(state.copyWith(audioPlayerStates: updatedStates));

      print('Loading audio for $soundId...');

      // Get or create audio player
      AudioPlayer audioPlayer = _audioPlayers[soundId] ?? AudioPlayer();
      if (!_audioPlayers.containsKey(soundId)) {
        _audioPlayers[soundId] = audioPlayer;
        _configureAudioPlayer(audioPlayer, soundId);
      }

      // Stop any existing playback
      await audioPlayer.stop();
      await Future.delayed(Duration(milliseconds: 100));

      // Try to load the audio with retry mechanism
      bool loaded = false;
      int attempts = 0;
      const maxAttempts = 3;

      // Create list of URLs to try
      List<String> urlsToTry = [audioUrl];
      urlsToTry.addAll(alternativeUrls);

      for (String url in urlsToTry) {
        if (loaded) break;

        attempts = 0;
        while (!loaded && attempts < maxAttempts) {
          try {
            attempts++;
            print('Loading attempt $attempts for $soundId...');

            await audioPlayer.setSourceUrl(url);
            loaded = true;
            print('Successfully loaded audio for $soundId');

            // Get duration immediately after loading
            final duration = await audioPlayer.getDuration();
            print('Audio duration for $soundId: $duration');

            // Update state with successful load and duration
            final successStates = Map<String, AudioPlayerState>.from(state.audioPlayerStates);
            successStates[soundId] = currentState.copyWith(
              isDownloading: false,
              isLoading: false,
              hasError: false,
              currentUrl: url,
              duration: duration ?? Duration.zero,
            );
            
            emit(state.copyWith(audioPlayerStates: successStates));
            
            // Automatically start playing after successful load
            await audioPlayer.resume();

          } catch (e) {
            print('Attempt $attempts failed for $soundId');
            if (attempts < maxAttempts) {
              await Future.delayed(Duration(milliseconds: 500 * attempts));
            }
          }
        }
      }

      if (!loaded) {
        throw Exception('Failed to load audio for $soundId after $maxAttempts attempts');
      }

    } catch (e) {
      print('Error loading audio for $soundId: $e');
      
      // Update state with error
      final errorStates = Map<String, AudioPlayerState>.from(state.audioPlayerStates);
      errorStates[soundId] = currentState.copyWith(
        isDownloading: false,
        isLoading: false,
        hasError: true,
      );
      
      emit(state.copyWith(audioPlayerStates: errorStates));
    }
  }

  /// Plays audio for a specific sound
  Future<void> _onPlayAudio(
    PlayAudioEvent event,
    Emitter<SoundLibraryState> emit,
  ) async {
    final soundId = event.soundId;
    final currentState = state.audioPlayerStates[soundId] ?? const AudioPlayerState();

    // Prevent interaction while downloading or loading
    if (currentState.isLoading || currentState.isDownloading) {
      print('Audio is currently being downloaded for $soundId, please wait...');
      return;
    }

    try {
      final audioPlayer = _audioPlayers[soundId];
      if (audioPlayer == null) {
        print('No audio player found for $soundId');
        return;
      }

      if (currentState.isPlaying) {
        await audioPlayer.pause();
      } else {
        // If there's an error or no URL loaded, we need to load it
        if (currentState.hasError || currentState.currentUrl == null || currentState.currentUrl!.isEmpty) {
          // We need the URL from the widget, but we don't have it here
          // This should be handled by the widget calling LoadAudioEvent first
          print('Audio not loaded or has error for $soundId, please load it first');
          return;
        }

        // Just play the already loaded audio
        await audioPlayer.resume();
      }
    } catch (e) {
      print('Error playing audio for $soundId: $e');
    }
  }

  /// Pauses audio for a specific sound
  Future<void> _onPauseAudio(
    PauseAudioEvent event,
    Emitter<SoundLibraryState> emit,
  ) async {
    final soundId = event.soundId;
    final audioPlayer = _audioPlayers[soundId];
    
    if (audioPlayer != null) {
      try {
        await audioPlayer.pause();
      } catch (e) {
        print('Error pausing audio for $soundId: $e');
      }
    }
  }

  /// Stops audio for a specific sound
  Future<void> _onStopAudio(
    StopAudioEvent event,
    Emitter<SoundLibraryState> emit,
  ) async {
    final soundId = event.soundId;
    final audioPlayer = _audioPlayers[soundId];
    
    if (audioPlayer != null) {
      try {
        await audioPlayer.stop();
        
        // Update state to show audio is stopped
        final currentState = state.audioPlayerStates[soundId] ?? const AudioPlayerState();
        final updatedStates = Map<String, AudioPlayerState>.from(state.audioPlayerStates);
        updatedStates[soundId] = currentState.copyWith(
          isPlaying: false,
          position: Duration.zero,
        );
        
        emit(state.copyWith(audioPlayerStates: updatedStates));
      } catch (e) {
        print('Error stopping audio for $soundId: $e');
      }
    }
  }

  /// Updates audio position for a specific sound
  void _onUpdateAudioPosition(
    UpdateAudioPositionEvent event,
    Emitter<SoundLibraryState> emit,
  ) {
    final soundId = event.soundId;
    final position = event.position;
    
    final currentState = state.audioPlayerStates[soundId] ?? const AudioPlayerState();
    final updatedStates = Map<String, AudioPlayerState>.from(state.audioPlayerStates);
    updatedStates[soundId] = currentState.copyWith(position: position);
    
    emit(state.copyWith(audioPlayerStates: updatedStates));
  }

  /// Seeks to a specific position in the audio
  Future<void> _onSeekAudio(
    SeekAudioEvent event,
    Emitter<SoundLibraryState> emit,
  ) async {
    final soundId = event.soundId;
    final position = event.position;
    
    final audioPlayer = _audioPlayers[soundId];
    if (audioPlayer != null) {
      try {
        await audioPlayer.seek(position);
        print('Seeked to position: $position for sound: $soundId');
        
        // Update the state immediately
        final currentState = state.audioPlayerStates[soundId] ?? const AudioPlayerState();
        final updatedStates = Map<String, AudioPlayerState>.from(state.audioPlayerStates);
        updatedStates[soundId] = currentState.copyWith(position: position);
        
        emit(state.copyWith(audioPlayerStates: updatedStates));
      } catch (e) {
        print('Error seeking audio: $e');
        // Handle seek error if needed
      }
    }
  }

  /// Updates audio duration for a specific sound
  void _onUpdateAudioDuration(
    UpdateAudioDurationEvent event,
    Emitter<SoundLibraryState> emit,
  ) {
    final soundId = event.soundId;
    final duration = event.duration;
    
    print('Updating duration for $soundId: $duration');
    
    final currentState = state.audioPlayerStates[soundId] ?? const AudioPlayerState();
    final updatedStates = Map<String, AudioPlayerState>.from(state.audioPlayerStates);
    updatedStates[soundId] = currentState.copyWith(duration: duration);
    
    emit(state.copyWith(audioPlayerStates: updatedStates));
  }

  /// Handles audio errors for a specific sound
  void _onAudioError(
    AudioErrorEvent event,
    Emitter<SoundLibraryState> emit,
  ) {
    final soundId = event.soundId;
    final error = event.error;
    
    final currentState = state.audioPlayerStates[soundId] ?? const AudioPlayerState();
    final updatedStates = Map<String, AudioPlayerState>.from(state.audioPlayerStates);
    updatedStates[soundId] = currentState.copyWith(
      hasError: true,
      isDownloading: false,
      isLoading: false,
    );
    
    emit(state.copyWith(audioPlayerStates: updatedStates));
    print('Audio error for $soundId: $error');
  }

  /// Resets audio state for a specific sound
  void _onResetAudioState(
    ResetAudioStateEvent event,
    Emitter<SoundLibraryState> emit,
  ) {
    final soundId = event.soundId;
    
    final updatedStates = Map<String, AudioPlayerState>.from(state.audioPlayerStates);
    updatedStates[soundId] = const AudioPlayerState();
    
    emit(state.copyWith(audioPlayerStates: updatedStates));
  }

  /// Updates audio player state (playing/paused)
  void _onUpdateAudioPlayerState(
    UpdateAudioPlayerStateEvent event,
    Emitter<SoundLibraryState> emit,
  ) {
    final soundId = event.soundId;
    final isPlaying = event.isPlaying;
    
    final currentState = state.audioPlayerStates[soundId] ?? const AudioPlayerState();
    final updatedStates = Map<String, AudioPlayerState>.from(state.audioPlayerStates);
    updatedStates[soundId] = currentState.copyWith(
      isPlaying: isPlaying,
      isLoading: false,
    );
    
    emit(state.copyWith(audioPlayerStates: updatedStates));
  }

  /// Downloads audio file to device storage
  Future<void> _onDownloadAudio(
    DownloadAudioEvent event,
    Emitter<SoundLibraryState> emit,
  ) async {
    final soundId = event.soundId;
    final audioUrl = event.audioUrl;
    final originalFileName = event.fileName;
    final soundTitle = event.soundTitle;
    
    // Create filename from sound title
    final cleanTitle = _cleanFileName(soundTitle);
    final fileExtension = _getFileExtension(originalFileName);
    final finalFileName = '$cleanTitle$fileExtension';
    
    print('🎵 Starting download for $soundId: $soundTitle');
    print('📁 Original filename: $originalFileName');
    print('📁 Final filename: $finalFileName');
    print('📥 Download URL: $audioUrl');
    
    // Import the sound downloader service
    final soundDownloader = SoundDownloader();
    
    // Set downloading state
    final currentState = state.audioPlayerStates[soundId] ?? const AudioPlayerState();
    final updatedStates = Map<String, AudioPlayerState>.from(state.audioPlayerStates);
    updatedStates[soundId] = currentState.copyWith(
      isFileDownloading: true,
      hasError: false,
      downloadProgress: 0.0,
      downloadedBytes: 0,
      totalBytes: 0,
    );
    emit(state.copyWith(audioPlayerStates: updatedStates));
    
    print('🚀 Download started for $soundId - isFileDownloading set to true');
    
    try {
      // Check if file already exists
      if (await soundDownloader.fileExists(finalFileName)) {
        final filePath = await soundDownloader.getLocalFilePath(finalFileName);
        
        // Update state to show download completed
        final successStates = Map<String, AudioPlayerState>.from(state.audioPlayerStates);
        successStates[soundId] = currentState.copyWith(
          isFileDownloading: false,
          hasError: false,
          downloadProgress: 1.0,
        );
        emit(state.copyWith(audioPlayerStates: successStates));
        
        // Show success message with file path
        add(ShowDownloadMessageEvent(
          message: 'الملف موجود بالفعل: $finalFileName\nالمسار: $filePath',
          isSuccess: true,
        ));
        
        return;
      }
      
      // Download the file to standard Downloads directory
      final filePath = await soundDownloader.downloadSound(
        url: audioUrl,
        fileName: finalFileName,
        onProgress: (progress) {
          // Update progress state
          final progressStates = Map<String, AudioPlayerState>.from(state.audioPlayerStates);
          progressStates[soundId] = currentState.copyWith(
            isFileDownloading: true,
            downloadProgress: progress,
            downloadedBytes: (progress * 100).round(),
            totalBytes: 100,
            hasError: false,
          );
          emit(state.copyWith(audioPlayerStates: progressStates));
          print('🔄 Progress updated for $soundId - progress: ${(progress * 100).round()}%');
        },
      );
      
      if (filePath != null) {
        print('✅ Download completed successfully for $soundId');
        print('💾 File saved to: $filePath');
        
        // Update state to show download completed
        final successStates = Map<String, AudioPlayerState>.from(state.audioPlayerStates);
        successStates[soundId] = currentState.copyWith(
          isFileDownloading: false,
          hasError: false,
          downloadProgress: 1.0,
        );
        emit(state.copyWith(audioPlayerStates: successStates));
        
        // Show success message with file path
        add(ShowDownloadMessageEvent(
          message: 'تم تحميل الملف بنجاح: $finalFileName\nالمسار: $filePath',
          isSuccess: true,
        ));
      } else {
        throw Exception('Download failed - null file path returned');
      }
      
    } catch (e) {
      print('❌ Download failed for $soundId: $e');
      
      // Update state to show download error
      final errorStates = Map<String, AudioPlayerState>.from(state.audioPlayerStates);
      errorStates[soundId] = currentState.copyWith(
        isFileDownloading: false,
        hasError: true,
      );
      emit(state.copyWith(audioPlayerStates: errorStates));
      
      // Show error message
      add(ShowDownloadMessageEvent(
        message: 'فشل في تحميل الملف: $finalFileName',
        isSuccess: false,
      ));
    }
  }

  /// Shows download status message
  void _onShowDownloadMessage(
    ShowDownloadMessageEvent event,
    Emitter<SoundLibraryState> emit,
  ) {
    emit(state.copyWith(
      downloadMessage: event.message,
      isDownloadSuccess: event.isSuccess,
    ));
  }

  /// Updates download progress for a specific sound
  void _onUpdateDownloadProgress(
    UpdateDownloadProgressEvent event,
    Emitter<SoundLibraryState> emit,
  ) {
    final soundId = event.soundId;
    final currentState = state.audioPlayerStates[soundId] ?? const AudioPlayerState();
    
    final updatedStates = Map<String, AudioPlayerState>.from(state.audioPlayerStates);
    updatedStates[soundId] = currentState.copyWith(
      downloadProgress: event.progress,
      downloadedBytes: event.downloadedBytes,
      totalBytes: event.totalBytes,
    );
    
    emit(state.copyWith(audioPlayerStates: updatedStates));
  }

  /// Cleans a filename by removing invalid characters and limiting length
  String _cleanFileName(String title) {
    // Remove invalid characters for filenames
    String clean = title
        .replaceAll(RegExp(r'[<>:"/\\|?*]'), '') // Remove invalid chars
        .replaceAll(RegExp(r'\s+'), ' ') // Replace multiple spaces with single space
        .trim(); // Remove leading/trailing spaces
    
    // Limit length to avoid filesystem issues (max 100 characters)
    if (clean.length > 100) {
      clean = clean.substring(0, 100).trim();
    }
    
    // If empty after cleaning, use default name
    if (clean.isEmpty) {
      clean = 'Sound_${DateTime.now().millisecondsSinceEpoch}';
    }
    
    return clean;
  }

  /// Gets file extension from original filename
  String _getFileExtension(String fileName) {
    final lastDot = fileName.lastIndexOf('.');
    if (lastDot != -1 && lastDot < fileName.length - 1) {
      return fileName.substring(lastDot);
    }
    // Default to .rar for RAR files, .mp3 for others
    return fileName.toLowerCase().contains('rar') ? '.rar' : '.mp3';
  }

  /// Configures audio player for better Android compatibility
  void _configureAudioPlayer(AudioPlayer audioPlayer, String soundId) {
    audioPlayer.setPlayerMode(PlayerMode.mediaPlayer);
    audioPlayer.setAudioContext(AudioContext(
      android: AudioContextAndroid(
        isSpeakerphoneOn: true,
        stayAwake: true,
        contentType: AndroidContentType.music,
        usageType: AndroidUsageType.media,
        audioFocus: AndroidAudioFocus.gain,
      ),
    ));

    // Set up listeners
    audioPlayer.onDurationChanged.listen((duration) {
      print('Duration changed for $soundId: $duration');
      add(UpdateAudioDurationEvent(soundId: soundId, duration: duration));
    });

    audioPlayer.onPositionChanged.listen((position) {
      print('Position changed for $soundId: $position');
      add(UpdateAudioPositionEvent(soundId: soundId, position: position));
    });

    audioPlayer.onPlayerStateChanged.listen((state) {
      add(UpdateAudioPlayerStateEvent(
        soundId: soundId,
        isPlaying: state == PlayerState.playing,
      ));
    });
  }

  /// Gets audio player state for a specific sound
  AudioPlayerState getAudioPlayerState(String soundId) {
    return state.audioPlayerStates[soundId] ?? const AudioPlayerState();
  }

  // ===== MUSIC PLAYER EVENT HANDLERS =====

  /// Initializes music player with sound data
  void _onInitializeMusicPlayer(
    InitializeMusicPlayerEvent event,
    Emitter<SoundLibraryState> emit,
  ) {
    final sound = event.sound;
    final soundId = sound.soundId.toString();
    
    // Initialize audio player state if not exists
    if (!state.audioPlayerStates.containsKey(soundId)) {
      final updatedStates = Map<String, AudioPlayerState>.from(state.audioPlayerStates);
      updatedStates[soundId] = const AudioPlayerState();
      emit(state.copyWith(audioPlayerStates: updatedStates));
    }
  }

  /// Handles play/pause toggle for music player
  void _onMusicPlayerTogglePlayPause(
    MusicPlayerTogglePlayPauseEvent event,
    Emitter<SoundLibraryState> emit,
  ) {
    final soundId = event.soundId;
    final sound = event.sound;
    final audioState = getAudioPlayerState(soundId);
    
    if (audioState.isLoading || audioState.isDownloading) {
      print('Audio is currently being loaded, please wait...');
      return;
    }

    if (audioState.isPlaying) {
      add(PauseAudioEvent(soundId: soundId));
    } else {
      // If there's an error or no URL loaded, load it first
      if (audioState.hasError || audioState.currentUrl == null || audioState.currentUrl!.isEmpty) {
        // Use the sound data directly from the event
        final audioUrl = _buildSoundUrl(sound);
        final alternativeUrls = _getAlternativeUrls(sound);
        
        print('Loading audio for MusicPlayer: $audioUrl');
        
        if (audioUrl.isNotEmpty) {
          add(LoadAudioEvent(
            soundId: soundId,
            audioUrl: audioUrl,
            alternativeUrls: alternativeUrls,
          ));
        } else {
          print('No valid audio URL found for sound: ${sound.soundFile}');
        }
        return;
      }

      // Just play the already loaded audio
      add(PlayAudioEvent(soundId: soundId));
    }
  }

  /// Handles seeking in music player
  void _onMusicPlayerSeek(
    MusicPlayerSeekEvent event,
    Emitter<SoundLibraryState> emit,
  ) {
    final soundId = event.soundId;
    final progress = event.progress;
    final audioState = getAudioPlayerState(soundId);
    
    if (audioState.duration.inMilliseconds > 0) {
      final position = Duration(
        milliseconds: (progress * audioState.duration.inMilliseconds).round(),
      );
      add(SeekAudioEvent(soundId: soundId, position: position));
    }
  }

  /// Handles download for music player
  void _onMusicPlayerDownload(
    MusicPlayerDownloadEvent event,
    Emitter<SoundLibraryState> emit,
  ) {
    final sound = event.sound;
    String downloadUrl;
    String fileName;
    
    // Check if it's a RAR file
    if (sound.soundFile != null && sound.soundFile!.toLowerCase().endsWith('.rar')) {
      // For RAR files, build the download URL directly
      fileName = sound.soundFile!;
      downloadUrl = "https://www.naasan.net/files/sound/$fileName";
    } else {
      // For MP3 files, build the URL
      final audioUrl = _buildSoundUrl(sound);
      if (audioUrl.isNotEmpty) {
        final uri = Uri.parse(audioUrl);
        fileName = uri.pathSegments.last;
        downloadUrl = audioUrl;
      } else {
        print('No valid URL available for download');
        return;
      }
    }
    
    print('Downloading file: $fileName from $downloadUrl');
    
    add(DownloadAudioEvent(
      soundId: sound.soundId.toString(),
      audioUrl: downloadUrl,
      fileName: fileName,
      soundTitle: sound.soundTitle,
    ));
  }

  // ===== HELPER METHODS =====


  /// Builds the complete sound URL from API response data
  String _buildSoundUrl(SoundData sound) {
    if (sound.soundFile == null) return "";
    
    final fileName = sound.soundFile!;
    final fileType = SoundFileTypeUtil.getFileType(fileName);
    
    switch (fileType) {
      case SoundFileType.audio:
        // Standard audio files can be played directly
        return "https://www.naasan.net/files/sound/$fileName";
        
      case SoundFileType.realMedia:
        // RealMedia files can also be played but might need special handling
        return "https://www.naasan.net/files/sound/$fileName";
        
      case SoundFileType.compressed:
        // Compressed files can't be played, but we return the URL for download
        return "https://www.naasan.net/files/sound/$fileName";
        
      case SoundFileType.unknown:
        // For unknown types, we'll try to play them as audio
        return "https://www.naasan.net/files/sound/$fileName";
    }
  }

  /// Gets alternative URLs to try if the main URL fails
  List<String> _getAlternativeUrls(SoundData sound) {
    if (sound.soundFile == null) return [];
    
    final fileName = sound.soundFile!;
    final fileType = SoundFileTypeUtil.getFileType(fileName);
    
    // For compressed files, we don't need alternative URLs since they're only for download
    if (fileType == SoundFileType.compressed) {
      return [];
    }
    
    // For audio, RealMedia, and unknown types, provide alternative URLs
    return [
      "https://naasan.net/files/sound/$fileName",
      "http://www.naasan.net/files/sound/$fileName",
      "http://naasan.net/files/sound/$fileName",
    ];
  }

  /// Formats duration to show minutes:seconds
  String formatDuration(Duration duration) {
    String twoDigits(int n) => n.toString().padLeft(2, '0');
    final minutes = twoDigits(duration.inMinutes.remainder(60));
    final seconds = twoDigits(duration.inSeconds.remainder(60));
    return '$minutes:$seconds';
  }
  
  /// Checks if a sound can be played directly in the app
  bool isSoundPlayable(SoundData sound) {
    if (sound.soundFile == null) return false;
    
    final fileType = SoundFileTypeUtil.getFileType(sound.soundFile);
    
    // Only audio and RealMedia files can be played directly
    return fileType == SoundFileType.audio || fileType == SoundFileType.realMedia;
  }
  
  /// Gets the file type of a sound
  SoundFileType getSoundFileType(SoundData sound) {
    if (sound.soundFile == null) return SoundFileType.unknown;
    return SoundFileTypeUtil.getFileType(sound.soundFile);
  }

  /// Disposes all audio players
  @override
  Future<void> close() {
    for (final audioPlayer in _audioPlayers.values) {
      audioPlayer.dispose();
    }
    _audioPlayers.clear();
    return super.close();
  }

}
