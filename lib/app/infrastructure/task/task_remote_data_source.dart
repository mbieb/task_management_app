import 'package:injectable/injectable.dart';
import 'package:task_management_app/app/infrastructure/api_helper/api_helper.dart';

@injectable
class TaskRemoteDataSource {
  final ApiHelper _helper;

  TaskRemoteDataSource(this._helper);
}
