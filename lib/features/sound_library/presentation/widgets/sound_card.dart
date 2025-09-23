import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nassan_app/core/responsive/screen_util_res.dart';
import 'package:nassan_app/config/appconfig/app_colors.dart';
import 'package:nassan_app/gen/assets.gen.dart';
import '../widgets/compact_audio_player.dart';
import '../widgets/floating_download_progress.dart';
import '../widgets/music_player.dart';
import '../../data/model.dart';
import '../bloc/sound_library_bloc.dart';
import '../bloc/sound_library_event.dart';
import '../bloc/sound_library_state.dart';

/// Reusable sound card widget used across all sound library pages
class SoundCard extends StatefulWidget {
  final SoundData sound;
  final double? width;
  final double? height;

  const SoundCard({super.key, required this.sound, this.width, this.height});

  @override
  State<SoundCard> createState() => _SoundCardState();
}

class _SoundCardState extends State<SoundCard> {
  // Cache the URL to avoid multiple constructions
  late final String _cachedUrl;
  late final List<String> _cachedAlternativeUrls;

  @override
  void initState() {
    super.initState();
    _cachedUrl = _buildSoundUrl(widget.sound);
    _cachedAlternativeUrls = _getAlternativeUrls(widget.sound);
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SoundLibraryBloc, SoundLibraryState>(
      builder: (context, state) {
        final audioState = state.audioPlayerStates[widget.sound.soundId.toString()] ?? const AudioPlayerState();
        
        // Debug logging
        if (audioState.isFileDownloading) {
          debugPrint('🎯 SoundCard: isFileDownloading = true for ${widget.sound.soundId}, progress: ${(audioState.downloadProgress * 100).toInt()}%');
        }
        
        return FloatingDownloadOverlay(
          showProgress: audioState.isFileDownloading,
          progress: audioState.downloadProgress,
          downloadedBytes: audioState.downloadedBytes,
          totalBytes: audioState.totalBytes,
          fileName: widget.sound.soundFile ?? 'file.rar',
          child: GestureDetector(
            onTap: () => _navigateToMusicPlayer(context),
            child: Card(
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.r)),
            color: Colors.white,
            child: Container(
        width: widget.width ?? 200.w,
        height: widget.height ?? 144.h,
        padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 10.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            // Fixed height title section
            SizedBox(
              height: 40.h,
              child: Row(
                children: [
                  Image.asset(
                    Assets.images.headphone.path,
                    width: 20.w,
                    height: 20.h,
                  ),
                  SizedBox(width: 8.w),
                  Expanded(
                    child: Text(
                      widget.sound.soundTitle,
                      style:  TextStyle(
                        fontSize: 12.f,
                        fontWeight: FontWeight.w600,
                        color: AppColors.black,
                      ),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ],
              ),
            ),
            // Fixed height info section
            Padding(
              padding: EdgeInsets.only(right: 4.w),
              child: SizedBox(
                height: 20.h,
                child: Row(
                  children: [
                    Icon(Icons.visibility, size: 15.f, color: AppColors.primary),
                    SizedBox(width: 4.w),
                    Text(
                      widget.sound.soundVisitor ?? '0',
                      style:  TextStyle(
                        fontSize: 11.f,
                        color: AppColors.grey,
                      ),
                    ),
                    SizedBox(width: 12.w),
                    Icon(
                      Icons.access_time,
                      size: 14.f,
                      color: AppColors.primary,
                    ),
                    SizedBox(width: 4.w),
                    Expanded(
                      child: Text(
                        _formatDate(widget.sound.soundDate),
                        style:  TextStyle(
                          fontSize: 11.f,
                          color: AppColors.grey,
                        ),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 8.h),
            // Fixed height audio player section
            SizedBox(
              height: 30.h,
              child: _cachedUrl.isNotEmpty
                  ? CompactAudioPlayer(
                      soundId: widget.sound.soundId.toString(),
                      audioUrl: _cachedUrl,
                      soundTitle: widget.sound.soundTitle,
                      alternativeUrls: _cachedAlternativeUrls,
                    )
                  : Center(
                    child: widget.sound.soundFile != null && widget.sound.soundFile!.toLowerCase().endsWith('.rar')
                        ? audioState.isFileDownloading
                            ?  SizedBox(
                                width: 20.w,
                                height: 20.h,
                                child: CircularProgressIndicator(
                                  strokeWidth: 2.w,
                                  valueColor: AlwaysStoppedAnimation<Color>(AppColors.primary),
                                ),
                              )
                            : ElevatedButton.icon(
                                onPressed: () {
                                  context.read<SoundLibraryBloc>().add(
                                    DownloadAudioEvent(
                                      soundId: widget.sound.soundId.toString(),
                                      audioUrl: _buildRarDownloadUrl(widget.sound.soundFile!),
                                      fileName: widget.sound.soundFile!,
                                      soundTitle: widget.sound.soundTitle,
                                    ),
                                  );
                                },
                            icon:  Icon(
                              Icons.download,
                              size: 16.f,
                              color: Colors.white,
                            ),
                            label:  Text(
                              'تحميل',
                              style: TextStyle(
                                fontSize: 12.f,
                                color: Colors.white,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            style: ElevatedButton.styleFrom(
                              backgroundColor: AppColors.primary,
                              padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 6.h),
                              minimumSize: Size.zero,
                              tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12.r),
                              ),
                            ),
                          )
                        : Text(
                            'لا يوجد ملف صوتي',
                            style:  TextStyle(
                              fontSize: 12.f,
                              color: AppColors.grey,
                            ),
                          ),
                  ),
            ),
          ],
        ),
      ),
    ),
          ),
        );
      },
    );
  }

  /// Formats date to show only year-month-day (YYYY-MM-DD)
  String _formatDate(String dateString) {
    try {
      final date = DateTime.parse(dateString);
      return '${date.year}-${date.month.toString().padLeft(2, '0')}-${date.day.toString().padLeft(2, '0')}';
    } catch (e) {
      // If parsing fails, return the original string
      return dateString;
    }
  }

  /// Builds the complete sound URL from API response data
  String _buildSoundUrl(SoundData sound) {
    // Only use MP3 files, skip RAR files
    if (sound.soundFile != null && sound.soundFile!.toLowerCase().endsWith('.mp3')) {
      // Use HTTPS with WWW as primary URL format
      final fileName = sound.soundFile!;
      return "https://www.naasan.net/files/sound/$fileName";
    }
    
    // If it's a RAR file or other format, return empty
    return "";
  }

  /// Gets alternative URLs to try if the main URL fails
  List<String> _getAlternativeUrls(SoundData sound) {
    if (sound.soundFile != null && sound.soundFile!.toLowerCase().endsWith('.mp3')) {
      final fileName = sound.soundFile!;
      return [
        "https://naasan.net/files/sound/$fileName",
        "http://www.naasan.net/files/sound/$fileName",
        "http://naasan.net/files/sound/$fileName",
      ];
    }
    return [];
  }

  /// Builds the download URL for RAR files
  String _buildRarDownloadUrl(String fileName) {
    return "https://www.naasan.net/files/sound/$fileName";
  }

  /// Navigates to the MusicPlayer page
  void _navigateToMusicPlayer(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => MusicPlayer(sound: widget.sound),
      ),
    );
  }

}
