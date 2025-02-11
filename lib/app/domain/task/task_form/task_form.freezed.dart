// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'task_form.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$TaskForm {
  Option<String> get id => throw _privateConstructorUsedError;
  Option<String> get title => throw _privateConstructorUsedError;
  Option<String> get description => throw _privateConstructorUsedError;
  Option<DateTime> get dueDate => throw _privateConstructorUsedError;
  Option<TaskStatus> get status => throw _privateConstructorUsedError;
  Option<DateTime> get createdAt => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TaskFormCopyWith<TaskForm> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TaskFormCopyWith<$Res> {
  factory $TaskFormCopyWith(TaskForm value, $Res Function(TaskForm) then) =
      _$TaskFormCopyWithImpl<$Res, TaskForm>;
  @useResult
  $Res call(
      {Option<String> id,
      Option<String> title,
      Option<String> description,
      Option<DateTime> dueDate,
      Option<TaskStatus> status,
      Option<DateTime> createdAt});
}

/// @nodoc
class _$TaskFormCopyWithImpl<$Res, $Val extends TaskForm>
    implements $TaskFormCopyWith<$Res> {
  _$TaskFormCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? description = null,
    Object? dueDate = null,
    Object? status = null,
    Object? createdAt = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as Option<String>,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as Option<String>,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as Option<String>,
      dueDate: null == dueDate
          ? _value.dueDate
          : dueDate // ignore: cast_nullable_to_non_nullable
              as Option<DateTime>,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as Option<TaskStatus>,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as Option<DateTime>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TaskFormImplCopyWith<$Res>
    implements $TaskFormCopyWith<$Res> {
  factory _$$TaskFormImplCopyWith(
          _$TaskFormImpl value, $Res Function(_$TaskFormImpl) then) =
      __$$TaskFormImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Option<String> id,
      Option<String> title,
      Option<String> description,
      Option<DateTime> dueDate,
      Option<TaskStatus> status,
      Option<DateTime> createdAt});
}

/// @nodoc
class __$$TaskFormImplCopyWithImpl<$Res>
    extends _$TaskFormCopyWithImpl<$Res, _$TaskFormImpl>
    implements _$$TaskFormImplCopyWith<$Res> {
  __$$TaskFormImplCopyWithImpl(
      _$TaskFormImpl _value, $Res Function(_$TaskFormImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? description = null,
    Object? dueDate = null,
    Object? status = null,
    Object? createdAt = null,
  }) {
    return _then(_$TaskFormImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as Option<String>,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as Option<String>,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as Option<String>,
      dueDate: null == dueDate
          ? _value.dueDate
          : dueDate // ignore: cast_nullable_to_non_nullable
              as Option<DateTime>,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as Option<TaskStatus>,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as Option<DateTime>,
    ));
  }
}

/// @nodoc

class _$TaskFormImpl extends _TaskForm {
  const _$TaskFormImpl(
      {required this.id,
      required this.title,
      required this.description,
      required this.dueDate,
      required this.status,
      required this.createdAt})
      : super._();

  @override
  final Option<String> id;
  @override
  final Option<String> title;
  @override
  final Option<String> description;
  @override
  final Option<DateTime> dueDate;
  @override
  final Option<TaskStatus> status;
  @override
  final Option<DateTime> createdAt;

  @override
  String toString() {
    return 'TaskForm(id: $id, title: $title, description: $description, dueDate: $dueDate, status: $status, createdAt: $createdAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TaskFormImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.dueDate, dueDate) || other.dueDate == dueDate) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, id, title, description, dueDate, status, createdAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TaskFormImplCopyWith<_$TaskFormImpl> get copyWith =>
      __$$TaskFormImplCopyWithImpl<_$TaskFormImpl>(this, _$identity);
}

abstract class _TaskForm extends TaskForm {
  const factory _TaskForm(
      {required final Option<String> id,
      required final Option<String> title,
      required final Option<String> description,
      required final Option<DateTime> dueDate,
      required final Option<TaskStatus> status,
      required final Option<DateTime> createdAt}) = _$TaskFormImpl;
  const _TaskForm._() : super._();

  @override
  Option<String> get id;
  @override
  Option<String> get title;
  @override
  Option<String> get description;
  @override
  Option<DateTime> get dueDate;
  @override
  Option<TaskStatus> get status;
  @override
  Option<DateTime> get createdAt;
  @override
  @JsonKey(ignore: true)
  _$$TaskFormImplCopyWith<_$TaskFormImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
