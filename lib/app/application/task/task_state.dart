part of 'task_bloc.dart';

@freezed
class TaskState with _$TaskState {
  const TaskState._();
  const factory TaskState({
    required Option<List<Task>> taskListOption,
    required Option<Either<AppFailure, TaskSuccess>> failureOrSuccessOption,
    required bool isLoading,
    required TaskForm form,
  }) = _TaskState;

  factory TaskState.init() => TaskState(
        taskListOption: none(),
        failureOrSuccessOption: none(),
        isLoading: false,
        form: TaskForm.init(),
      );

  TaskState get unmodified => copyWith(
        isLoading: false,
        failureOrSuccessOption: none(),
      );

  TaskState get loading => unmodified.copyWith(isLoading: true);
  List<Task> get taskList => taskListOption.fold(
        () => [],
        (val) => val,
      );

  bool get enableButton => form.isValid;

  String? get dueDateFieldValueToString =>
      CommonUtils.dateFormat('dd-MM-yyyy', form.dueDate.toNullable());

  DateTime? get dueDateFieldValue => form.dueDate.toNullable();
}
