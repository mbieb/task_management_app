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

  Future<void> addTask(TaskModel task) async {
    List<TaskModel> tasks = await getTasks();
    tasks.add(task);
    await saveTasks(tasks);
  }

  Future<void> updateTask(TaskModel updatedTask) async {
    List<TaskModel> tasks = await getTasks();
    tasks = tasks.map((task) {
      return task.id == updatedTask.id ? updatedTask : task;
    }).toList();
    await saveTasks(tasks);
  }

  Future<void> deleteTask(String id) async {
    List<TaskModel> tasks = await getTasks();
    tasks.removeWhere((task) => task.id == id);
    await saveTasks(tasks);
  }
}
