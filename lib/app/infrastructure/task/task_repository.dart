import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:task_management_app/app/domain/failures/failures.dart';
import 'package:task_management_app/app/domain/task/i_task_repository.dart';
import 'package:task_management_app/app/domain/task/task.dart';
import 'package:task_management_app/app/domain/task/task_form/task_form.dart';
import 'package:task_management_app/app/domain/task/task_success/task_success.dart';
import 'package:task_management_app/app/infrastructure/auth/auth_local_data_source.dart';
import 'package:task_management_app/app/infrastructure/exception/exception.dart';
import 'package:task_management_app/app/infrastructure/task/task_local_data_source.dart';
import 'package:task_management_app/app/infrastructure/task/task_remote_data_source.dart';

@LazySingleton(as: ITaskRepository)
class TaskRepository implements ITaskRepository {
  final TaskLocalDataSource _taskLocalDataSource;
  final TaskRemoteDataSource _taskRemoteDataSource;
  final AuthLocalDataSource _authLocalDataSource;
  TaskRepository(
    this._taskLocalDataSource,
    this._taskRemoteDataSource,
    this._authLocalDataSource,
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
  Future<Either<AppFailure, List<TaskModel>>> getTasks() async {
    try {
      final userDto = await _authLocalDataSource.getUser();

      var data = await _taskRemoteDataSource.getTasks(userId: userDto.id ?? '');

      return right(data.map((e) => e.toDomain()).toList());
    } catch (e, stack) {
      return left(dynamicErrorToFailure(e, stack));
    }
  }

  @override
  Future<Either<AppFailure, TaskSuccess>> submit(TaskForm form) async {
    try {
      final userDto = await _authLocalDataSource.getUser();

      await _taskRemoteDataSource.submitTask(
          form: form, userId: userDto.id ?? '');

      return right(const TaskSuccess.successAdd());
    } catch (e, stack) {
      return left(dynamicErrorToFailure(e, stack));
    }
  }
}
