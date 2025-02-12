part of 'task_bloc.dart';

@freezed
class TaskEvent with _$TaskEvent {
  const factory TaskEvent.started() = _Started;
  const factory TaskEvent.titleChanged(String title) = _TitleChanged;
  const factory TaskEvent.descChanged(String desc) = _DescChanged;
  const factory TaskEvent.dueDateChanged(DateTime date) = _DueDateChanged;
  const factory TaskEvent.statusChanged(DropdownText status) = _StatusChanged;
  const factory TaskEvent.searchStatusChanged(String status) =
      _SearchStatusChanged;
  const factory TaskEvent.searchTitleChanged(String title) =
      _SearchTitleChanged;
  const factory TaskEvent.submit() = _Submit;
  const factory TaskEvent.update() = _Update;
  const factory TaskEvent.delete(String id) = _Delete;
}
