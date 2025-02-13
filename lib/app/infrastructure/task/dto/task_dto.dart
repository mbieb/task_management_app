import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:task_management_app/app/domain/task/task.dart';
import 'package:task_management_app/app/domain/utils/common_util.dart';
import 'package:task_management_app/app/presentation/constants/enums.dart';
part 'task_dto.freezed.dart';
part 'task_dto.g.dart';

@freezed
class TaskDto with _$TaskDto {
  const TaskDto._();
  const factory TaskDto({
    String? id,
    String? title,
    String? description,
    String? dueDate,
    DateTime? createdAt,
    String? status,
    String? userId,
  }) = _TaskDto;

  factory TaskDto.fromJson(Map<String, dynamic> json) =>
      _$TaskDtoFromJson(json);

  TaskModel toDomain() => TaskModel(
        id: id,
        title: title,
        description: description,
        status: _mapStringToTaskStatus(status),
        dueDate: CommonUtils.stringToDateFormated(dueDate),
        createdAt: createdAt,
        userId: userId,
      );

  TaskStatus _mapStringToTaskStatus(String? status) {
    switch (status?.toLowerCase()) {
      case 'pending':
        return TaskStatus.pending;
      case 'inprogress':
        return TaskStatus.inProgress;
      case 'completed':
        return TaskStatus.completed;
      default:
        return TaskStatus.pending;
    }
  }
}
