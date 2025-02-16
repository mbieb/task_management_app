import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:task_management_app/app/domain/dropdown_text/dropdown_text.dart';
import 'package:task_management_app/app/domain/failures/failures.dart';
import 'package:task_management_app/app/domain/task/i_task_repository.dart';
import 'package:task_management_app/app/domain/task/task.dart';
import 'package:task_management_app/app/domain/task/task_form/task_form.dart';
import 'package:task_management_app/app/domain/task/task_success/task_success.dart';
import 'package:task_management_app/app/domain/utils/common_util.dart';
import 'package:task_management_app/app/domain/utils/extensions.dart';

part 'task_event.dart';
part 'task_state.dart';
part 'task_bloc.freezed.dart';

@injectable
class TaskBloc extends Bloc<TaskEvent, TaskState> {
  final ITaskRepository _repository;
  late TextEditingController titleController;
  late TextEditingController descController;
  TaskBloc(this._repository) : super(TaskState.init()) {
    titleController = TextEditingController()
      ..addListener(() {
        add(_TitleChanged(titleController.text));
      });

    descController = TextEditingController()
      ..addListener(() {
        add(_DescChanged(descController.text));
      });
    on<TaskEvent>(_onEvent);
  }

  FutureOr<void> _onEvent(
    TaskEvent event,
    Emitter<TaskState> emit,
  ) async {
    void filterTasks() {
      final allTasks = state.taskListOption.getOrElse(() => []);

      final filteredTasks = allTasks.where((task) {
        final matchesTitle = state.searchTitle.isEmpty ||
            (task.title ?? '')
                .toLowerCase()
                .contains(state.searchTitle.toLowerCase());

        final matchesStatus = state.searchStatus.isEmpty ||
            task.status?.name == state.searchStatus;

        return matchesTitle && matchesStatus;
      }).toList();

      emit(
        state.unmodified.copyWith(filteredtaskListOption: some(filteredTasks)),
      );
    }

    await event.map(
      started: (event) async {
        emit(state.loading);
        final failureOrTasks = await _repository.getTasks();

        failureOrTasks.fold((val) {}, (val) {
          emit(state.unmodified.copyWith(
            taskListOption: some(val),
            filteredtaskListOption: some(val),
          ));
        });
      },
      getData: (event) async {
        final task = event.item;
        if (task != null) {
          final updatedForm = state.form.copyWith(
            id: optionOf(task.id),
            title: optionOf(task.title),
            description: optionOf(task.description),
            status: optionOf(DropdownText(
              id: task.status?.name ?? '',
              text: task.status?.label ?? '',
            )),
            createdAt: optionOf(task.createdAt),
            dueDate: optionOf(task.dueDate),
          );
          emit(state.unmodified.copyWith(
            form: updatedForm,
            isEdit: true,
          ));
          titleController.text = task.title ?? '';
          descController.text = task.description ?? '';
        }
      },
      titleChanged: (event) {
        emit(
          state.unmodified.copyWith.form(title: some(event.title)),
        );
      },
      descChanged: (event) {
        emit(
          state.unmodified.copyWith.form(description: some(event.desc)),
        );
      },
      dueDateChanged: (event) {
        emit(
          state.unmodified.copyWith.form(dueDate: some(event.date)),
        );
      },
      statusChanged: (event) {
        emit(
          state.unmodified.copyWith.form(status: some(event.status)),
        );
      },
      searchTitleChanged: (event) {
        emit(
          state.unmodified.copyWith(searchTitle: event.title),
        );
        filterTasks();
      },
      searchStatusChanged: (event) {
        emit(
          state.unmodified.copyWith(searchStatus: event.status),
        );

        filterTasks();
      },
      submit: (event) async {
        emit(state.loading);
        Option<Either<AppFailure, TaskSuccess>> failureOrSuccessOption = none();
        if (state.form.failureOption.isNone()) {
          final response = await _repository.submit(state.form);
          failureOrSuccessOption = some(response);
        }
        emit(state.unmodified
            .copyWith(failureOrSuccessOption: failureOrSuccessOption));
      },
      update: (event) async {
        emit(state.loading);
        Option<Either<AppFailure, TaskSuccess>> failureOrSuccessOption = none();
        if (state.form.failureOption.isNone()) {
          final response = await _repository.editTask(state.form);
          failureOrSuccessOption = some(response);
        }
        emit(state.unmodified
            .copyWith(failureOrSuccessOption: failureOrSuccessOption));
      },
      delete: (event) async {
        emit(state.loading);
        Option<Either<AppFailure, TaskSuccess>> failureOrSuccessOption = none();
        final response = await _repository.deleteTask(event.id);
        failureOrSuccessOption = some(response);
        emit(state.unmodified
            .copyWith(failureOrSuccessOption: failureOrSuccessOption));
      },
    );
  }
}
