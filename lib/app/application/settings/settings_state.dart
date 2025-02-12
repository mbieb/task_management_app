part of 'settings_bloc.dart';

@freezed
class SettingsState with _$SettingsState {
  const SettingsState._();
  const factory SettingsState({
    required bool isLoading,
    required int theme,
    required String locale,
  }) = _SettingsState;

  factory SettingsState.init() => const SettingsState(
        isLoading: false,
        theme: themeLight,
        locale: 'id',
      );

  SettingsState get unmodified => copyWith(
        isLoading: false,
      );
}
