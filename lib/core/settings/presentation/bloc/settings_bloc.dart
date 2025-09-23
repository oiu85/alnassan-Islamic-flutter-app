import 'package:flutter_bloc/flutter_bloc.dart';
import '../../domain/services/settings_service.dart';
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
    on<ResetToDefaultEvent>(_onResetToDefault);
    on<ApplyPresetEvent>(_onApplyPreset);
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
    emit(state.copyWith(isSaving: true));
    
    try {
      await _settingsService.updateFontSizeMultiplier(event.fontSizeMultiplier);
      
      emit(state.copyWith(
        isSaving: false,
        fontSizeMultiplier: event.fontSizeMultiplier,
      ));
    } catch (e) {
      emit(state.copyWith(
        isSaving: false,
        errorMessage: 'فشل في تحديث حجم الخط: ${e.toString()}',
      ));
    }
  }

  Future<void> _onUpdateUiScale(
    UpdateUiScaleEvent event,
    Emitter<SettingsState> emit,
  ) async {
    emit(state.copyWith(isSaving: true));
    
    try {
      await _settingsService.updateUiScaleMultiplier(event.uiScaleMultiplier);
      
      emit(state.copyWith(
        isSaving: false,
        uiScaleMultiplier: event.uiScaleMultiplier,
      ));
    } catch (e) {
      emit(state.copyWith(
        isSaving: false,
        errorMessage: 'فشل في تحديث حجم العناصر: ${e.toString()}',
      ));
    }
  }

  Future<void> _onUpdateDarkMode(
    UpdateDarkModeEvent event,
    Emitter<SettingsState> emit,
  ) async {
    emit(state.copyWith(isSaving: true));
    
    try {
      await _settingsService.updateDarkMode(event.isDarkMode);
      
      emit(state.copyWith(
        isSaving: false,
        isDarkMode: event.isDarkMode,
      ));
    } catch (e) {
      emit(state.copyWith(
        isSaving: false,
        errorMessage: 'فشل في تحديث الوضع المظلم: ${e.toString()}',
      ));
    }
  }

  Future<void> _onUpdateLanguage(
    UpdateLanguageEvent event,
    Emitter<SettingsState> emit,
  ) async {
    emit(state.copyWith(isSaving: true));
    
    try {
      await _settingsService.updateLanguage(event.language);
      
      emit(state.copyWith(
        isSaving: false,
        selectedLanguage: event.language,
      ));
    } catch (e) {
      emit(state.copyWith(
        isSaving: false,
        errorMessage: 'فشل في تحديث اللغة: ${e.toString()}',
      ));
    }
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
}
