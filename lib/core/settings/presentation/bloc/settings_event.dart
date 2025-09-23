abstract class SettingsEvent {}

class LoadSettingsEvent extends SettingsEvent {}

class UpdateFontSizeEvent extends SettingsEvent {
  final double fontSizeMultiplier;
  
  UpdateFontSizeEvent(this.fontSizeMultiplier);
}

class UpdateUiScaleEvent extends SettingsEvent {
  final double uiScaleMultiplier;
  
  UpdateUiScaleEvent(this.uiScaleMultiplier);
}

class UpdateDarkModeEvent extends SettingsEvent {
  final bool isDarkMode;
  
  UpdateDarkModeEvent(this.isDarkMode);
}

class UpdateLanguageEvent extends SettingsEvent {
  final String language;
  
  UpdateLanguageEvent(this.language);
}

class ResetToDefaultEvent extends SettingsEvent {}

class ApplyPresetEvent extends SettingsEvent {
  final double fontSizeMultiplier;
  final double uiScaleMultiplier;
  
  ApplyPresetEvent({
    required this.fontSizeMultiplier,
    required this.uiScaleMultiplier,
  });
}
