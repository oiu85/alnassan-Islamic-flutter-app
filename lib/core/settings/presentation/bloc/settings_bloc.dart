import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/services.dart';
import '../../domain/services/settings_service.dart';
import '../../../responsive/screen_util_res.dart';
import 'settings_event.dart';
import 'settings_state.dart';

class SettingsBloc extends Bloc<SettingsEvent, SettingsState> {
  final SettingsService _settingsService;

  SettingsBloc({required SettingsService settingsService})
      : _settingsService = settingsService,
        super(const SettingsState()) {
    on<LoadSettingsEvent>(_onLoadSettings);
    on<UpdateFontSizeEvent>(_onUpdateFontSize);
    on<UpdateUiScaleEvent>(_onUpdateUiScale);
    on<UpdateDarkModeEvent>(_onUpdateDarkMode);
    on<UpdateLanguageEvent>(_onUpdateLanguage);
    on<UpdateDownloadPathEvent>(_onUpdateDownloadPath);
    on<UpdateFullScreenEvent>(_onUpdateFullScreen);
    on<ResetToDefaultEvent>(_onResetToDefault);
    on<ApplyPresetEvent>(_onApplyPreset);
    on<SubmitSettingsEvent>(_onSubmitSettings);
  }

  Future<void> _onLoadSettings(
    LoadSettingsEvent event,
    Emitter<SettingsState> emit,
  ) async {
    emit(state.copyWith(isLoading: true));
    
    try {
      await _settingsService.initialize();
      
      emit(state.copyWith(
        isLoading: false,
        fontSizeMultiplier: _settingsService.fontSizeMultiplier,
        uiScaleMultiplier: _settingsService.uiScaleMultiplier,
        isDarkMode: _settingsService.isDarkMode,
        selectedLanguage: _settingsService.selectedLanguage,
        downloadPath: _settingsService.downloadPath,
        isFullScreen: _settingsService.isFullScreen,
      ));
    } catch (e) {
      emit(state.copyWith(
        isLoading: false,
        errorMessage: 'فشل في تحميل الإعدادات: ${e.toString()}',
      ));
    }
  }

  Future<void> _onUpdateFontSize(
    UpdateFontSizeEvent event,
    Emitter<SettingsState> emit,
  ) async {
    // Just update the state without saving to SharedPreferences
    emit(state.copyWith(
      fontSizeMultiplier: event.fontSizeMultiplier,
    ));
  }

  Future<void> _onUpdateUiScale(
    UpdateUiScaleEvent event,
    Emitter<SettingsState> emit,
  ) async {
    // Just update the state without saving to SharedPreferences
    emit(state.copyWith(
      uiScaleMultiplier: event.uiScaleMultiplier,
    ));
  }

  Future<void> _onUpdateDarkMode(
    UpdateDarkModeEvent event,
    Emitter<SettingsState> emit,
  ) async {
    // Just update the state without saving to SharedPreferences
    emit(state.copyWith(
      isDarkMode: event.isDarkMode,
    ));
  }

  Future<void> _onUpdateLanguage(
    UpdateLanguageEvent event,
    Emitter<SettingsState> emit,
  ) async {
    // Just update the state without saving to SharedPreferences
    emit(state.copyWith(
      selectedLanguage: event.language,
    ));
  }

  Future<void> _onUpdateDownloadPath(
    UpdateDownloadPathEvent event,
    Emitter<SettingsState> emit,
  ) async {
    // Just update the state without saving to SharedPreferences
    emit(state.copyWith(
      downloadPath: event.downloadPath,
    ));
  }

  Future<void> _onUpdateFullScreen(
    UpdateFullScreenEvent event,
    Emitter<SettingsState> emit,
  ) async {
    // Just update the state without saving to SharedPreferences
    emit(state.copyWith(
      isFullScreen: event.isFullScreen,
    ));
  }

  Future<void> _onResetToDefault(
    ResetToDefaultEvent event,
    Emitter<SettingsState> emit,
  ) async {
    emit(state.copyWith(isSaving: true));
    
    try {
      await _settingsService.resetToDefault();
      
      emit(state.copyWith(
        isSaving: false,
        fontSizeMultiplier: 1.0,
        uiScaleMultiplier: 1.0,
        isDarkMode: false,
        selectedLanguage: 'ar',
        downloadPath: '/storage/emulated/0/Download',
        isFullScreen: true,
      ));
    } catch (e) {
      emit(state.copyWith(
        isSaving: false,
        errorMessage: 'فشل في إعادة تعيين الإعدادات: ${e.toString()}',
      ));
    }
  }

  Future<void> _onApplyPreset(
    ApplyPresetEvent event,
    Emitter<SettingsState> emit,
  ) async {
    emit(state.copyWith(isSaving: true));
    
    try {
      await _settingsService.updateFontSizeMultiplier(event.fontSizeMultiplier);
      await _settingsService.updateUiScaleMultiplier(event.uiScaleMultiplier);
      
      emit(state.copyWith(
        isSaving: false,
        fontSizeMultiplier: event.fontSizeMultiplier,
        uiScaleMultiplier: event.uiScaleMultiplier,
      ));
    } catch (e) {
      emit(state.copyWith(
        isSaving: false,
        errorMessage: 'فشل في تطبيق الإعدادات المحددة: ${e.toString()}',
      ));
    }
  }

  Future<void> _onSubmitSettings(
    SubmitSettingsEvent event,
    Emitter<SettingsState> emit,
  ) async {
    emit(state.copyWith(isSaving: true));
    
    try {
      // Save all current state values to SharedPreferences
      await _settingsService.updateFontSizeMultiplier(state.fontSizeMultiplier);
      await _settingsService.updateUiScaleMultiplier(state.uiScaleMultiplier);
      await _settingsService.updateDarkMode(state.isDarkMode);
      await _settingsService.updateLanguage(state.selectedLanguage);
      await _settingsService.updateDownloadPath(state.downloadPath);
      await _settingsService.updateFullScreen(state.isFullScreen);
      
      // Update the screen utility with the new font size
      ScreenUtilRes.updateFontSizeMultiplier(state.fontSizeMultiplier);
      
      // Apply full screen mode immediately
      if (state.isFullScreen) {
        await SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);
      } else {
        await SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge);
      }
      
      emit(state.copyWith(
        isSaving: false,
        errorMessage: null,
      ));
    } catch (e) {
      emit(state.copyWith(
        isSaving: false,
        errorMessage: 'فشل في حفظ الإعدادات: ${e.toString()}',
      ));
    }
  }
}
