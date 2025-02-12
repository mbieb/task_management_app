import 'package:injectable/injectable.dart';
import 'package:task_management_app/app/infrastructure/storage/secure_storage.dart';
import 'package:task_management_app/app/infrastructure/storage/storage_key.dart';

@injectable
class CommonLocalDataSource {
  final SecureStorage _storage;
  const CommonLocalDataSource(this._storage);

  Future<String> getAppLocale() async {
    String? locale = await _storage.get<String?>(StorageKeyConstant.appLocale);
    return locale ?? 'id';
  }

  Future<int> getAppTheme() async {
    int? theme = await _storage.get<int?>(StorageKeyConstant.appTheme);
    return theme ?? 1;
  }

  Future<void> changeAppLocale(String locale) async {
    await _storage.insert(StorageKeyConstant.appLocale, locale);
  }

  Future<void> changeAppTheme(int theme) async {
    await _storage.insert(StorageKeyConstant.appTheme, theme);
  }
}
