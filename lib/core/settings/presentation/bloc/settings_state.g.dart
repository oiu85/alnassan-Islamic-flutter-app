// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'settings_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SettingsState _$SettingsStateFromJson(Map<String, dynamic> json) =>
    _SettingsState(
      fontSizeMultiplier:
          (json['fontSizeMultiplier'] as num?)?.toDouble() ?? 1.0,
      uiScaleMultiplier: (json['uiScaleMultiplier'] as num?)?.toDouble() ?? 1.0,
      isDarkMode: json['isDarkMode'] as bool? ?? false,
      selectedLanguage: json['selectedLanguage'] as String? ?? 'ar',
      downloadPath:
          json['downloadPath'] as String? ?? '/storage/emulated/0/Download',
      isFullScreen: json['isFullScreen'] as bool? ?? true,
      isLoading: json['isLoading'] as bool? ?? false,
      isSaving: json['isSaving'] as bool? ?? false,
      errorMessage: json['errorMessage'] as String?,
    );

Map<String, dynamic> _$SettingsStateToJson(_SettingsState instance) =>
    <String, dynamic>{
      'fontSizeMultiplier': instance.fontSizeMultiplier,
      'uiScaleMultiplier': instance.uiScaleMultiplier,
      'isDarkMode': instance.isDarkMode,
      'selectedLanguage': instance.selectedLanguage,
      'downloadPath': instance.downloadPath,
      'isFullScreen': instance.isFullScreen,
      'isLoading': instance.isLoading,
      'isSaving': instance.isSaving,
      'errorMessage': instance.errorMessage,
    };
