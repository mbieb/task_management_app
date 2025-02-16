// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:connectivity_plus/connectivity_plus.dart' as _i895;
import 'package:dio/dio.dart' as _i361;
import 'package:get_it/get_it.dart' as _i174;
import 'package:image_picker/image_picker.dart' as _i183;
import 'package:injectable/injectable.dart' as _i526;
import 'package:logger/logger.dart' as _i974;

import '../app/application/auth/auth_bloc.dart' as _i51;
import '../app/application/initial/initial_bloc.dart' as _i871;
import '../app/application/register/register_bloc.dart' as _i1033;
import '../app/application/settings/settings_bloc.dart' as _i739;
import '../app/application/sign_in/sign_in_bloc.dart' as _i779;
import '../app/application/task/task_bloc.dart' as _i689;
import '../app/domain/auth/i_auth_repository.dart' as _i971;
import '../app/domain/common/i_common_repository.dart' as _i786;
import '../app/domain/task/i_task_repository.dart' as _i270;
import '../app/infrastructure/api_helper/api_helper.dart' as _i426;
import '../app/infrastructure/auth/auth_local_data_source.dart' as _i266;
import '../app/infrastructure/auth/auth_remote_data_source.dart' as _i607;
import '../app/infrastructure/auth/auth_repository.dart' as _i550;
import '../app/infrastructure/common/common_local_data_source.dart' as _i850;
import '../app/infrastructure/common/common_repository.dart' as _i543;
import '../app/infrastructure/messaging_datasource/messaging_datasource.dart'
    as _i480;
import '../app/infrastructure/register_module/register_module.dart' as _i131;
import '../app/infrastructure/storage/secure_storage.dart' as _i977;
import '../app/infrastructure/task/task_local_data_source.dart' as _i649;
import '../app/infrastructure/task/task_remote_data_source.dart' as _i40;
import '../app/infrastructure/task/task_repository.dart' as _i130;

// initializes the registration of main-scope dependencies inside of GetIt
_i174.GetIt init(
  _i174.GetIt getIt, {
  String? environment,
  _i526.EnvironmentFilter? environmentFilter,
}) {
  final gh = _i526.GetItHelper(
    getIt,
    environment,
    environmentFilter,
  );
  final registerModule = _$RegisterModule();
  gh.factory<_i40.TaskRemoteDataSource>(() => _i40.TaskRemoteDataSource());
  gh.singleton<_i977.SecureStorage>(() => _i977.SecureStorage());
  gh.singleton<_i480.MessasgingDataSource>(() => _i480.MessasgingDataSource());
  gh.lazySingleton<_i183.ImagePicker>(() => registerModule.imagePicker);
  gh.lazySingleton<_i895.Connectivity>(() => registerModule.connectivity);
  gh.lazySingleton<_i974.Logger>(() => registerModule.logger);
  gh.lazySingleton<_i361.Dio>(() => registerModule.dio());
  gh.singleton<_i426.ApiHelper>(() => _i426.ApiHelper(
        gh<_i361.Dio>(),
        gh<_i895.Connectivity>(),
      ));
  gh.factory<_i266.AuthLocalDataSource>(
      () => _i266.AuthLocalDataSource(gh<_i977.SecureStorage>()));
  gh.factory<_i850.CommonLocalDataSource>(
      () => _i850.CommonLocalDataSource(gh<_i977.SecureStorage>()));
  gh.factory<_i649.TaskLocalDataSource>(
      () => _i649.TaskLocalDataSource(gh<_i977.SecureStorage>()));
  gh.lazySingleton<_i270.ITaskRepository>(() => _i130.TaskRepository(
        gh<_i649.TaskLocalDataSource>(),
        gh<_i40.TaskRemoteDataSource>(),
        gh<_i266.AuthLocalDataSource>(),
        gh<_i895.Connectivity>(),
      ));
  gh.factory<_i689.TaskBloc>(() => _i689.TaskBloc(gh<_i270.ITaskRepository>()));
  gh.lazySingleton<_i786.ICommonRepository>(
      () => _i543.CommonRepository(gh<_i850.CommonLocalDataSource>()));
  gh.factory<_i739.SettingsBloc>(
      () => _i739.SettingsBloc(gh<_i786.ICommonRepository>()));
  gh.factory<_i607.AuthRemoteDataSource>(() => _i607.AuthRemoteDataSource(
        gh<_i426.ApiHelper>(),
        gh<_i183.ImagePicker>(),
      ));
  gh.lazySingleton<_i971.IAuthRepository>(() => _i550.AuthRepository(
        gh<_i266.AuthLocalDataSource>(),
        gh<_i607.AuthRemoteDataSource>(),
      ));
  gh.factory<_i51.AuthBloc>(() => _i51.AuthBloc(gh<_i971.IAuthRepository>()));
  gh.factory<_i871.InitialBloc>(
      () => _i871.InitialBloc(gh<_i971.IAuthRepository>()));
  gh.factory<_i1033.RegisterBloc>(
      () => _i1033.RegisterBloc(gh<_i971.IAuthRepository>()));
  gh.factory<_i779.SignInBloc>(
      () => _i779.SignInBloc(gh<_i971.IAuthRepository>()));
  return getIt;
}

class _$RegisterModule extends _i131.RegisterModule {}
