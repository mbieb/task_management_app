import 'dart:convert';
import 'package:injectable/injectable.dart';
import 'package:task_management_app/app/domain/task/task.dart';
import 'package:task_management_app/app/infrastructure/storage/secure_storage.dart';
import 'package:task_management_app/app/infrastructure/storage/storage_key.dart';

@injectable
class TaskLocalDataSource {
  final SecureStorage _storage;

  TaskLocalDataSource(this._storage);

  Future<List<TaskModel>> getTasks() async {
    var data = await _storage.get(StorageKeyConstant.tasks);
    if (data is String && data.isNotEmpty) {
      List<dynamic> decodedJson = jsonDecode(data);
      return decodedJson.map((json) => TaskModel.fromJson(json)).toList();
    }
    return [];
  }

  Future<void> saveTasks(List<TaskModel> tasks) async {
    await _storage.insert(
      StorageKeyConstant.tasks,
      jsonEncode(tasks.map((task) => task.toJson()).toList()),
    );
  }

  Future<void> addTask(TaskModel task, bool isOnline) async {
    List<TaskModel> tasks = await getTasks();
    tasks.add(task);
    await saveTasks(tasks);

    if (!isOnline) {
      var unsyncedTasks = await getUnsyncedTasks();
      unsyncedTasks.add(task);
      await _storage.insert(
        StorageKeyConstant.unsyncedTasks,
        jsonEncode(unsyncedTasks.map((task) => task.toJson()).toList()),
      );
    }
  }

  Future<void> updateTask(TaskModel task, bool isOnline) async {
    List<TaskModel> tasks = await getTasks();
    int index = tasks.indexWhere((t) => t.id == task.id);
    if (index != -1) {
      tasks[index] = task;
      await saveTasks(tasks);

      if (!isOnline) {
        var unsyncedUpdates = await getUnsyncedUpdates();
        unsyncedUpdates.removeWhere((t) => t.id == task.id);
        unsyncedUpdates.add(task);
        await _storage.insert(
          StorageKeyConstant.unsyncedUpdates,
          jsonEncode(unsyncedUpdates.map((task) => task.toJson()).toList()),
        );
      }
    }
  }

  Future<void> deleteTask(String id, bool isOnline) async {
    List<TaskModel> tasks = await getTasks();
    tasks.removeWhere((t) => t.id == id);
    await saveTasks(tasks);

    if (!isOnline) {
      var unsyncedDeletes = await getUnsyncedDeletes();
      if (!unsyncedDeletes.contains(id)) {
        unsyncedDeletes.add(id);
        await _storage.insert(
          StorageKeyConstant.unsyncedDeletes,
          jsonEncode(unsyncedDeletes),
        );
      }
    }
  }

  Future<List<TaskModel>> getUnsyncedTasks() async {
    var data = await _storage.get(StorageKeyConstant.unsyncedTasks);
    if (data is String && data.isNotEmpty) {
      List<dynamic> decodedJson = jsonDecode(data);
      return decodedJson.map((json) => TaskModel.fromJson(json)).toList();
    }
    return [];
  }

  Future<List<TaskModel>> getUnsyncedUpdates() async {
    var data = await _storage.get(StorageKeyConstant.unsyncedUpdates);
    if (data is String && data.isNotEmpty) {
      List<dynamic> decodedJson = jsonDecode(data);
      return decodedJson.map((json) => TaskModel.fromJson(json)).toList();
    }
    return [];
  }

  Future<List<String>> getUnsyncedDeletes() async {
    var data = await _storage.get(StorageKeyConstant.unsyncedDeletes);
    if (data is String && data.isNotEmpty) {
      return List<String>.from(jsonDecode(data));
    }
    return [];
  }

  Future<void> clearUnsyncedData() async {
    await _storage.remove(StorageKeyConstant.unsyncedTasks);
    await _storage.remove(StorageKeyConstant.unsyncedUpdates);
    await _storage.remove(StorageKeyConstant.unsyncedDeletes);
  }
}
