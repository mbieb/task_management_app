import 'package:dartz/dartz.dart';
import 'package:task_management_app/app/domain/failures/failures.dart';
import 'package:task_management_app/app/domain/task/task.dart';
import 'package:task_management_app/app/domain/task/task_form/task_form.dart';
import 'package:task_management_app/app/domain/task/task_success/task_success.dart';

abstract class ITaskRepository {
  Future<Either<AppFailure, List<TaskModel>>> getTasks();
  Future<Either<AppFailure, TaskSuccess>> submit(TaskForm form);
  Future<Either<AppFailure, TaskSuccess>> editTask(TaskForm form);
  Future<Either<AppFailure, TaskSuccess>> deleteTask(String id);
}
