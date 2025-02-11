import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:task_management_app/app/domain/failures/failures.dart';
import 'package:task_management_app/app/domain/task/i_task_repository.dart';
import 'package:task_management_app/app/domain/task/task.dart' as taskModel;
import 'package:task_management_app/app/domain/task/task_form/task_form.dart';
import 'package:task_management_app/app/domain/task/task_success/task_success.dart';
import 'package:task_management_app/app/infrastructure/task/task_local_data_source.dart';
import 'package:task_management_app/app/infrastructure/task/task_remote_data_source.dart';

@LazySingleton(as: ITaskRepository)
class TaskRepository implements ITaskRepository {
  final TaskLocalDataSource _taskLocalDataSource;
  final TaskRemoteDataSource _taskRemoteDataSource;

  TaskRepository(
    this._taskLocalDataSource,
    this._taskRemoteDataSource,
  );

  @override
  Future<Either<AppFailure, TaskSuccess>> deleteTask(String id) {
    // TODO: implement deleteTask
    throw UnimplementedError();
  }

  @override
  Future<Either<AppFailure, TaskSuccess>> editTask(TaskForm form) {
    // TODO: implement editTask
    throw UnimplementedError();
  }

  @override
  Future<Either<AppFailure, List<taskModel.Task>>> getTasks() {
    // TODO: implement getTasks
    throw UnimplementedError();
  }

  @override
  Future<Either<AppFailure, TaskSuccess>> submit(TaskForm form) {
    // TODO: implement submit
    throw UnimplementedError();
  }
}
