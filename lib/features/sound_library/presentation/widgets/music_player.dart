import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
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
          style: const TextStyle(
            fontFamily: FontFamily.tajawal,
            fontSize: 18,
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
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [

                SizedBox(
                  width: 250,
                  height: 250,
                  child: widget.sound.soundPicUrl != null
                      ? ClipRRect(
                          borderRadius: BorderRadius.circular(20),
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
                  padding: const EdgeInsets.all(20),
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
                              style: const TextStyle(
                                fontFamily: FontFamily.tajawal,
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                              textAlign: TextAlign.center,
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                          const SizedBox(width: 10),
                          InkWell(
                            onTap: () => bloc.add(MusicPlayerDownloadEvent(sound: widget.sound)),
                            child: Container(
                              padding: const EdgeInsets.all(8),
                              decoration: BoxDecoration(
                                color: AppColors.primary,
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: SvgPicture.asset(
                                Assets.svg.downloadButton.path,
                                width: 24,
                                height: 24,
                                colorFilter: const ColorFilter.mode(Colors.white, BlendMode.srcIn),
                              ),
                            ),
                          ),
                        ],
                      ),
                      
                      const SizedBox(height: 20),
                      
                      // Check if it's a RAR file
                      if (widget.sound.soundFile != null && widget.sound.soundFile!.toLowerCase().endsWith('.rar'))
                        // RAR file message
                        Container(
                          padding: const EdgeInsets.all(20),
                          margin: const EdgeInsets.symmetric(horizontal: 20),
                          decoration: BoxDecoration(
                            color: AppColors.primary.withValues(alpha: 0.1),
                            borderRadius: BorderRadius.circular(15),
                            border: Border.all(
                              color: AppColors.primary.withValues(alpha: 0.3),
                              width: 1,
                            ),
                          ),
                          child: Column(
                            children: [
                              Icon(
                                Icons.archive,
                                size: 40,
                                color: AppColors.primary,
                              ),
                              const SizedBox(height: 10),
                              Text(
                                'هذا الملف مضغوط وهو للتحميل فقط',
                                style: const TextStyle(
                                  fontFamily: FontFamily.tajawal,
                                  fontSize: 16,
                                  color: AppColors.primary,
                                  fontWeight: FontWeight.bold,
                                ),
                                textAlign: TextAlign.center,
                              ),
                              const SizedBox(height: 15),
                              ElevatedButton.icon(
                                onPressed: () => bloc.add(MusicPlayerDownloadEvent(sound: widget.sound)),
                                icon: audioState.isFileDownloading
                                    ? const SizedBox(
                                        width: 20,
                                        height: 20,
                                        child: CircularProgressIndicator(
                                          strokeWidth: 2,
                                          valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
                                        ),
                                      )
                                    : const Icon(
                                        Icons.download,
                                        size: 20,
                                        color: Colors.white,
                                      ),
                                label: Text(
                                  audioState.isFileDownloading ? 'جاري التحميل...' : 'تحميل الملف',
                                  style: const TextStyle(
                                    fontSize: 14,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: AppColors.primary,
                                  padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(25),
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
                              padding: const EdgeInsets.symmetric(horizontal: 20),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                            Text(
                              bloc.formatDuration(audioState.position),
                              style: const TextStyle(
                                fontFamily: FontFamily.tajawal,
                                fontSize: 14,
                                color: AppColors.grey,
                              ),
                            ),
                            Text(
                              bloc.formatDuration(audioState.duration),
                              style: const TextStyle(
                                fontFamily: FontFamily.tajawal,
                                fontSize: 14,
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
                        const SizedBox(height: 30),
                        
                        // Control buttons
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            // Previous button (disabled for now)
                            IconButton(
                              onPressed: null, // TODO: Implement previous track functionality
                              icon: const Icon(Icons.skip_previous, size: 40),
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
                                      const SizedBox(
                                        width: 30,
                                        height: 30,
                                        child: CircularProgressIndicator(
                                          strokeWidth: 3,
                                          valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
                                        ),
                                      ),
                                    if (!audioState.isLoading && !audioState.isDownloading)
                                      Icon(
                                        audioState.isPlaying ? Icons.pause : Icons.play_arrow,
                                        size: 50,
                                        color: Colors.white,
                                      ),
                                  ],
                                ),
                                iconSize: 50,
                              ),
                            ),
                            
                            // Next button (disabled for now)
                            IconButton(
                              onPressed: null, // TODO: Implement next track functionality
                              icon: const Icon(Icons.skip_next, size: 40),
                              color: AppColors.grey,
                            ),
                          ],
                        ),
                      ],
                      
                      const SizedBox(height: 20),
                      
                      // Sound info
                      if (widget.sound.soundSummary != null && widget.sound.soundSummary!.isNotEmpty)
                        Container(
                          padding: const EdgeInsets.all(15),
                          decoration: BoxDecoration(
                            color: AppColors.grey.withValues(alpha: 0.1),
                            borderRadius: BorderRadius.circular(10),
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
