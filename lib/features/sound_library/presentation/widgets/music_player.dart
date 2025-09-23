import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:nassan_app/core/responsive/screen_util_res.dart';
import 'package:nassan_app/core/shared/wdigets/AppScaffold.dart';
import 'package:nassan_app/config/appconfig/app_colors.dart';
import 'package:nassan_app/gen/fonts.gen.dart';

import '../../../../gen/assets.gen.dart';
import '../../data/model.dart';
import '../bloc/sound_library_bloc.dart';
import '../bloc/sound_library_event.dart';
import '../bloc/sound_library_state.dart';
import 'floating_download_progress.dart';

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

  @override
  Widget build(BuildContext context) {
    return AppScaffold.custom(
      appBar: AppBar(
        title: Text(
          widget.sound.category?.catTitle ?? 'مشغل الصوت',
          style:  TextStyle(
            fontFamily: FontFamily.tajawal,
            fontSize: 18.f,
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
            padding: EdgeInsets.all(20.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [

                SizedBox(
                  width: 250.w,
                  height: 250.h,
                  child: widget.sound.soundPicUrl != null
                      ? ClipRRect(
                          borderRadius: BorderRadius.circular(20.r),
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
                  padding: EdgeInsets.all(20.w),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      // Title and download button
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Expanded(
                            child: Text(
                              widget.sound.soundTitle,
                              style:  TextStyle(
                                fontFamily: FontFamily.tajawal,
                                fontSize: 18.f,
                                fontWeight: FontWeight.bold,
                              ),
                              textAlign: TextAlign.center,
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                          SizedBox(width: 10.w),
                          InkWell(
                            onTap: () => bloc.add(MusicPlayerDownloadEvent(sound: widget.sound)),
                            child: Container(
                              padding: EdgeInsets.all(8.w),
                              decoration: BoxDecoration(
                                color: AppColors.primary,
                                borderRadius: BorderRadius.circular(8.r),
                              ),
                              child: SvgPicture.asset(
                                Assets.svg.downloadButton.path,
                                width: 24.w,
                                height: 24.h,
                                colorFilter: const ColorFilter.mode(Colors.white, BlendMode.srcIn),
                              ),
                            ),
                          ),
                        ],
                      ),
                      
                      SizedBox(height: 20.h),
                      
                      // Check if it's a RAR file
                      if (widget.sound.soundFile != null && widget.sound.soundFile!.toLowerCase().endsWith('.rar'))
                        // RAR file message
                        Container(
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
                              SizedBox(height: 15.h),
                              ElevatedButton.icon(
                                onPressed: () => bloc.add(MusicPlayerDownloadEvent(sound: widget.sound)),
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
                        )
                      else
                        // Normal audio controls for MP3 files
                        Column(
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
                          ],
                        ),
                      
                      // Only show control buttons for MP3 files
                      if (widget.sound.soundFile == null || !widget.sound.soundFile!.toLowerCase().endsWith('.rar')) ...[
                        SizedBox(height: 30.h),
                        
                        // Control buttons
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            // Previous button (disabled for now)
                            IconButton(
                              onPressed: null, // TODO: Implement previous track functionality
                              icon: Icon(Icons.skip_previous, size: 40.f),
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
                                        width: 30.w,
                                        height: 30.h,
                                        child: CircularProgressIndicator(
                                          strokeWidth: 3.w,
                                          valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
                                        ),
                                      ),
                                    if (!audioState.isLoading && !audioState.isDownloading)
                                      Icon(
                                        audioState.isPlaying ? Icons.pause : Icons.play_arrow,
                                        size: 50.f,
                                        color: Colors.white,
                                      ),
                                  ],
                                ),
                                iconSize: 50.f,
                              ),
                            ),
                            
                            // Next button (disabled for now)
                            IconButton(
                              onPressed: null, // TODO: Implement next track functionality
                              icon: Icon(Icons.skip_next, size: 40.f),
                              color: AppColors.grey,
                            ),
                          ],
                        ),
                      ],
                      
                      SizedBox(height: 20.h),
                      
                      // Sound info
                      if (widget.sound.soundSummary != null && widget.sound.soundSummary!.isNotEmpty)
                        Container(
                          padding: EdgeInsets.all(15.w),
                          decoration: BoxDecoration(
                            color: AppColors.grey.withValues(alpha: 0.1),
                            borderRadius: BorderRadius.circular(10.r),
                          ),
                          child: Text(
                            widget.sound.soundSummary!,
                            style: const TextStyle(
                              fontFamily: FontFamily.tajawal,
                              fontSize: 14,
                              color: AppColors.black,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
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
}
