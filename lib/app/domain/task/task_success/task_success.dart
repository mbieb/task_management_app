import 'package:freezed_annotation/freezed_annotation.dart';
part 'task_success.freezed.dart';

@freezed
class TaskSuccess with _$TaskSuccess {
  const factory TaskSuccess.success() = _Success;
  const factory TaskSuccess.successAdd() = _SuccessAdd;
  const factory TaskSuccess.successEdit() = _SuccessEdit;
  const factory TaskSuccess.successDelete() = _SuccessDelete;
}
