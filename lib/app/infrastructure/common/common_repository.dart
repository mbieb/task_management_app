import 'package:injectable/injectable.dart';
import 'package:task_management_app/app/domain/common/i_common_repository.dart';
import 'package:task_management_app/app/infrastructure/common/common_local_data_source.dart';

@LazySingleton(as: ICommonRepository)
class CommonRepository implements ICommonRepository {
  final CommonLocalDataSource _commonDataSource;
  const CommonRepository(this._commonDataSource);

  @override
  Future<String> getAppLocale() async {
    String locale = await _commonDataSource.getAppLocale();
    return locale;
  }

  @override
  Future<int> getAppTheme() async {
    int theme = await _commonDataSource.getAppTheme();
    return theme;
  }

  @override
  Future<void> changeAppLocale(String locale) async {
    await _commonDataSource.changeAppLocale(locale);
  }

  @override
  Future<void> changeAppTheme(int theme) async {
    await _commonDataSource.changeAppTheme(theme);
  }
}
