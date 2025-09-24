import 'dart:io';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:android_intent_plus/android_intent.dart';

class UrlLauncherUtils {
  /// Opens a WhatsApp URL with a preset message
  /// Works on Android (using android_intent_plus), iOS, and web platforms
  static Future<void> launchWhatsApp({
    required String phoneNumber,
    String? message,
  }) async {
    try {
      // Clean the phone number: remove spaces and ensure it has the + prefix for country code
      String cleanPhoneNumber = phoneNumber.replaceAll(' ', '');
      
      // Ensure the phone number starts with + for international format
      if (!cleanPhoneNumber.startsWith('+')) {
        // If it doesn't start with + but has a country code (assuming it starts with digits)
        cleanPhoneNumber = '+$cleanPhoneNumber';
      }
      
      // Create WhatsApp URL - remove the + sign for the wa.me format
      String whatsappUrl = 'https://wa.me/' + cleanPhoneNumber.replaceFirst('+', '');
      
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
      } else if (Platform.isAndroid) {
        // For Android, use android_intent_plus to launch WhatsApp
        try {
          final AndroidIntent intent = AndroidIntent(
            action: 'action_view',
            data: whatsappUrl,
          );
          await intent.launch();
        } catch (e) {
          // Fallback: copy to clipboard if intent fails
          await Clipboard.setData(ClipboardData(text: whatsappUrl));
          throw UnsupportedError('تم نسخ رابط واتساب إلى الحافظة. يرجى فتح واتساب يدوياً واللصق');
        }
      } else {
        // For iOS and other platforms, copy to clipboard
        await Clipboard.setData(ClipboardData(text: whatsappUrl));
        throw UnsupportedError('تم نسخ رابط واتساب إلى الحافظة. يرجى فتح واتساب يدوياً واللصق');
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
