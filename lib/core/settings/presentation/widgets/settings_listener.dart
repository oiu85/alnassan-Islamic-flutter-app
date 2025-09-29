import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import '../../domain/services/settings_service.dart';


/// Widget that listens to settings changes and triggers hot restart
class SettingsListener extends StatefulWidget {
  final Widget child;
  
  const SettingsListener({
    super.key,
    required this.child,
  });

  @override
  State<SettingsListener> createState() => _SettingsListenerState();
}

class _SettingsListenerState extends State<SettingsListener> {
  late SettingsService _settingsService;
  bool _isRestarting = false;

  @override
  void initState() {
    super.initState();
    _settingsService = SettingsService();
    _settingsService.addListener(_onSettingsChanged);
  }

  @override
  void dispose() {
    _settingsService.removeListener(_onSettingsChanged);
    super.dispose();
  }

  void _onSettingsChanged() {
    if (!_isRestarting) {
      _isRestarting = true;
      
      // Show a brief loading indicator
      _showRestartDialog();
      
      // Trigger hot restart after a short delay
      Future.delayed(const Duration(milliseconds: 500), () {
        if (mounted) {
          _triggerHotRestart();
        }
      });
    }
  }

  void _showRestartDialog() {
    // Show a simple overlay instead of dialog to avoid MaterialLocalizations issue
    showGeneralDialog(
      context: context,
      barrierDismissible: false,
      barrierLabel: '',
      transitionDuration: const Duration(milliseconds: 200),
      pageBuilder: (context, animation, secondaryAnimation) => Container(
        color: Colors.black54,
        child: Center(
          child: Container(
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const CircularProgressIndicator(),
                const SizedBox(height: 16),
                const Text(
                  'جاري تطبيق الإعدادات...',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void _triggerHotRestart() {
    if (kDebugMode) {
      // In debug mode, we can't programmatically restart the app
      // So we'll show a message to the user
      Navigator.of(context).pop(); // Close loading dialog
      
      showGeneralDialog(
        context: context,
        barrierDismissible: true,
        barrierLabel: '',
        transitionDuration: const Duration(milliseconds: 200),
        pageBuilder: (context, animation, secondaryAnimation) => Container(
          color: Colors.black54,
          child: Center(
            child: Container(
              margin: const EdgeInsets.all(20),
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Text(
                    'تم تطبيق الإعدادات',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 16),
                  const Text(
                    'تم حفظ الإعدادات بنجاح! التغييرات ستظهر في المرة القادمة التي تفتح فيها التطبيق.',
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                      _isRestarting = false;
                    },
                    child: const Text('موافق'),
                  ),
                ],
              ),
            ),
          ),
        ),
      );
    } else {
      // In release mode, we could potentially restart the app
      // For now, just show success message
      Navigator.of(context).pop(); // Close loading dialog
      
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('تم تطبيق الإعدادات بنجاح!'),
          backgroundColor: Colors.green,
          duration: Duration(seconds: 2),
        ),
      );
      
      _isRestarting = false;
    }
  }

  @override
  Widget build(BuildContext context) {
    return widget.child;
  }
}
