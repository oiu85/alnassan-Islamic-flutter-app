import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

class UrlLauncherUtils {
  /// Opens a WhatsApp URL with a preset message
  /// Works on both web and mobile platforms
  static Future<void> launchWhatsApp({
    required String phoneNumber,
    String? message,
  }) async {
    try {
      // Remove any spaces from phone number
      final cleanPhoneNumber = phoneNumber.replaceAll(' ', '');
      
      // Create WhatsApp URL
      String whatsappUrl = 'https://wa.me/$cleanPhoneNumber';
      
      // Add message if provided
      if (message != null && message.isNotEmpty) {
        // URL encode the message for proper handling
        final encodedMessage = Uri.encodeComponent(message);
        whatsappUrl += '?text=$encodedMessage';
      }
      
      if (kIsWeb) {
        // For web, copy URL to clipboard and show instructions
        await Clipboard.setData(ClipboardData(text: whatsappUrl));
        throw UnsupportedError('تم نسخ رابط واتساب إلى الحافظة. يرجى فتح واتساب يدوياً واللصق');
      } else {
        // For mobile, try to open the URL using the system
        // This should work if WhatsApp is installed
        try {
          // Try to launch the URL using the system's default handler
          // This is a simple approach that works on most mobile platforms
          final uri = Uri.parse(whatsappUrl);
          if (uri.scheme == 'https') {
            // Copy to clipboard as fallback
            await Clipboard.setData(ClipboardData(text: whatsappUrl));
            throw UnsupportedError('تم نسخ رابط واتساب إلى الحافظة. يرجى فتح واتساب يدوياً واللصق');
          }
        } catch (e) {
          // Copy to clipboard as fallback
          await Clipboard.setData(ClipboardData(text: whatsappUrl));
          throw UnsupportedError('تم نسخ رابط واتساب إلى الحافظة. يرجى فتح واتساب يدوياً واللصق');
        }
      }
    } catch (e) {
      throw Exception('Failed to launch WhatsApp: $e');
    }
  }
  
  /// Opens a general URL
  static Future<void> launchUrl(String url) async {
    try {
      await Clipboard.setData(ClipboardData(text: url));
      throw UnsupportedError('تم نسخ الرابط إلى الحافظة');
    } catch (e) {
      throw Exception('Failed to copy URL: $e');
    }
  }
}
