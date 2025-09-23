import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter/foundation.dart';

class SettingsService extends ChangeNotifier {
  static const String _fontSizeMultiplierKey = 'font_size_multiplier';
  static const String _uiScaleMultiplierKey = 'ui_scale_multiplier';
  static const String _isDarkModeKey = 'is_dark_mode';
  static const String _selectedLanguageKey = 'selected_language';

  // Default values
  static const double _defaultFontSizeMultiplier = 1.0;
  static const double _defaultUiScaleMultiplier = 1.0;
  static const bool _defaultIsDarkMode = false;
  static const String _defaultLanguage = 'ar';

  // Singleton instance
  static final SettingsService _instance = SettingsService._internal();
  factory SettingsService() => _instance;
  SettingsService._internal();

  // Current settings
  double _fontSizeMultiplier = _defaultFontSizeMultiplier;
  double _uiScaleMultiplier = _defaultUiScaleMultiplier;
  bool _isDarkMode = _defaultIsDarkMode;
  String _selectedLanguage = _defaultLanguage;

  // Getters
  double get fontSizeMultiplier => _fontSizeMultiplier;
  double get uiScaleMultiplier => _uiScaleMultiplier;
  bool get isDarkMode => _isDarkMode;
  String get selectedLanguage => _selectedLanguage;

  // Initialize settings from SharedPreferences
  Future<void> initialize() async {
    await loadSettings();
  }

  // Load settings from SharedPreferences
  Future<void> loadSettings() async {
    final prefs = await SharedPreferences.getInstance();
    
    _fontSizeMultiplier = prefs.getDouble(_fontSizeMultiplierKey) ?? _defaultFontSizeMultiplier;
    _uiScaleMultiplier = prefs.getDouble(_uiScaleMultiplierKey) ?? _defaultUiScaleMultiplier;
    _isDarkMode = prefs.getBool(_isDarkModeKey) ?? _defaultIsDarkMode;
    _selectedLanguage = prefs.getString(_selectedLanguageKey) ?? _defaultLanguage;
  }

  // Update font size multiplier
  Future<void> updateFontSizeMultiplier(double value) async {
    _fontSizeMultiplier = value;
    final prefs = await SharedPreferences.getInstance();
    await prefs.setDouble(_fontSizeMultiplierKey, value);
    notifyListeners();
  }

  // Update UI scale multiplier
  Future<void> updateUiScaleMultiplier(double value) async {
    _uiScaleMultiplier = value;
    final prefs = await SharedPreferences.getInstance();
    await prefs.setDouble(_uiScaleMultiplierKey, value);
    notifyListeners();
  }

  // Update dark mode
  Future<void> updateDarkMode(bool value) async {
    _isDarkMode = value;
    final prefs = await SharedPreferences.getInstance();
    await prefs.setBool(_isDarkModeKey, value);
    notifyListeners();
  }

  // Update selected language
  Future<void> updateLanguage(String value) async {
    _selectedLanguage = value;
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString(_selectedLanguageKey, value);
    notifyListeners();
  }

  // Reset to default values
  Future<void> resetToDefault() async {
    _fontSizeMultiplier = _defaultFontSizeMultiplier;
    _uiScaleMultiplier = _defaultUiScaleMultiplier;
    _isDarkMode = _defaultIsDarkMode;
    _selectedLanguage = _defaultLanguage;

    final prefs = await SharedPreferences.getInstance();
    await prefs.setDouble(_fontSizeMultiplierKey, _defaultFontSizeMultiplier);
    await prefs.setDouble(_uiScaleMultiplierKey, _defaultUiScaleMultiplier);
    await prefs.setBool(_isDarkModeKey, _defaultIsDarkMode);
    await prefs.setString(_selectedLanguageKey, _defaultLanguage);
    notifyListeners();
  }

  // Get effective font size (base size * multiplier)
  double getEffectiveFontSize(double baseSize) {
    return baseSize * _fontSizeMultiplier;
  }

  // Get effective UI scale (base size * multiplier)
  double getEffectiveUiScale(double baseSize) {
    return baseSize * _uiScaleMultiplier;
  }

  // Check if settings are at default values
  bool get isAtDefaultSettings {
    return _fontSizeMultiplier == _defaultFontSizeMultiplier &&
           _uiScaleMultiplier == _defaultUiScaleMultiplier &&
           _isDarkMode == _defaultIsDarkMode &&
           _selectedLanguage == _defaultLanguage;
  }

  // Get settings summary
  Map<String, dynamic> getSettingsSummary() {
    return {
      'fontSizeMultiplier': _fontSizeMultiplier,
      'uiScaleMultiplier': _uiScaleMultiplier,
      'isDarkMode': _isDarkMode,
      'selectedLanguage': _selectedLanguage,
      'isAtDefault': isAtDefaultSettings,
    };
  }
}
