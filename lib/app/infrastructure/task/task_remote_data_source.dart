import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:injectable/injectable.dart';
import 'package:intl/intl.dart';
import 'package:task_management_app/app/domain/task/task_form/task_form.dart';
import 'package:task_management_app/app/infrastructure/api_helper/api_helper.dart';
import 'package:task_management_app/app/infrastructure/task/dto/task_dto.dart';
import 'package:uuid/uuid.dart';

@injectable
class TaskRemoteDataSource {
  final ApiHelper _helper;

  TaskRemoteDataSource(
    this._helper,
  );

  Future submitTask({
    required TaskForm form,
    required String userId,
  }) async {
    final uuid = const Uuid().v4();
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
}
