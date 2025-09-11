import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:nassan_app/gen/fonts.gen.dart';
import 'package:nassan_app/config/appconfig/app_colors.dart';

class CompactAudioPlayer extends StatefulWidget {
  final String audioUrl;
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
    required this.audioUrl,
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
  State<CompactAudioPlayer> createState() => _CompactAudioPlayerState();
}

class _CompactAudioPlayerState extends State<CompactAudioPlayer> {
  late AudioPlayer _audioPlayer;
  bool _isPlaying = false;
  bool _isLoading = false;
  Duration _duration = Duration.zero;
  Duration _position = Duration.zero;

  @override
  void initState() {
    super.initState();
    _audioPlayer = AudioPlayer();
    _initPlayer();
  }

  void _initPlayer() async {
    try {
      await _audioPlayer.setSourceUrl(widget.audioUrl);
      
      _audioPlayer.onDurationChanged.listen((duration) {
        setState(() {
          _duration = duration;
        });
      });

      _audioPlayer.onPositionChanged.listen((position) {
        setState(() {
          _position = position;
        });
      });

      _audioPlayer.onPlayerStateChanged.listen((state) {
        setState(() {
          _isPlaying = state == PlayerState.playing;
          _isLoading = false; // Simplified - we'll handle loading differently
        });
      });
    } catch (e) {
      // Error initializing audio player: $e
    }
  }

  void _togglePlayPause() async {
    if (_isPlaying) {
      await _audioPlayer.pause();
    } else {
      await _audioPlayer.resume();
    }
  }

  void _seekTo(Duration position) async {
    await _audioPlayer.seek(position);
  }

  String _formatDuration(Duration duration) {
    String twoDigits(int n) => n.toString().padLeft(1, '0');
    final minutes = twoDigits(duration.inMinutes.remainder(60));
    final seconds = twoDigits(duration.inSeconds.remainder(60));
    return '$minutes:$seconds';
  }

  @override
  void dispose() {
    _audioPlayer.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // Calculate responsive dimensions
    final screenWidth = MediaQuery.of(context).size.width;
    final isSmallScreen = screenWidth < 400;
    final isMediumScreen = screenWidth >= 400 && screenWidth < 600;
    
    // Responsive sizing
    final effectiveHeight = isSmallScreen 
        ? widget.height * 0.8 
        : isMediumScreen 
            ? widget.height * 0.9 
            : widget.height;
    
    final effectiveWidth = isSmallScreen 
        ? widget.width * 0.95 
        : widget.width;

    // Customizable dimensions with defaults
    final playButtonSize = widget.playButtonSize ?? effectiveHeight * 0.7;
    final playButtonMargin = widget.playButtonMargin ?? effectiveHeight * 0.15;
    final progressBarHeight = widget.progressBarHeight ?? effectiveHeight * 0.08;
    final progressBarThumbRadius = widget.progressBarThumbRadius ?? effectiveHeight * 0.08;
    final fontSize = widget.fontSize ?? effectiveHeight * 0.25;
    final horizontalPadding = widget.horizontalPadding ?? effectiveHeight * 0.2;
    final optionsButtonSize = widget.optionsButtonSize ?? effectiveHeight * 0.6;
    final optionsButtonMargin = widget.optionsButtonMargin ?? effectiveHeight * 0.1;

     return Container(
       width: effectiveWidth,
       height: effectiveHeight,
       decoration: BoxDecoration(
         color: AppColors.grey.withAlpha(100),
         borderRadius: BorderRadius.circular(effectiveHeight / 2), // Pill shape
       ),
      child: Row(
        children: [
          InkWell(
            onTap: _isLoading ? null : _togglePlayPause,
            child: Container(
              width: playButtonSize,
              height: playButtonSize,
              margin: EdgeInsets.all(playButtonMargin),
               decoration: BoxDecoration(
                 color: const Color(0xFFD4AF37),
                 shape: BoxShape.circle,
               ),
              child: _isLoading
                  ? SizedBox(
                      width: playButtonSize * 0.4,
                      height: playButtonSize * 0.4,
                       child: CircularProgressIndicator(
                         strokeWidth: 2,
                         valueColor: const AlwaysStoppedAnimation<Color>(Colors.white),
                       ),
                     )
                   : Icon(
                       _isPlaying ? Icons.pause : Icons.play_arrow,
                       color: Colors.white,
                       size: playButtonSize * 0.5,
                     ),
            ),
          ),

          // Expanded(
          //   child: SliderTheme(
          //      data: SliderTheme.of(context).copyWith(
          //        activeTrackColor: const Color(0xFFD4AF37),
          //        inactiveTrackColor: const Color(0xFFE0E0E0),
          //        thumbColor: const Color(0xFFD4AF37),
          //       thumbShape: RoundSliderThumbShape(
          //         enabledThumbRadius: progressBarThumbRadius,
          //       ),
          //       trackHeight: progressBarHeight,
          //       overlayShape: RoundSliderOverlayShape(
          //         overlayRadius: progressBarThumbRadius * 1.5,
          //       ),
          //       overlayColor: AppColors.primary.withValues(alpha: 0.1),
          //     ),
          //     child: Slider(
          //       value: _duration.inMilliseconds > 0
          //           ? _position.inMilliseconds / _duration.inMilliseconds
          //           : 0.0,
          //       onChanged: (value) {
          //         final position = Duration(
          //           milliseconds: (value * _duration.inMilliseconds).round(),
          //         );
          //         _seekTo(position);
          //       },
          //     ),
          //   ),
          // ),
          
          // Timer on the right
          Padding(
            padding: EdgeInsets.only(right: horizontalPadding * 0.5),
            child: Text(
              '${_formatDuration(_position)}/${_formatDuration(_duration)}',
               style: TextStyle(
                 fontFamily: FontFamily.tajawal,
                 fontSize: fontSize,
                 color: const Color(0xFF333333), // Dark grey text like the image
                 fontWeight: FontWeight.w500,
               ),
            ),
          ),
          
          // Options Menu (3 dots) on the far right
          GestureDetector(
            onTap: () {
              // Add options menu functionality here
              // Options menu tapped
            },
            child: Container(
              width: optionsButtonSize,
              height: optionsButtonSize,
              margin: EdgeInsets.only(right: optionsButtonMargin),
               decoration: BoxDecoration(
                 color: Colors.transparent,
               ),
               child:Image.asset('assets/images/Frame 1321317284.png',width: 50 , height: 35,),
          ),
          ),
        ],
      ),
    );
  }
}
