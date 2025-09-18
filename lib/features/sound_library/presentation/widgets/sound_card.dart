import 'package:flutter/material.dart';
import 'package:nassan_app/config/appconfig/app_colors.dart';
import 'package:nassan_app/gen/assets.gen.dart';
import '../widgets/compact_audio_player.dart';
import '../../data/model.dart';

/// Reusable sound card widget used across all sound library pages
class SoundCard extends StatelessWidget {
  final SoundData sound;
  final double? width;
  final double? height;
  
  // Cache the URL to avoid multiple constructions
  late final String _cachedUrl;
  late final List<String> _cachedAlternativeUrls;

  SoundCard({super.key, required this.sound, this.width, this.height}) {
    _cachedUrl = _buildSoundUrl(sound);
    _cachedAlternativeUrls = _getAlternativeUrls(sound);
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
      color: Colors.white,
      child: Container(
        width: width ?? 200,
        height: height ?? 144,
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Fixed height title section
            Container(
              height: 40,
              child: Row(
                children: [
                  Image.asset(
                    Assets.images.headphone.path,
                    width: 20,
                    height: 20,
                  ),
                  const SizedBox(width: 8),
                  Expanded(
                    child: Text(
                      sound.soundTitle,
                      style: const TextStyle(
                        fontSize: 12,
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
              padding: const EdgeInsets.only(right: 4),
              child: Container(
                height: 20,
                child: Row(
                  children: [
                    Icon(Icons.visibility, size: 15, color: AppColors.primary),
                    const SizedBox(width: 4),
                    Text(
                      sound.soundVisitor ?? '0',
                      style: const TextStyle(
                        fontSize: 11,
                        color: AppColors.grey,
                      ),
                    ),
                    const SizedBox(width: 12),
                    Icon(
                      Icons.access_time,
                      size: 14,
                      color: AppColors.primary,
                    ),
                    const SizedBox(width: 4),
                    Expanded(
                      child: Text(
                        _formatDate(sound.soundDate),
                        style: const TextStyle(
                          fontSize: 11,
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
            const SizedBox(height: 8),
            // Fixed height audio player section
            Container(
              height: 30,
              child: _cachedUrl.isNotEmpty
                  ? CompactAudioPlayer(
                      soundId: sound.soundId.toString(),
                      audioUrl: _cachedUrl,
                      alternativeUrls: _cachedAlternativeUrls,
                    )
                  : Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: AppColors.grey.withOpacity(0.1),
                      ),
                      child: Center(
                        child: Text(
                          sound.soundFile != null && sound.soundFile!.toLowerCase().endsWith('.rar')
                              ? 'ملف مضغوط (RAR)'
                              : 'لا يوجد ملف صوتي',
                          style: const TextStyle(
                            fontSize: 12,
                            color: AppColors.grey,
                          ),
                        ),
                      ),
                    ),
            ),
            
            // Simple debug info
            const SizedBox(height: 4),
            GestureDetector(
              onTap: () {
                print('Sound: ${sound.soundTitle}');
                print('File: ${sound.soundFile}');
                print('URL: ${_buildSoundUrl(sound)}');
              },
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: AppColors.primary.withOpacity(0.1),
                ),
                child: const Text(
                  'DEBUG',
                  style: TextStyle(
                    fontSize: 8,
                    color: AppColors.primary,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
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


}
