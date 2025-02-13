import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:injectable/injectable.dart';
import 'package:intl/intl.dart';
import 'package:task_management_app/app/domain/task/task_form/task_form.dart';
import 'package:task_management_app/app/infrastructure/task/dto/task_dto.dart';

@injectable
class TaskRemoteDataSource {
  TaskRemoteDataSource();

  Future submitTask({
    required TaskForm form,
    required String userId,
  }) async {
    final uuid = form.id.toNullable();
    final title = form.title.toNullable() ?? '';
    final desc = form.description.toNullable() ?? '';
    final dueDate = DateFormat('dd-MM-yyyy').format(form.dueDate.toNullable()!);
    final status = form.status.toNullable()!.id;
    await FirebaseFirestore.instance.collection('tasks').doc(uuid).set(
      {
        'userId': userId,
        'title': title,
        'description': desc,
        'dueDate': dueDate,
        'status': status,
        'createdAt': Timestamp.fromDate(DateTime.now()),
      },
    );
  }

  Future<List<TaskDto>> getTasks({
    required String userId,
  }) async {
    final taskCollection = FirebaseFirestore.instance.collection('tasks');

    var query = taskCollection.where('userId', isEqualTo: userId).orderBy(
          'createdAt',
          descending: true,
        );

    final taskSnapshot = await query.get();

    var tasks = taskSnapshot.docs.map((doc) {
      var data = doc.data();

      return TaskDto.fromJson({
        'id': doc.id,
        'title': data['title'],
        'description': data['description'],
        'status': data['status'],
        'dueDate': data['dueDate'],
        'createdAt':
            (data['createdAt'] as Timestamp).toDate().toIso8601String(),
        'userId': data['userId']
      });
    }).toList();

    return tasks;
  }

  Future deleteTask({
    required String id,
  }) async {
    final collection = FirebaseFirestore.instance.collection('tasks').doc(id);

    await collection.delete();
  }

  Future updateTask({
    required TaskForm form,
  }) async {
    final id = form.id.toNullable() ?? '';
    final title = form.title.toNullable() ?? '';
    final desc = form.description.toNullable() ?? '';
    final dueDate = DateFormat('dd-MM-yyyy').format(form.dueDate.toNullable()!);
    final status = form.status.toNullable()!.id;

    await FirebaseFirestore.instance.collection('tasks').doc(id).update(
      {
        'title': title,
        'description': desc,
        'dueDate': dueDate,
        'status': status,
      },
    );
  }
}
