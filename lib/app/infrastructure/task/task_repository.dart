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
      bool isDeviceOnline = await _isOnline();
      if (isDeviceOnline) {
        await _taskRemoteDataSource.deleteTask(id: id);
      }

      await _taskLocalDataSource.deleteTask(id, isDeviceOnline);

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

      bool isDeviceOnline = await _isOnline();

      if (isDeviceOnline) {
        await _taskRemoteDataSource.updateTask(form: form);
      }

      await _taskLocalDataSource.updateTask(updatedTask, isDeviceOnline);

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
      bool isDeviceOnline = await _isOnline();
      if (isDeviceOnline) {
        await _syncUnsyncedData(userId);

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
      final uuId = const Uuid().v4();
      final task = TaskModel(
        id: uuId,
        title: form.title.toNullable(),
        description: form.description.toNullable(),
        status: TaskStatus.values.firstWhere(
          (e) => e.name == form.status.toNullable()?.id,
          orElse: () => TaskStatus.pending,
        ),
        dueDate: form.dueDate.toNullable(),
        createdAt: form.createdAt.toNullable(),
      );

      bool isDeviceOnline = await _isOnline();

      if (isDeviceOnline) {
        await _taskRemoteDataSource.submitTask(
            form: form.copyWith(id: some(uuId)), userId: userId);
      }

      await _taskLocalDataSource.addTask(task, isDeviceOnline);

      return right(const TaskSuccess.successAdd());
    } catch (e, stack) {
      return left(dynamicErrorToFailure(e, stack));
    }
  }

  Future<void> _syncUnsyncedData(String userId) async {
    var unsyncedTasks = await _taskLocalDataSource.getUnsyncedTasks();
    var unsyncedUpdates = await _taskLocalDataSource.getUnsyncedUpdates();
    var unsyncedDeletes = await _taskLocalDataSource.getUnsyncedDeletes();

    for (var task in unsyncedTasks) {
      await _taskRemoteDataSource.submitTask(
          form: TaskForm.fromTask(task), userId: userId);
    }

    for (var task in unsyncedUpdates) {
      await _taskRemoteDataSource.updateTask(form: TaskForm.fromTask(task));
    }

    for (var id in unsyncedDeletes) {
      await _taskRemoteDataSource.deleteTask(id: id);
    }

    await _taskLocalDataSource.clearUnsyncedData();
  }
}
