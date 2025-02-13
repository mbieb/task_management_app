import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:task_management_app/app/presentation/constants/enums.dart';
part 'task.freezed.dart';
part 'task.g.dart';

@freezed
class TaskModel with _$TaskModel {
  const TaskModel._();
  const factory TaskModel({
    String? id,
    String? title,
    String? description,
    DateTime? dueDate,
    @Default(TaskStatus.pending) TaskStatus? status,
    DateTime? createdAt,
    String? userId,
  }) = _TaskModel;

  factory TaskModel.fromJson(Map<String, dynamic> json) =>
      _$TaskModelFromJson(json);
}
