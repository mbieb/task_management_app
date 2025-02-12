abstract class ICommonRepository {
  Future<int> getAppTheme();
  Future<String> getAppLocale();
  Future<void> changeAppLocale(String locale);
  Future<void> changeAppTheme(int theme);
}
