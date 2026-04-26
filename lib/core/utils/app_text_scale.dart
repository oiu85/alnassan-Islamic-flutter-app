/// User-selected font scale from settings (persisted via [SettingsService]).
///
/// Applied at the root [MediaQuery.textScaler] so all [TextStyle] sizes respect
/// it without custom ScreenUtil wrappers.
class AppTextScale {
  AppTextScale._();

  static double value = 1.0;

  static void set(double multiplier) {
    value = multiplier;
  }
}
