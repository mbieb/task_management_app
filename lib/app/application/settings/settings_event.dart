part of 'settings_bloc.dart';

@freezed
class SettingsEvent with _$SettingsEvent {
  const factory SettingsEvent.started() = _Started;
  const factory SettingsEvent.changeTheme(int theme) = _ChangeTheme;
  const factory SettingsEvent.changeLocale(String locale) = _ChangeLocale;
}
