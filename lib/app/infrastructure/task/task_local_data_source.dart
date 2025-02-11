import 'package:injectable/injectable.dart';
import 'package:task_management_app/app/infrastructure/storage/secure_storage.dart';

@injectable
class TaskLocalDataSource {
  final SecureStorage _storage;

  TaskLocalDataSource(this._storage);
}
