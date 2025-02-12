import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:task_management_app/app/domain/common/i_common_repository.dart';
import 'package:task_management_app/app/presentation/constants/theme.dart';

part 'settings_event.dart';
part 'settings_state.dart';
part 'settings_bloc.freezed.dart';

@injectable
class SettingsBloc extends Bloc<SettingsEvent, SettingsState> {
  final ICommonRepository _commonRepository;
  SettingsBloc(this._commonRepository) : super(SettingsState.init()) {
    on<SettingsEvent>(_onEvent);
  }

  FutureOr<void> _onEvent(
    SettingsEvent event,
    Emitter<SettingsState> emit,
  ) async {
    await event.map(
      started: (event) async {
        String locale = await _commonRepository.getAppLocale();
        int theme = await _commonRepository.getAppTheme();

        emit(
          state.unmodified.copyWith(
            locale: locale,
            theme: theme,
          ),
        );
      },
      changeTheme: (event) async {
        await _commonRepository.changeAppTheme(event.theme);
        emit(
          state.unmodified.copyWith(
            theme: event.theme,
          ),
        );
      },
      changeLocale: (event) async {
        await _commonRepository.changeAppLocale(event.locale);
        emit(
          state.unmodified.copyWith(
            locale: event.locale,
          ),
        );
      },
    );
  }
}
