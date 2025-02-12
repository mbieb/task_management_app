part of 'task_bloc.dart';

@freezed
class TaskState with _$TaskState {
  const TaskState._();
  const factory TaskState({
    required Option<List<TaskModel>> taskListOption,
    required Option<List<TaskModel>> filteredtaskListOption,
    required Option<Either<AppFailure, TaskSuccess>> failureOrSuccessOption,
    required bool isLoading,
    required TaskForm form,
    required String searchTitle,
    required String searchStatus,
    required bool isEdit,
  }) = _TaskState;

  factory TaskState.init() => TaskState(
        taskListOption: none(),
        filteredtaskListOption: none(),
        failureOrSuccessOption: none(),
        isLoading: false,
        form: TaskForm.init(),
        searchTitle: '',
        searchStatus: '',
        isEdit: false,
      );

  TaskState get unmodified => copyWith(
        isLoading: false,
        failureOrSuccessOption: none(),
      );

  TaskState get loading => unmodified.copyWith(isLoading: true);
  List<TaskModel> get taskList => taskListOption.fold(
        () => [],
        (val) => val,
      );

  List<TaskModel> get filteredTaskList => filteredtaskListOption.fold(
        () => [],
        (val) => val,
      );

  bool get enableButton => form.isValid;

  String? get dueDateFieldValueToString =>
      CommonUtils.dateFormat('dd-MM-yyyy', form.dueDate.toNullable());

  DateTime? get dueDateFieldValue => form.dueDate.toNullable();

  DropdownText? get statusFormValue => form.status.fold(
        () => null,
        (val) => val,
      );
}
