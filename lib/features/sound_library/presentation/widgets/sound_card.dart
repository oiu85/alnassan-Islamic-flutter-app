import 'package:flutter/material.dart';
import 'package:nassan_app/config/appconfig/app_colors.dart';
import 'package:nassan_app/gen/fonts.gen.dart';
import '../../../../gen/assets.gen.dart';
import '../widgets/compact_audio_player.dart';
import '../../data/model.dart';

/// Reusable sound card widget used across all sound library pages
class SoundCard extends StatelessWidget {
  final SoundData sound;
  final double? width;
  final double? height;

  const SoundCard({super.key, required this.sound, this.width, this.height});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 1,
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
                    Assets.images.headphone2.path,
                    width: 20,
                    height: 20,
                  ),
                  const SizedBox(width: 8),
                  Expanded(
                    child: Text(
                      sound.soundTitle,
                      style: const TextStyle(
                        fontFamily: FontFamily.tajawal,
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
            Container(
              padding: EdgeInsets.only(right: 4),
              height: 20,
              child: Row(
                children: [
                  Icon(Icons.visibility, size: 15, color: AppColors.primary),
                  const SizedBox(width: 4),
                  Text(
                    '${sound.soundVisitor ?? 0}',
                    style: TextStyle(
                      fontFamily: FontFamily.tajawal,
                      fontSize: 11,
                      color: AppColors.grey,
                    ),
                  ),
                  const SizedBox(width: 12),
                  Icon(
                    Icons.calendar_today,
                    size: 14,
                    color: AppColors.primary,
                  ),
                  const SizedBox(width: 4),
                  Expanded(
                    child: Text(
                      _formatDate(sound.soundDate),
                      style: TextStyle(
                        fontFamily: FontFamily.tajawal,
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
            const SizedBox(height: 8),
            // Fixed height audio player section
            Container(
              height: 30,
              child: CompactAudioPlayer(
                audioUrl: sound.soundFileUrl?.contains("http") == true
                    ? sound.soundFileUrl!
                    : "http://naasan.net/files/sound/${sound.soundFile}",
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
}

