import 'package:equatable/equatable.dart';
import '../../../../core/models/page_state/bloc_status.dart';
import '../../data/model.dart';

/// Audio player state for individual sounds
class AudioPlayerState extends Equatable {
  final bool isPlaying;
  final bool isLoading;
  final bool hasError;
  final bool isDownloading;
  final bool isFileDownloading;
  final Duration duration;
  final Duration position;
  final String? currentUrl;
  final double downloadProgress;
  final int downloadedBytes;
  final int totalBytes;

  const AudioPlayerState({
    this.isPlaying = false,
    this.isLoading = false,
    this.hasError = false,
    this.isDownloading = false,
    this.isFileDownloading = false,
    this.duration = Duration.zero,
    this.position = Duration.zero,
    this.currentUrl,
    this.downloadProgress = 0.0,
    this.downloadedBytes = 0,
    this.totalBytes = 0,
  });

  AudioPlayerState copyWith({
    bool? isPlaying,
    bool? isLoading,
    bool? hasError,
    bool? isDownloading,
    bool? isFileDownloading,
    Duration? duration,
    Duration? position,
    String? currentUrl,
    double? downloadProgress,
    int? downloadedBytes,
    int? totalBytes,
  }) {
    return AudioPlayerState(
      isPlaying: isPlaying ?? this.isPlaying,
      isLoading: isLoading ?? this.isLoading,
      hasError: hasError ?? this.hasError,
      isDownloading: isDownloading ?? this.isDownloading,
      isFileDownloading: isFileDownloading ?? this.isFileDownloading,
      duration: duration ?? this.duration,
      position: position ?? this.position,
      currentUrl: currentUrl ?? this.currentUrl,
      downloadProgress: downloadProgress ?? this.downloadProgress,
      downloadedBytes: downloadedBytes ?? this.downloadedBytes,
      totalBytes: totalBytes ?? this.totalBytes,
    );
  }

  @override
  List<Object?> get props => [
        isPlaying,
        isLoading,
        hasError,
        isDownloading,
        isFileDownloading,
        duration,
        position,
        currentUrl,
        downloadProgress,
        downloadedBytes,
        totalBytes,
      ];
}

/// State management for the sound library feature
/// Handles hierarchical category navigation and sound display
class SoundLibraryState extends Equatable {
  final BlocStatus status;
  final List<Level1RootCategory> level1Categories;
  final Level1RootCategory? selectedLevel1Category;
  final List<Level2Category> currentLevel2Categories;
  final List<Level3Category> currentLevel3Categories;
  final List<Level4Category> currentLevel4Categories;
  final String? error;
  
  final Level2Category? currentLevel2Category;
  final Level3Category? currentLevel3Category;
  final Level4Category? currentLevel4Category;
  
  final List<SoundData> displaySounds;
  final List<dynamic> displaySubcategories;
  final bool isViewingDirectSounds;
  
  // Audio player states
  final Map<String, AudioPlayerState> audioPlayerStates;
  final Map<String, bool> audioDownloadingStates;
  final Map<String, String?> audioCurrentUrls;
  
  // Download message
  final String? downloadMessage;
  final bool isDownloadSuccess;

  const SoundLibraryState({
    this.status = const BlocStatus.initial(),
    this.level1Categories = const [],
    this.selectedLevel1Category,
    this.currentLevel2Categories = const [],
    this.currentLevel3Categories = const [],
    this.currentLevel4Categories = const [],
    this.error,
    this.currentLevel2Category,
    this.currentLevel3Category,
    this.currentLevel4Category,
    this.displaySounds = const [],
    this.displaySubcategories = const [],
    this.isViewingDirectSounds = false,
    this.audioPlayerStates = const {},
    this.audioDownloadingStates = const {},
    this.audioCurrentUrls = const {},
    this.downloadMessage,
    this.isDownloadSuccess = false,
  });

  SoundLibraryState copyWith({
    BlocStatus? status,
    List<Level1RootCategory>? level1Categories,
    Level1RootCategory? selectedLevel1Category,
    List<Level2Category>? currentLevel2Categories,
    List<Level3Category>? currentLevel3Categories,
    List<Level4Category>? currentLevel4Categories,
    String? error,
    Level2Category? currentLevel2Category,
    Level3Category? currentLevel3Category,
    Level4Category? currentLevel4Category,
    List<SoundData>? displaySounds,
    List<dynamic>? displaySubcategories,
    bool? isViewingDirectSounds,
    Map<String, AudioPlayerState>? audioPlayerStates,
    Map<String, bool>? audioDownloadingStates,
    Map<String, String?>? audioCurrentUrls,
    String? downloadMessage,
    bool? isDownloadSuccess,
  }) {
    return SoundLibraryState(
      status: status ?? this.status,
      level1Categories: level1Categories ?? this.level1Categories,
      selectedLevel1Category: selectedLevel1Category ?? this.selectedLevel1Category,
      currentLevel2Categories: currentLevel2Categories ?? this.currentLevel2Categories,
      currentLevel3Categories: currentLevel3Categories ?? this.currentLevel3Categories,
      currentLevel4Categories: currentLevel4Categories ?? this.currentLevel4Categories,
      error: error ?? this.error,
      currentLevel2Category: currentLevel2Category ?? this.currentLevel2Category,
      currentLevel3Category: currentLevel3Category ?? this.currentLevel3Category,
      currentLevel4Category: currentLevel4Category ?? this.currentLevel4Category,
      displaySounds: displaySounds ?? this.displaySounds,
      displaySubcategories: displaySubcategories ?? this.displaySubcategories,
      isViewingDirectSounds: isViewingDirectSounds ?? this.isViewingDirectSounds,
      audioPlayerStates: audioPlayerStates ?? this.audioPlayerStates,
      audioDownloadingStates: audioDownloadingStates ?? this.audioDownloadingStates,
      audioCurrentUrls: audioCurrentUrls ?? this.audioCurrentUrls,
      downloadMessage: downloadMessage ?? this.downloadMessage,
      isDownloadSuccess: isDownloadSuccess ?? this.isDownloadSuccess,
    );
  }

  @override
  List<Object?> get props => [
    status,
    level1Categories,
    selectedLevel1Category,
    currentLevel2Categories,
    currentLevel3Categories,
    currentLevel4Categories,
    error,
    currentLevel2Category,
    currentLevel3Category,
    currentLevel4Category,
    displaySounds,
    displaySubcategories,
    isViewingDirectSounds,
    audioPlayerStates,
    audioDownloadingStates,
    audioCurrentUrls,
    downloadMessage,
    isDownloadSuccess,
  ];
}