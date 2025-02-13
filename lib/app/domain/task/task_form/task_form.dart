import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:task_management_app/app/domain/dropdown_text/dropdown_text.dart';
import 'package:task_management_app/app/domain/failures/failures.dart';
import 'package:task_management_app/app/domain/task/task.dart';
import 'package:task_management_app/app/domain/utils/extensions.dart';
part 'task_form.freezed.dart';

@freezed
class TaskForm with _$TaskForm {
  const TaskForm._();
  const factory TaskForm({
    required Option<String> id,
    required Option<String> title,
    required Option<String> description,
    required Option<DateTime> dueDate,
    required Option<DropdownText> status,
    required Option<DateTime> createdAt,
  }) = _TaskForm;

  factory TaskForm.init() => TaskForm(
        id: none(),
        title: none(),
        description: none(),
        dueDate: none(),
        status: none(),
        createdAt: none(),
      );

  factory TaskForm.fromTask(TaskModel task) => TaskForm(
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

  Either<ValueFailure<String>, Unit> get failureOrTitle {
    return title.fold(
      () => left(const ValueFailure.empty(failedValue: '')),
      (title) => title.isNotEmpty
          ? right(unit)
          : left(const ValueFailure.empty(failedValue: '')),
    );
  }

  Either<ValueFailure<String>, Unit> get failureOrDueDate {
    return dueDate.fold(
      () => left(const ValueFailure.empty(failedValue: '')),
      (dueDate) => right(unit),
    );
  }

  Either<ValueFailure<String>, Unit> get failureOrStatus {
    return status.fold(
      () => left(const ValueFailure.empty(failedValue: '')),
      (status) => right(unit),
    );
  }

  Option<ValueFailure> get failureOption {
    return failureOrTitle
        .andThen(failureOrDueDate)
        .andThen(failureOrStatus)
        .fold((f) => some(f), (_) => none());
  }

  bool get isValid => failureOption.fold(() => true, (a) => false);
}
