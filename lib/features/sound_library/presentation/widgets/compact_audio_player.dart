import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nassan_app/core/responsive/screen_util_res.dart';
import 'package:nassan_app/gen/fonts.gen.dart';
import '../../../../config/appconfig/app_colors.dart';
import '../bloc/sound_library_bloc.dart';
import '../bloc/sound_library_event.dart';
import '../bloc/sound_library_state.dart';

class CompactAudioPlayer extends StatelessWidget {
  final String soundId;
  final String audioUrl;
  final List<String>? alternativeUrls;
  final String soundTitle;
  final double width;
  final double height;
  
  // Customizable dimensions
  final double? playButtonSize;
  final double? playButtonMargin;
  final double? fontSize;
  final double? horizontalPadding;
  final double? optionsButtonSize;
  final double? optionsButtonMargin;

  const CompactAudioPlayer({
    super.key,
    required this.soundId,
    required this.audioUrl,
    required this.soundTitle,
    this.alternativeUrls,
    this.width = 200,
    this.height = 40,
    this.playButtonSize,
    this.playButtonMargin,
    this.fontSize,
    this.horizontalPadding,
    this.optionsButtonSize,
    this.optionsButtonMargin,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SoundLibraryBloc, SoundLibraryState>(
      builder: (context, state) {
        final bloc = context.read<SoundLibraryBloc>();
        final audioState = bloc.getAudioPlayerState(soundId);
        
        return _buildAudioPlayer(context, audioState, bloc);
      },
    );
  }

  /// Builds the audio player UI
  Widget _buildAudioPlayer(
    BuildContext context,
    AudioPlayerState audioState,
    SoundLibraryBloc bloc,
  ) {
    final dimensions = _calculateDimensions(context);
    
    return Container(
      width: dimensions.containerWidth,
      height: dimensions.containerHeight,
      decoration: _buildContainerDecoration(dimensions.containerHeight),
      child: Row(
        children: [
          _buildPlayButton(audioState, bloc, dimensions),
          _buildTimeDisplay(audioState, dimensions),
          _buildDownloadButton(audioState, bloc, dimensions),
        ],
      ),
    );
  }

  /// Calculates responsive dimensions
  _Dimensions _calculateDimensions(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final isSmallScreen = screenWidth < 400;
    final isMediumScreen = screenWidth >= 400 && screenWidth < 600;
    
    // Responsive sizing
    final containerHeight = isSmallScreen 
        ? height * 0.8 
        : isMediumScreen 
            ? height * 0.9 
            : height;
    
    final containerWidth = isSmallScreen ? width * 0.95 : width;
    
    return _Dimensions(
      containerWidth: containerWidth,
      containerHeight: containerHeight,
      playButtonSize: playButtonSize ?? containerHeight * 0.7,
      playButtonMargin: playButtonMargin ?? containerHeight * 0.15,
      fontSize: fontSize ?? containerHeight * 0.25,
      horizontalPadding: horizontalPadding ?? containerHeight * 0.2,
      optionsButtonSize: optionsButtonSize ?? containerHeight * 0.6,
      optionsButtonMargin: optionsButtonMargin ?? containerHeight * 0.1,
    );
  }

  /// Builds container decoration
  BoxDecoration _buildContainerDecoration(double height) {
    return BoxDecoration(
      color: AppColors.grey.withAlpha(120),
      borderRadius: BorderRadius.circular(height / 2),
      boxShadow: [
        BoxShadow(
          color: Colors.black.withValues(alpha: 0.1),
          blurRadius: 4.r,
          offset: Offset(0, 2.h),
        ),
      ],
    );
  }

  /// Builds the play/pause button
  Widget _buildPlayButton(
    AudioPlayerState audioState,
    SoundLibraryBloc bloc,
    _Dimensions dimensions,
  ) {
    return InkWell(
      onTap: (audioState.isLoading || audioState.isDownloading) 
          ? null 
          : () => _togglePlayPause(bloc),
      child: Container(
        width: dimensions.playButtonSize,
        height: dimensions.playButtonSize,
        margin: EdgeInsets.all(dimensions.playButtonMargin),
        decoration: _buildPlayButtonDecoration(),
        child: _buildPlayButtonIcon(audioState, dimensions.playButtonSize),
      ),
    );
  }

  /// Builds play button decoration
  BoxDecoration _buildPlayButtonDecoration() {
    return BoxDecoration(
      color: const Color(0xFFD4AF37),
      shape: BoxShape.circle,
      boxShadow: [
        BoxShadow(
          color: const Color(0xFFD4AF37).withValues(alpha: 0.3),
          blurRadius: 6.r,
          offset: Offset(0, 2.h),
        ),
      ],
    );
  }

  /// Builds play button icon based on state
  Widget _buildPlayButtonIcon(AudioPlayerState audioState, double buttonSize) {
    return Stack(
      alignment: Alignment.center,
      children: [
        // Loading indicator
        if (audioState.isDownloading || audioState.isLoading)
          SizedBox(
            width: buttonSize * 0.4,
            height: buttonSize * 0.4,
            child: CircularProgressIndicator(
              strokeWidth: 2.w,
              valueColor: const AlwaysStoppedAnimation<Color>(Colors.white),
            ),
          ),
        
        // Icon based on state
        if (!audioState.isDownloading && !audioState.isLoading)
          Icon(
            _getPlayButtonIcon(audioState),
            size: buttonSize * 0.5,
            color: Colors.white,
          ),
      ],
    );
  }

  /// Gets appropriate icon based on audio state
  IconData _getPlayButtonIcon(AudioPlayerState audioState) {
    if (audioState.hasError) return Icons.refresh;
    return audioState.isPlaying ? Icons.pause : Icons.play_arrow;
  }

  /// Builds time display text
  Widget _buildTimeDisplay(AudioPlayerState audioState, _Dimensions dimensions) {
    return Padding(
      padding: EdgeInsets.only(right: dimensions.horizontalPadding * 0.5),
      child: Text(
        _getDisplayText(audioState),
        style: TextStyle(
          fontFamily: FontFamily.tajawal,
          fontSize: dimensions.fontSize,
          color: _getTextColor(audioState),
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }

  /// Gets display text based on audio state
  String _getDisplayText(AudioPlayerState audioState) {
    if (audioState.isDownloading) return 'جاري التحميل...';
    if (audioState.hasError) return 'خطأ  ';
    if (audioState.duration > Duration.zero) {
      return '${_formatDuration(audioState.position)}/${_formatDuration(audioState.duration)}';
    }
    return '0:0/0:0';
  }

  /// Gets text color based on audio state
  Color _getTextColor(AudioPlayerState audioState) {
    if (audioState.isDownloading) return AppColors.primary;
    if (audioState.hasError) return Colors.red;
    return const Color(0xFF333333);
  }

  /// Builds download button
  Widget _buildDownloadButton(
    AudioPlayerState audioState,
    SoundLibraryBloc bloc,
    _Dimensions dimensions,
  ) {
    return GestureDetector(
      onTap: audioState.isFileDownloading ? null : () => _downloadAudio(bloc),
      child: Container(
        width: dimensions.optionsButtonSize,
        height: dimensions.optionsButtonSize,
        margin: EdgeInsets.only(right: dimensions.optionsButtonMargin),
        child: _buildDownloadButtonIcon(
          audioState,
          dimensions.optionsButtonSize,
        ),
      ),
    );
  }

  /// Builds download button icon
  Widget _buildDownloadButtonIcon(AudioPlayerState audioState, double size) {
    return Stack(
      alignment: Alignment.center,
      children: [
        if (!audioState.isFileDownloading)
          Icon(
            Icons.download,
            size: size * 0.6,
            color: const Color(0xFF333333),
          ),
        
        if (audioState.isFileDownloading)
          SizedBox(
            width: size * 0.4,
            height: size * 0.4,
            child: CircularProgressIndicator(
              strokeWidth: 2.w,
              valueColor: AlwaysStoppedAnimation<Color>(AppColors.primary),
            ),
          ),
      ],
    );
  }

  /// Toggles play/pause for the audio
  void _togglePlayPause(SoundLibraryBloc bloc) {
    final audioState = bloc.getAudioPlayerState(soundId);
    
    if (audioState.isLoading || audioState.isDownloading) {
      return;
    }

    if (audioState.isPlaying) {
      bloc.add(PauseAudioEvent(soundId: soundId));
      return;
    }

    // Load audio if needed
    if (_shouldLoadAudio(audioState)) {
      bloc.add(LoadAudioEvent(
        soundId: soundId,
        audioUrl: audioUrl,
        alternativeUrls: alternativeUrls,
      ));
      return;
    }

    // Play already loaded audio
    bloc.add(PlayAudioEvent(soundId: soundId));
  }

  /// Checks if audio needs to be loaded
  bool _shouldLoadAudio(AudioPlayerState audioState) {
    return audioState.hasError || 
           audioState.currentUrl == null || 
           audioState.currentUrl!.isEmpty;
  }

  /// Downloads the audio file
  void _downloadAudio(SoundLibraryBloc bloc) {
    final uri = Uri.parse(audioUrl);
    final fileName = uri.pathSegments.last;
    
    bloc.add(DownloadAudioEvent(
      soundId: soundId,
      audioUrl: audioUrl,
      fileName: fileName,
      soundTitle: soundTitle,
    ));
  }

  /// Formats duration to mm:ss
  String _formatDuration(Duration duration) {
    String twoDigits(int n) => n.toString().padLeft(1, '0');
    final minutes = twoDigits(duration.inMinutes.remainder(60));
    final seconds = twoDigits(duration.inSeconds.remainder(60));
    return '$minutes:$seconds';
  }
}

/// Helper class to store calculated dimensions
class _Dimensions {
  final double containerWidth;
  final double containerHeight;
  final double playButtonSize;
  final double playButtonMargin;
  final double fontSize;
  final double horizontalPadding;
  final double optionsButtonSize;
  final double optionsButtonMargin;

  const _Dimensions({
    required this.containerWidth,
    required this.containerHeight,
    required this.playButtonSize,
    required this.playButtonMargin,
    required this.fontSize,
    required this.horizontalPadding,
    required this.optionsButtonSize,
    required this.optionsButtonMargin,
  });
}
