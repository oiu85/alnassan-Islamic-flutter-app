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
  final double? progressBarHeight;
  final double? progressBarThumbRadius;
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
    this.progressBarHeight,
    this.progressBarThumbRadius,
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
  Widget _buildAudioPlayer(BuildContext context, AudioPlayerState audioState, SoundLibraryBloc bloc) {
    // Calculate responsive dimensions
    final screenWidth = MediaQuery.of(context).size.width;
    final isSmallScreen = screenWidth < 400;
    final isMediumScreen = screenWidth >= 400 && screenWidth < 600;
    
    // Responsive sizing
    final effectiveHeight = isSmallScreen 
        ? height * 0.8 
        : isMediumScreen 
            ? height * 0.9 
            : height;
    
    final effectiveWidth = isSmallScreen 
        ? width * 0.95 
        : width;
    // Customizable dimensions with defaults
    final playButtonSize = this.playButtonSize ?? effectiveHeight * 0.7;
    final playButtonMargin = this.playButtonMargin ?? effectiveHeight * 0.15;
    final fontSize = this.fontSize ?? effectiveHeight * 0.25;
    final horizontalPadding = this.horizontalPadding ?? effectiveHeight * 0.2;
    final optionsButtonSize = this.optionsButtonSize ?? effectiveHeight * 0.6;
    final optionsButtonMargin = this.optionsButtonMargin ?? effectiveHeight * 0.1;

    return Container(
      width: effectiveWidth,
      height: effectiveHeight,
      decoration: BoxDecoration(
        color: AppColors.grey.withAlpha(120),
        borderRadius: BorderRadius.circular(effectiveHeight / 2), // Pill shape
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.1),
            blurRadius: 4.r,
            offset: Offset(0, 2.h),
          ),
        ],
      ),
      child: Row(
        children: [
          InkWell(
            onTap: (audioState.isLoading || audioState.isDownloading) ? null : () => _togglePlayPause(context, bloc),
            child: Container(
              width: playButtonSize,
              height: playButtonSize,
              margin: EdgeInsets.all(playButtonMargin),
              decoration: BoxDecoration(
                color: const Color(0xFFD4AF37),
                shape: BoxShape.circle,
                boxShadow: [
                  BoxShadow(
                    color: const Color(0xFFD4AF37).withValues(alpha: 0.3),
                    blurRadius: 6.r,
                    offset: Offset(0, 2.h),
                  ),
                ],
              ),
              child: Stack(
                alignment: Alignment.center,
                children: [
                  // Show loading indicator when downloading
                  if (audioState.isDownloading || audioState.isLoading)
                    SizedBox(
                      width: playButtonSize * 0.4,
                      height: playButtonSize * 0.4,
                      child: CircularProgressIndicator(
                        strokeWidth: 2.w,
                        valueColor: const AlwaysStoppedAnimation<Color>(Colors.white),
                      ),
                    ),
                  
                  // Show appropriate icon based on state
                  if (!audioState.isDownloading && !audioState.isLoading)
                    audioState.hasError
                        ? Icon(
                            Icons.refresh,
                            size: playButtonSize * 0.5,
                          )
                        : Icon(
                            audioState.isPlaying ? Icons.pause : Icons.play_arrow,
                            size: playButtonSize * 0.5,
                          ),
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(right: horizontalPadding * 0.5),
            child: Text(
              audioState.isDownloading 
                  ? 'جاري التحميل...'
                  : audioState.hasError 
                      ? 'خطأ  '
                      : audioState.duration > Duration.zero
                          ? '${_formatDuration(audioState.position)}/${_formatDuration(audioState.duration)}'
                          : '0:0/0:0',
              style: TextStyle(
                fontFamily: FontFamily.tajawal,
                fontSize: fontSize,
                color: audioState.isDownloading 
                    ? AppColors.primary
                    : audioState.hasError 
                        ? Colors.red 
                        : const Color(0xFF333333),
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          
          // Download button on the far right
          GestureDetector(
            onTap: audioState.isFileDownloading ? null : () => _downloadAudio(context, bloc),
            child: Container(
              width: optionsButtonSize,
              height: optionsButtonSize,
              margin: EdgeInsets.only(right: optionsButtonMargin),
              decoration: BoxDecoration(
                color: Colors.transparent,
              ),
              child: Stack(
                alignment: Alignment.center,
                children: [
                  // Download icon
                  if (!audioState.isFileDownloading)
                    Icon(
                      Icons.download,
                      size: optionsButtonSize * 0.6,
                      color: const Color(0xFF333333),
                    ),
                  
                  // Loading indicator when downloading
                  if (audioState.isFileDownloading)
                    SizedBox(
                      width: optionsButtonSize * 0.4,
                      height: optionsButtonSize * 0.4,
                      child: CircularProgressIndicator(
                        strokeWidth: 2.w,
                        valueColor: AlwaysStoppedAnimation<Color>(AppColors.primary),
                      ),
                    ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Toggles play/pause for the audio
  void _togglePlayPause(BuildContext context, SoundLibraryBloc bloc) {
    final audioState = bloc.getAudioPlayerState(soundId);
    
    if (audioState.isLoading || audioState.isDownloading) {
      print('Audio is currently being downloaded, please wait...');
      return;
    }

    if (audioState.isPlaying) {
      bloc.add(PauseAudioEvent(soundId: soundId));
    } else {
      // If there's an error or no URL loaded, load it first
      if (audioState.hasError || audioState.currentUrl == null || audioState.currentUrl!.isEmpty) {
        bloc.add(LoadAudioEvent(
          soundId: soundId,
          audioUrl: audioUrl,
          alternativeUrls: alternativeUrls,
        ));
        return;
      }

      // Just play the already loaded audio
      bloc.add(PlayAudioEvent(soundId: soundId));
    }
  }

  /// Downloads the audio file
  void _downloadAudio(BuildContext context, SoundLibraryBloc bloc) {
    // Extract filename from URL
    final uri = Uri.parse(audioUrl);
    final fileName = uri.pathSegments.last;
    
    print('Downloading audio: $fileName from $audioUrl');
    
    bloc.add(DownloadAudioEvent(
      soundId: soundId,
      audioUrl: audioUrl,
      fileName: fileName,
      soundTitle: soundTitle,
    ));
  }

  /// Formats duration to show only minutes:seconds
  String _formatDuration(Duration duration) {
    String twoDigits(int n) => n.toString().padLeft(1, '0');
    final minutes = twoDigits(duration.inMinutes.remainder(60));
    final seconds = twoDigits(duration.inSeconds.remainder(60));
    return '$minutes:$seconds';
  }
}