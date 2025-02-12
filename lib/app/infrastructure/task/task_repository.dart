import 'package:connectivity_plus/connectivity_plus.dart';
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
import 'package:task_management_app/app/presentation/constants/enums.dart';
import 'package:uuid/uuid.dart';

@LazySingleton(as: ITaskRepository)
class TaskRepository implements ITaskRepository {
  final TaskLocalDataSource _taskLocalDataSource;
  final TaskRemoteDataSource _taskRemoteDataSource;
  final AuthLocalDataSource _authLocalDataSource;
  final Connectivity _connectivity;
  TaskRepository(
    this._taskLocalDataSource,
    this._taskRemoteDataSource,
    this._authLocalDataSource,
    this._connectivity,
  );

  Future<bool> _isOnline() async {
    final connectivityResult = await _connectivity.checkConnectivity();
    return connectivityResult != ConnectivityResult.none;
  }

  @override
  Future<Either<AppFailure, TaskSuccess>> deleteTask(String id) async {
    try {
      if (await _isOnline()) {
        await _taskRemoteDataSource.deleteTask(id: id);
      }

      await _taskLocalDataSource.deleteTask(id);

      return right(const TaskSuccess.successDelete());
    } catch (e, stack) {
      return left(dynamicErrorToFailure(e, stack));
    }
  }

  @override
  Future<Either<AppFailure, TaskSuccess>> editTask(TaskForm form) async {
    try {
      final updatedTask = TaskModel(
        id: form.id.toNullable(),
        title: form.title.toNullable(),
        description: form.description.toNullable(),
        status: TaskStatus.values.firstWhere(
          (e) => e.name == form.status.toNullable()?.id,
          orElse: () => TaskStatus.pending,
        ),
        dueDate: form.dueDate.toNullable(),
        createdAt: form.createdAt.toNullable(),
      );

      if (await _isOnline()) {
        await _taskRemoteDataSource.updateTask(form: form);
      }

      await _taskLocalDataSource.updateTask(updatedTask);

      return right(const TaskSuccess.successEdit());
    } catch (e, stack) {
      return left(dynamicErrorToFailure(e, stack));
    }
  }

  @override
  Future<Either<AppFailure, List<TaskModel>>> getTasks() async {
    try {
      final userDto = await _authLocalDataSource.getUser();
      final userId = userDto.id ?? '';

      if (await _isOnline()) {
        var data = await _taskRemoteDataSource.getTasks(userId: userId);
        var taskList = data.map((e) => e.toDomain()).toList();

        await _taskLocalDataSource.saveTasks(taskList);

        return right(taskList);
      } else {
        var localTasks = await _taskLocalDataSource.getTasks();
        return right(localTasks);
      }
    } catch (e, stack) {
      return left(dynamicErrorToFailure(e, stack));
    }
  }

  @override
  Future<Either<AppFailure, TaskSuccess>> submit(TaskForm form) async {
    try {
      final userDto = await _authLocalDataSource.getUser();
      final userId = userDto.id ?? '';

      final task = TaskModel(
        id: const Uuid().v4(),
        title: form.title.toNullable(),
        description: form.description.toNullable(),
        status: TaskStatus.values.firstWhere(
          (e) => e.name == form.status.toNullable()?.id,
          orElse: () => TaskStatus.pending,
        ),
        dueDate: form.dueDate.toNullable(),
        createdAt: form.createdAt.toNullable(),
      );

      if (await _isOnline()) {
        await _taskRemoteDataSource.submitTask(form: form, userId: userId);
      }

      await _taskLocalDataSource.addTask(task);

      return right(const TaskSuccess.successAdd());
    } catch (e, stack) {
      return left(dynamicErrorToFailure(e, stack));
    }
  }
}
