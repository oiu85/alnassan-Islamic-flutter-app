import 'dart:io';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:dio/dio.dart';
import 'package:path_provider/path_provider.dart';
import '../../../../core/models/page_state/bloc_status.dart';
import '../../domain/repository/sound_library_repository.dart';
import '../../data/model.dart';
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
    on<UpdateAudioDurationEvent>(_onUpdateAudioDuration);
    on<AudioErrorEvent>(_onAudioError);
    on<ResetAudioStateEvent>(_onResetAudioState);
    on<UpdateAudioPlayerStateEvent>(_onUpdateAudioPlayerState);
    on<DownloadAudioEvent>(_onDownloadAudio);
    on<ShowDownloadMessageEvent>(_onShowDownloadMessage);
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
    final fileName = event.fileName;
    
    print('🎵 Starting download for $soundId: $fileName');
    print('📥 Download URL: $audioUrl');
    
    // Set downloading state
    final currentState = state.audioPlayerStates[soundId] ?? const AudioPlayerState();
    final updatedStates = Map<String, AudioPlayerState>.from(state.audioPlayerStates);
    updatedStates[soundId] = currentState.copyWith(
      isFileDownloading: true,
      hasError: false,
    );
    emit(state.copyWith(audioPlayerStates: updatedStates));
    
    try {
      // Create Dio instance with timeout
      final dio = Dio();
      dio.options.connectTimeout = const Duration(seconds: 30);
      dio.options.receiveTimeout = const Duration(seconds: 60);
      
      // Get external storage directory (phone files)
      final directory = await getExternalStorageDirectory();
      if (directory == null) {
        throw Exception('External storage not available');
      }
      
      // Use the app's external storage directory
      // This will be accessible in the phone's file manager
      // Path: /storage/emulated/0/Android/data/com.example.app/files/AlnassanApp/Downloads/
      final appDir = Directory('${directory.path}/AlnassanApp/Downloads');
      if (!await appDir.exists()) {
        await appDir.create(recursive: true);
      }
      
      final filePath = '${appDir.path}/$fileName';
      
      print('📁 Downloading to: $filePath');
      
      // Download the file
      await dio.download(
        audioUrl,
        filePath,
        onReceiveProgress: (received, total) {
          if (total != -1) {
            final progress = (received / total * 100).round();
            print('📊 Download progress: $progress% (${received}/${total} bytes)');
          }
        },
      );
      
      print('✅ Download completed successfully for $soundId');
      print('💾 File saved to: $filePath');
      
      // Update state to show download completed
      final successStates = Map<String, AudioPlayerState>.from(state.audioPlayerStates);
      successStates[soundId] = currentState.copyWith(
        isFileDownloading: false,
        hasError: false,
      );
      emit(state.copyWith(audioPlayerStates: successStates));
      
      // Show success message with file path
      add(ShowDownloadMessageEvent(
        message: 'تم تحميل الملف بنجاح: $fileName\nالمسار: $filePath',
        isSuccess: true,
      ));
      
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
        message: 'فشل في تحميل الملف: $fileName',
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
