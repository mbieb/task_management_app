import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:task_management_app/app/presentation/constants/enums.dart';
part 'task.freezed.dart';

@freezed
class Task with _$Task {
  const Task._();
  const factory Task({
    String? id,
    String? title,
    String? description,
    DateTime? dueDate,
    @Default(TaskStatus.pending) TaskStatus? status,
    DateTime? createdAt,
  }) = _Task;
}
