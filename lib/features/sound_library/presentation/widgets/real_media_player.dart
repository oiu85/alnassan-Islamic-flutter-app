import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';
import 'package:nassan_app/core/responsive/screen_util_res.dart';
import 'package:nassan_app/config/appconfig/app_colors.dart';
import 'package:nassan_app/gen/fonts.gen.dart';
import '../../data/model.dart';

/// Widget for playing Real Media files using video_player
class RealMediaPlayer extends StatefulWidget {
  final SoundData sound;
  final String audioUrl;
  final List<String>? alternativeUrls;
  final double? width;
  final double? height;

  const RealMediaPlayer({
    super.key,
    required this.sound,
    required this.audioUrl,
    this.alternativeUrls,
    this.width,
    this.height,
  });

  @override
  State<RealMediaPlayer> createState() => _RealMediaPlayerState();
}

class _RealMediaPlayerState extends State<RealMediaPlayer> {
  VideoPlayerController? _controller;
  bool _isInitialized = false;
  bool _hasError = false;
  String? _errorMessage;
  int _currentUrlIndex = 0;
  bool _isPlaying = false;

  @override
  void initState() {
    super.initState();
    _initializePlayer();
  }

  @override
  void dispose() {
    _controller?.dispose();
    super.dispose();
  }

  void _initializePlayer() {
    _tryInitializeWithUrl(widget.audioUrl);
  }

  void _tryInitializeWithUrl(String url) {
    try {
      _controller?.dispose();
      _controller = VideoPlayerController.networkUrl(Uri.parse(url));
      
      _controller!.initialize().then((_) {
        if (mounted) {
          setState(() {
            _isInitialized = true;
            _hasError = false;
            _errorMessage = null;
          });
        }
      }).catchError((error) {
        print('Error initializing video player with URL: $url, Error: $error');
        _tryAlternativeUrl();
      });
    } catch (e) {
      print('Error creating video player controller: $e');
      _tryAlternativeUrl();
    }
  }

  void _tryAlternativeUrl() {
    if (widget.alternativeUrls != null && 
        _currentUrlIndex < widget.alternativeUrls!.length) {
      final alternativeUrl = widget.alternativeUrls![_currentUrlIndex];
      _currentUrlIndex++;
      _tryInitializeWithUrl(alternativeUrl);
    } 
  }

  void _togglePlayPause() {
    if (_controller != null && _isInitialized) {
      setState(() {
        if (_controller!.value.isPlaying) {
          _controller!.pause();
          _isPlaying = false;
        } else {
          _controller!.play();
          _isPlaying = true;
        }
      });
    }
  }

  String _formatDuration(Duration duration) {
    String twoDigits(int n) => n.toString().padLeft(2, '0');
    final minutes = twoDigits(duration.inMinutes.remainder(60));
    final seconds = twoDigits(duration.inSeconds.remainder(60));
    return '$minutes:$seconds';
  }

  @override
  Widget build(BuildContext context) {
    if (_hasError) {
      return Container(
        width: widget.width ?? 200.w,
        height: widget.height ?? 30.h,
        decoration: BoxDecoration(
          color: Colors.red.withValues(alpha: 0.1),
          borderRadius: BorderRadius.circular(8.r),
          border: Border.all(color: Colors.red.withValues(alpha: 0.3)),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.error_outline,
              color: Colors.red,
              size: 20.f,
            ),
          ],
        ),
      );
    }

    if (!_isInitialized || _controller == null) {
      return Container(
        width: widget.width ?? 200.w,
        height: widget.height ?? 40.h,
        decoration: BoxDecoration(
          color: AppColors.grey.withValues(alpha: 0.1),
          borderRadius: BorderRadius.circular(8.r),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircularProgressIndicator(
                color: AppColors.primary,
                strokeWidth: 2.w,
              ),
              SizedBox(height: 4.h),
              Text(
                'جاري التحميل...',
                style: TextStyle(
                  fontFamily: FontFamily.tajawal,
                  fontSize: 10.f,
                  color: AppColors.primary,
                ),
              ),
            ],
          ),
        ),
      );
    }

    return Container(
      width: widget.width ?? 200.w,
      height: widget.height ?? 40.h,
      decoration: BoxDecoration(
        color: AppColors.grey.withValues(alpha: 0.1),
        borderRadius: BorderRadius.circular(8.r),
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
          // Play/Pause button
          GestureDetector(
            onTap: _togglePlayPause,
            child: Container(
              width: 32.w,
              height: 32.h,
              margin: EdgeInsets.all(4.w),
              decoration: BoxDecoration(
                color: AppColors.primary,
                shape: BoxShape.circle,
                boxShadow: [
                  BoxShadow(
                    color: AppColors.primary.withValues(alpha: 0.3),
                    blurRadius: 4.r,
                    offset: Offset(0, 2.h),
                  ),
                ],
              ),
              child: Icon(
                _isPlaying ? Icons.pause : Icons.play_arrow,
                color: Colors.white,
                size: 16.f,
              ),
            ),
          ),
          
          // Progress and time info
          Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 8.w),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Progress bar
                  VideoProgressIndicator(
                    _controller!,
                    allowScrubbing: true,
                    colors: VideoProgressColors(
                      playedColor: AppColors.primary,
                      backgroundColor: Colors.white.withValues(alpha: 0.3),
                      bufferedColor: AppColors.primary.withValues(alpha: 0.3),
                    ),
                  ),
                  
                  SizedBox(height: 2.h),
                  
                  // Time display
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        _formatDuration(_controller!.value.position),
                        style: TextStyle(
                          fontFamily: FontFamily.tajawal,
                          fontSize: 9.f,
                          color: AppColors.primary,
                        ),
                      ),
                      Text(
                        _formatDuration(_controller!.value.duration),
                        style: TextStyle(
                          fontFamily: FontFamily.tajawal,
                          fontSize: 9.f,
                          color: AppColors.grey,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}