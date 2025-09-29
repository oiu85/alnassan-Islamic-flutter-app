import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nassan_app/core/responsive/screen_util_res.dart';
import 'package:nassan_app/config/appconfig/app_colors.dart';
import 'package:nassan_app/gen/assets.gen.dart';
import '../widgets/compact_audio_player.dart';
import '../widgets/floating_download_progress.dart';
import '../widgets/music_player.dart';
import '../widgets/real_media_player.dart';
import '../../data/model.dart';
import '../../data/services/sound_file_type_util.dart';
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
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(32.r)),
            color: Colors.white,
            elevation: 2,
            child: Container(
        width: widget.width ?? 220.w,
        height: widget.height ?? 160.h,
        padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 12.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            // Fixed height title section
            SizedBox(
              height: 44.h,
              child: Row(
                children: [
                  Image.asset(
                    Assets.images.headphone.path,
                    width: 24.w,
                    height: 24.h,
                  ),
                  SizedBox(width: 12.w),
                  Expanded(
                    child: Text(
                      widget.sound.soundTitle,
                      style:  TextStyle(
                        fontSize: 14.f,
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
              padding: EdgeInsets.only(right: 8.w),
              child: SizedBox(
                height: 24.h,
                child: Row(
                  children: [
                    Icon(Icons.visibility, size: 18.f, color: AppColors.primary),
                    SizedBox(width: 6.w),
                    Text(
                      widget.sound.soundVisitor ?? '0',
                      style:  TextStyle(
                        fontSize: 12.f,
                        color: AppColors.grey,
                      ),
                    ),
                    SizedBox(width: 16.w),
                    Icon(
                      Icons.access_time,
                      size: 16.f,
                      color: AppColors.primary,
                    ),
                    SizedBox(width: 6.w),
                    Expanded(
                      child: Text(
                        _formatDate(widget.sound.soundDate),
                        style:  TextStyle(
                          fontSize: 12.f,
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
            SizedBox(height: 12.h),
            // Fixed height audio player section
            SizedBox(
              height: 36.h,
              child: _buildAudioPlayer(),
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

  /// Builds the appropriate audio player based on file type
  Widget _buildAudioPlayer() {
    final fileType = SoundFileTypeUtil.getFileType(widget.sound.soundFile);
    
    // For Real Media files, use the Real Media player
    if (fileType == SoundFileType.realMedia && _cachedUrl.isNotEmpty) {
      return RealMediaPlayer(
        sound: widget.sound,
        audioUrl: _cachedUrl,
        alternativeUrls: _cachedAlternativeUrls,
        width: widget.width ?? 220.w,
        height: 36.h,
      );
    }
    
    // For standard audio files, use the compact audio player
    if (_cachedUrl.isNotEmpty) {
      return CompactAudioPlayer(
        soundId: widget.sound.soundId.toString(),
        audioUrl: _cachedUrl,
        soundTitle: widget.sound.soundTitle,
        alternativeUrls: _cachedAlternativeUrls,
      );
    }
    
    // Fallback for files without URL
    return BlocBuilder<SoundLibraryBloc, SoundLibraryState>(
      builder: (context, state) {
        final audioState = state.audioPlayerStates[widget.sound.soundId.toString()] ?? const AudioPlayerState();
        
        return Center(
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
                    size: 18.f,
                    color: Colors.white,
                  ),
                  label:  Text(
                    'تحميل',
                    style: TextStyle(
                      fontSize: 13.f,
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors.primary,
                    padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 8.h),
                    minimumSize: Size.zero,
                    tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16.r),
                    ),
                  ),
                )
              : Text(
                  'لا يوجد ملف صوتي',
                  style:  TextStyle(
                    fontSize: 13.f,
                    color: AppColors.grey,
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
    if (sound.soundFile != null) {
      final fileName = sound.soundFile!;
      final fileType = SoundFileTypeUtil.getFileType(fileName);
      
      // Support both audio files and Real Media files
      if (fileType == SoundFileType.audio || fileType == SoundFileType.realMedia) {
        // Use HTTPS with WWW as primary URL format
        return "https://www.naasan.net/files/sound/$fileName";
      }
    }
    
    // If it's a RAR file or other unsupported format, return empty
    return "";
  }

  /// Gets alternative URLs to try if the main URL fails
  List<String> _getAlternativeUrls(SoundData sound) {
    if (sound.soundFile != null) {
      final fileName = sound.soundFile!;
      final fileType = SoundFileTypeUtil.getFileType(fileName);
      
      // Support both audio files and Real Media files
      if (fileType == SoundFileType.audio || fileType == SoundFileType.realMedia) {
        return [
          "https://naasan.net/files/sound/$fileName",
          "http://www.naasan.net/files/sound/$fileName",
          "http://naasan.net/files/sound/$fileName",
        ];
      }
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
