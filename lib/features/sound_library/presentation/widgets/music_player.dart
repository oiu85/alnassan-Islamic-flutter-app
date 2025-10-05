import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:marquee/marquee.dart';
import 'package:share_plus/share_plus.dart';
import 'package:nassan_app/core/responsive/screen_util_res.dart';
import 'package:nassan_app/core/responsive/device_type.dart';
import 'package:nassan_app/core/shared/wdigets/AppScaffold.dart';
import 'package:nassan_app/config/appconfig/app_colors.dart';
import 'package:nassan_app/gen/fonts.gen.dart';

import '../../../../gen/assets.gen.dart';
import '../../data/model.dart';
import '../../data/services/sound_file_type_util.dart';
import '../bloc/sound_library_bloc.dart';
import '../bloc/sound_library_event.dart';
import '../bloc/sound_library_state.dart';
import 'floating_download_progress.dart';
import 'sound_permission_handler.dart';
import 'real_media_player.dart';

class MusicPlayer extends StatefulWidget {
  final SoundData sound;
  
  const MusicPlayer({super.key, required this.sound});

  @override
  State<MusicPlayer> createState() => _MusicPlayerState();
}

class _MusicPlayerState extends State<MusicPlayer> {
  @override
  void initState() {
    super.initState();
    // Initialize music player in BLoC
    context.read<SoundLibraryBloc>().add(
      InitializeMusicPlayerEvent(sound: widget.sound),
    );
  }

  // Function to handle sharing
  void _shareSound() {
    final String soundUrl = 'http://naasan.net/sound.php?id=${widget.sound.soundId}';
    final String title = widget.sound.soundTitle;
    
    Share.share(
      soundUrl,
      subject: title,
    );
  }

  // Function to handle download with permission check
  void _handleDownload(BuildContext context) {
    final bloc = context.read<SoundLibraryBloc>();
    
    // Show permission handler that will trigger download when permission is granted
    showModalBottomSheet(
      context: context,
      backgroundColor: Colors.white,
      isScrollControlled: true,
      builder: (context) => SoundPermissionHandler(
        onPermissionGranted: () {
          // Close the bottom sheet
          Navigator.pop(context);
          // Trigger the download
          bloc.add(MusicPlayerDownloadEvent(sound: widget.sound));
        },
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20.r),
              topRight: Radius.circular(20.r),
            ),
          ),
          padding: EdgeInsets.all(20.w),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                'تحميل الملف',
                style: TextStyle(
                  fontFamily: FontFamily.tajawal,
                  fontSize: 18.f,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10.h),
              Text(
                'سيتم حفظ الملف في مجلد التنزيلات',
                style: TextStyle(
                  fontFamily: FontFamily.tajawal,
                  fontSize: 14.f,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 20.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () => Navigator.pop(context),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.grey,
                      padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 12.h),
                    ),
                    child: Text(
                      'إلغاء',
                      style: TextStyle(
                        fontFamily: FontFamily.tajawal,
                        fontSize: 14.f,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  SizedBox(width: 20.w),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pop(context);
                      bloc.add(MusicPlayerDownloadEvent(sound: widget.sound));
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: AppColors.primary,
                      padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 12.h),
                    ),
                    child: Text(
                      'تحميل',
                      style: TextStyle(
                        fontFamily: FontFamily.tajawal,
                        fontSize: 14.f,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20.h),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return AppScaffold.custom(
      appBar: AppBar(
        title: Text(
          widget.sound.category?.catTitle ?? 'مشغل الصوت',
          style:  TextStyle(
            fontFamily: FontFamily.tajawal,
            fontSize: 20.f,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: AppColors.primary,
        foregroundColor: Colors.white,
      ),
      body: BlocBuilder<SoundLibraryBloc, SoundLibraryState>(
        builder: (context, state) {
          final bloc = context.read<SoundLibraryBloc>();
          final audioState = bloc.getAudioPlayerState(widget.sound.soundId.toString());
          
          // Debug logging for download progress
          if (audioState.isFileDownloading) {
            debugPrint('🎵 MusicPlayer: isFileDownloading = true for ${widget.sound.soundId}, progress: ${(audioState.downloadProgress * 100).toInt()}%');
          }
          
          return FloatingDownloadOverlay(
            showProgress: audioState.isFileDownloading,
            progress: audioState.downloadProgress,
            downloadedBytes: audioState.downloadedBytes,
            totalBytes: audioState.totalBytes,
            fileName: widget.sound.soundFile ?? 'file.rar',
            child: Container(
              padding: EdgeInsets.all(24.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SizedBox(
                    width: 280.w,
                    height: 280.h,
                    child: widget.sound.soundPicUrl != null
                        ? ClipRRect(
                            borderRadius: BorderRadius.circular(24.r),
                            child: Image.network(
                              widget.sound.soundPicUrl!,
                              fit: BoxFit.cover,
                              errorBuilder: (context, error, stackTrace) {
                                return Image.asset(Assets.images.musicPlayerImage.path, fit: BoxFit.contain , );
                              },
                            ),
                          )
                        : Image.asset(Assets.images.musicPlayerImage.path, fit: BoxFit.contain),
                  ),
                  
                  // Sound information and controls
                  Container(
                    padding: EdgeInsets.all(24.w),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        // Title and action buttons
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Expanded(
                              child: Text(
                                widget.sound.soundTitle,
                                style:  TextStyle(
                                  fontFamily: FontFamily.tajawal,
                                  fontSize: 20.f,
                                  fontWeight: FontWeight.bold,
                                ),
                                textAlign: TextAlign.center,
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                            SizedBox(width: 12.w),
                            // Share button
                            InkWell(
                              onTap: _shareSound,
                              child: Container(
                                padding: EdgeInsets.all(10.w),
                                decoration: BoxDecoration(
                                  color:AppColors.primary,
                                  borderRadius: BorderRadius.circular(12.r),
                                ),
                                child: Icon(
                                  Icons.share,
                                  size: 26.w,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            SizedBox(width: 12.w),
                            // Download button
                            InkWell(
                              onTap: () => _handleDownload(context),
                              child: Container(
                                padding: EdgeInsets.all(10.w),
                                decoration: BoxDecoration(
                                  color: AppColors.primary,
                                  borderRadius: BorderRadius.circular(12.r),
                                ),
                                child: SvgPicture.asset(
                                  Assets.svg.downloadButton.path,
                                  width: 26.w,
                                  height: 26.h,
                                  colorFilter: const ColorFilter.mode(Colors.white, BlendMode.srcIn),
                                ),
                              ),
                            ),
                          ],
                        ),
                        
                        SizedBox(height: 24.h),
                        
                        // Get file type and render appropriate UI
                        _buildFileTypeSpecificUI(context, bloc, audioState),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }

  // Build UI based on file type
  Widget _buildFileTypeSpecificUI(BuildContext context, SoundLibraryBloc bloc, AudioPlayerState audioState) {
    // Determine file type
    final fileType = widget.sound.soundFile != null 
        ? SoundFileTypeUtil.getFileType(widget.sound.soundFile)
        : SoundFileType.audio;
    
    // Render UI based on file type
    switch (fileType) {
      case SoundFileType.compressed:
        return _buildCompressedFileUI(context, audioState);
      case SoundFileType.realMedia:
        return _buildRealMediaFileUI(context);
      case SoundFileType.audio:
      case SoundFileType.unknown:
        return _buildStandardAudioUI(context, bloc, audioState);
    }
  }

  // UI for compressed files (RAR, ZIP, etc.)
  Widget _buildCompressedFileUI(BuildContext context, AudioPlayerState audioState) {
    return Container(
      padding: EdgeInsets.all(20.w),
      margin: EdgeInsets.symmetric(horizontal: 20.w),
      decoration: BoxDecoration(
        color: AppColors.primary.withValues(alpha: 0.1),
        borderRadius: BorderRadius.circular(15.r),
        border: Border.all(
          color: AppColors.primary.withValues(alpha: 0.3),
          width: 1.w,
        ),
      ),
      child: Column(
        children: [
          Icon(
            Icons.archive,
            size: 40.f,
            color: AppColors.primary,
          ),
          SizedBox(height: 10.h),
          Text(
            'هذا الملف مضغوط وهو للتحميل فقط',
            style:  TextStyle(
              fontFamily: FontFamily.tajawal,
              fontSize: 16.f,
              color: AppColors.primary,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 5.h),
          Text(
            'نوع الملف: ${SoundFileTypeUtil.getFileTypeDescription(widget.sound.soundFile)}',
            style:  TextStyle(
              fontFamily: FontFamily.tajawal,
              fontSize: 14.f,
              color: AppColors.primary,
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 15.h),
          ElevatedButton.icon(
            onPressed: audioState.isFileDownloading 
                ? null 
                : () => _handleDownload(context),
            icon: audioState.isFileDownloading
                ?  SizedBox(
                    width: 20.w,
                    height: 20.h,
                    child: CircularProgressIndicator(
                      strokeWidth: 2.w,
                      valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
                    ),
                  )
                :  Icon(
                    Icons.download,
                    size: 20.f,
                    color: Colors.white,
                  ),
            label: Text(
              audioState.isFileDownloading ? 'جاري التحميل...' : 'تحميل الملف',
              style:  TextStyle(
                fontSize: 14.f,
                color: Colors.white,
                fontWeight: FontWeight.w600,
              ),
            ),
            style: ElevatedButton.styleFrom(
              backgroundColor: AppColors.primary,
              padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 12.h),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(25.r),
              ),
            ),
          ),
        ],
      ),
    );
  }

  // UI for RealMedia files (.rm, .ra)
  Widget _buildRealMediaFileUI(BuildContext context) {
    // Try to build the Real Media player URL
    final rmUrl = _buildRealMediaUrl();
    
    if (rmUrl.isNotEmpty) {
      return Container(
        padding: EdgeInsets.all(20.w),
        margin: EdgeInsets.symmetric(horizontal: 20.w),
        decoration: BoxDecoration(
          color: AppColors.primary.withValues(alpha: 0.1),
          borderRadius: BorderRadius.circular(15.r),
          border: Border.all(
            color: AppColors.primary.withValues(alpha: 0.3),
            width: 1.w,
          ),
        ),
        child: Column(
          children: [
            // Real Media Player
            RealMediaPlayer(
              sound: widget.sound,
              audioUrl: rmUrl,
              alternativeUrls: _getRealMediaAlternativeUrls(),
              width: 300.w,
              height: 100.h,
            ),
            SizedBox(height: 15.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton.icon(
                  onPressed: () => _handleDownload(context),
                  icon: Icon(
                    Icons.download,
                    size: 20.f,
                    color: Colors.white,
                  ),
                  label: Text(
                    'تحميل الملف',
                    style:  TextStyle(
                      fontSize: 14.f,
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors.primary,
                    padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 12.h),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25.r),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      );
    }
    
    // Fallback UI if URL cannot be built
    return Container(
      padding: EdgeInsets.all(20.w),
      margin: EdgeInsets.symmetric(horizontal: 20.w),
      decoration: BoxDecoration(
        color: AppColors.primary.withValues(alpha: 0.1),
        borderRadius: BorderRadius.circular(15.r),
        border: Border.all(
          color: AppColors.primary.withValues(alpha: 0.3),
          width: 1.w,
        ),
      ),
      child: Column(
        children: [
          Icon(
            Icons.music_note,
            size: 40.f,
            color: AppColors.primary,
          ),
          SizedBox(height: 10.h),
          Text(
            'ملف ريل ميديا',
            style:  TextStyle(
              fontFamily: FontFamily.tajawal,
              fontSize: 16.f,
              color: AppColors.primary,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 5.h),
          Text(
            'نوع الملف: ${SoundFileTypeUtil.getFileTypeDescription(widget.sound.soundFile)}',
            style:  TextStyle(
              fontFamily: FontFamily.tajawal,
              fontSize: 14.f,
              color: AppColors.primary,
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 15.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton.icon(
                onPressed: () => _handleDownload(context),
                icon: Icon(
                  Icons.download,
                  size: 20.f,
                  color: Colors.white,
                ),
                label: Text(
                  'تحميل الملف',
                  style:  TextStyle(
                    fontSize: 14.f,
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColors.primary,
                  padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 12.h),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25.r),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  // UI for standard audio files (MP3, WAV, etc.)
  Widget _buildStandardAudioUI(BuildContext context, SoundLibraryBloc bloc, AudioPlayerState audioState) {
    return Column(
      children: [
        // Progress slider with seek functionality
        Slider(
          value: audioState.duration.inMilliseconds > 0 
              ? audioState.position.inMilliseconds / audioState.duration.inMilliseconds 
              : 0.0,
          onChanged: audioState.duration.inMilliseconds > 0 
              ? (value) => bloc.add(MusicPlayerSeekEvent(
                  soundId: widget.sound.soundId.toString(),
                  progress: value,
                ))
              : null,
          activeColor: AppColors.primary,
          inactiveColor: AppColors.grey.withValues(alpha: 0.3),
        ),
        
        // Time display
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                bloc.formatDuration(audioState.position),
                style:  TextStyle(
                  fontFamily: FontFamily.tajawal,
                  fontSize: 14.f,
                  color: AppColors.grey,
                ),
              ),
              Text(
                bloc.formatDuration(audioState.duration),
                style:  TextStyle(
                  fontFamily: FontFamily.tajawal,
                  fontSize: 14.f,
                  color: AppColors.grey,
                ),
              ),
            ],
          ),
        ),
        
        SizedBox(height: 30.h),
        
        // Control buttons
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            // Previous button (disabled for now)
            IconButton(
              onPressed: null, // TODO: Implement previous track functionality
              icon: Icon(Icons.skip_previous, size: 44.f),
              color: AppColors.grey,
            ),
            
            // Play/Pause button
            Container(
              decoration: BoxDecoration(
                color: AppColors.primary,
                shape: BoxShape.circle,
              ),
              child: IconButton(
                onPressed: () => bloc.add(MusicPlayerTogglePlayPauseEvent(
                  soundId: widget.sound.soundId.toString(),
                  sound: widget.sound,
                )),
                icon: Stack(
                  alignment: Alignment.center,
                  children: [
                    if (audioState.isLoading || audioState.isDownloading)
                      SizedBox(
                        width: 32.w,
                        height: 32.h,
                        child: CircularProgressIndicator(
                          strokeWidth: 3.5.w,
                          valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
                        ),
                      ),
                    if (!audioState.isLoading && !audioState.isDownloading)
                      Icon(
                        audioState.isPlaying ? Icons.pause : Icons.play_arrow,
                        size: 54.f,
                        color: Colors.white,
                      ),
                  ],
                ),
                iconSize: 54.f,
              ),
            ),
            
            // Next button (disabled for now)
            IconButton(
              onPressed: null, // TODO: Implement next track functionality
              icon: Icon(Icons.skip_next, size: 44.f),
              color: AppColors.grey,
            ),
          ],
        ),
        
        SizedBox(height: 24.h),
        
        // Sound info
        if (widget.sound.soundSummary != null && widget.sound.soundSummary!.isNotEmpty)
          Container(
            padding: EdgeInsets.all(18.w),
            decoration: BoxDecoration(
              color: AppColors.grey.withValues(alpha: 0.1),
              borderRadius: BorderRadius.circular(12.r),
            ),
            child: Text(
              widget.sound.soundSummary!,
              style: const TextStyle(
                fontFamily: FontFamily.tajawal,
                fontSize: 15,
                color: AppColors.black,
              ),
              textAlign: TextAlign.center,
            ),
          ),
      ],
    );
  }

  /// Builds the Real Media URL from sound data
  String _buildRealMediaUrl() {
    if (widget.sound.soundFile != null && 
        SoundFileTypeUtil.isRealMediaFile(widget.sound.soundFile)) {
      final fileName = widget.sound.soundFile!;
      return "https://www.naasan.net/files/sound/$fileName";
    }
    return "";
  }

  /// Gets alternative URLs for Real Media files
  List<String> _getRealMediaAlternativeUrls() {
    if (widget.sound.soundFile != null && 
        SoundFileTypeUtil.isRealMediaFile(widget.sound.soundFile)) {
      final fileName = widget.sound.soundFile!;
      return [
        "https://naasan.net/files/sound/$fileName",
        "http://www.naasan.net/files/sound/$fileName",
        "http://naasan.net/files/sound/$fileName",
      ];
    }
    return [];
  }
}

Widget buildDrawerItem(BuildContext context, String title, String imagePath, VoidCallback onTap) {
  // Responsive sizes based on device type
  final iconSize = context.deviceValue(  mobile: 30.0,
    tablet: 38.0,
    desktop: 45.0,
  );

  final fontSize = context.deviceValue(
    mobile: 18.0,
    tablet: 22.0,
    desktop: 26.0,
  );

  return Padding(
    padding: EdgeInsets.symmetric(
      vertical: 12.h,
      horizontal: 30.w,
    ),
    child: InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(8.r),
      child: Row(
        children: [
          Image.asset(
            imagePath,
            width: iconSize.w,
            height: iconSize.h,
          ),
          SizedBox(width: 10.w),
          Expanded(
            child: _buildMarqueeText(
              context,
              title,
              fontSize,
            ),
          ),
        ],
      ),
    ),
  );
}

Widget _buildMarqueeText(BuildContext context, String text, double fontSize) {
  // Calculate available width (approximate)
  final screenWidth = MediaQuery.of(context).size.width;
  final availableWidth = screenWidth - 100.w; // Account for icon and padding
  
  // Create a text painter to measure text width
  final textPainter = TextPainter(
    text: TextSpan(
      text: text,
      style: TextStyle(
        fontFamily: FontFamily.tajawal,
        fontSize: fontSize.f,
      ),
    ),
    textDirection: TextDirection.rtl,
  );
  textPainter.layout();
  
  // If text fits in available space, show normal text
  if (textPainter.width <= availableWidth) {
    return Text(
      text,
      style: TextStyle(
        fontFamily: FontFamily.tajawal,
        fontSize: fontSize.f,
      ),
      maxLines: 1,
      overflow: TextOverflow.ellipsis,
    );
  }
  
  // If text is too long, use marquee
  return Container(
    height: 30.h, // Fixed height for consistent layout
    child: Marquee(
      text: text,
      style: TextStyle(
        fontFamily: FontFamily.tajawal,
        fontSize: fontSize.f,
      ),
      scrollAxis: Axis.horizontal,
      crossAxisAlignment: CrossAxisAlignment.center,
      blankSpace: 20.0,
      velocity: 30.0,
      pauseAfterRound: Duration(seconds: 1),
      startPadding: 10.0,
      accelerationDuration: Duration(seconds: 1),
      accelerationCurve: Curves.linear,
      decelerationDuration: Duration(milliseconds: 500),
      decelerationCurve: Curves.easeOut,
    ),
  );
}