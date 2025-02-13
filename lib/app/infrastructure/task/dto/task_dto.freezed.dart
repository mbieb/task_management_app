// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'task_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TaskDto _$TaskDtoFromJson(Map<String, dynamic> json) {
  return _TaskDto.fromJson(json);
}

/// @nodoc
mixin _$TaskDto {
  String? get id => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  DateTime? get dueDate => throw _privateConstructorUsedError;
  DateTime? get createdAt => throw _privateConstructorUsedError;
  String? get status => throw _privateConstructorUsedError;
  String? get userId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TaskDtoCopyWith<TaskDto> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TaskDtoCopyWith<$Res> {
  factory $TaskDtoCopyWith(TaskDto value, $Res Function(TaskDto) then) =
      _$TaskDtoCopyWithImpl<$Res, TaskDto>;
  @useResult
  $Res call(
      {String? id,
      String? title,
      String? description,
      DateTime? dueDate,
      DateTime? createdAt,
      String? status,
      String? userId});
}

/// @nodoc
class _$TaskDtoCopyWithImpl<$Res, $Val extends TaskDto>
    implements $TaskDtoCopyWith<$Res> {
  _$TaskDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? description = freezed,
    Object? dueDate = freezed,
    Object? createdAt = freezed,
    Object? status = freezed,
    Object? userId = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      dueDate: freezed == dueDate
          ? _value.dueDate
          : dueDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TaskDtoImplCopyWith<$Res> implements $TaskDtoCopyWith<$Res> {
  factory _$$TaskDtoImplCopyWith(
          _$TaskDtoImpl value, $Res Function(_$TaskDtoImpl) then) =
      __$$TaskDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      String? title,
      String? description,
      DateTime? dueDate,
      DateTime? createdAt,
      String? status,
      String? userId});
}

/// @nodoc
class __$$TaskDtoImplCopyWithImpl<$Res>
    extends _$TaskDtoCopyWithImpl<$Res, _$TaskDtoImpl>
    implements _$$TaskDtoImplCopyWith<$Res> {
  __$$TaskDtoImplCopyWithImpl(
      _$TaskDtoImpl _value, $Res Function(_$TaskDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? description = freezed,
    Object? dueDate = freezed,
    Object? createdAt = freezed,
    Object? status = freezed,
    Object? userId = freezed,
  }) {
    return _then(_$TaskDtoImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      dueDate: freezed == dueDate
          ? _value.dueDate
          : dueDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TaskDtoImpl extends _TaskDto {
  const _$TaskDtoImpl(
      {this.id,
      this.title,
      this.description,
      this.dueDate,
      this.createdAt,
      this.status,
      this.userId})
      : super._();

  factory _$TaskDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$TaskDtoImplFromJson(json);

  @override
  final String? id;
  @override
  final String? title;
  @override
  final String? description;
  @override
  final DateTime? dueDate;
  @override
  final DateTime? createdAt;
  @override
  final String? status;
  @override
  final String? userId;

  @override
  String toString() {
    return 'TaskDto(id: $id, title: $title, description: $description, dueDate: $dueDate, createdAt: $createdAt, status: $status, userId: $userId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TaskDtoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.dueDate, dueDate) || other.dueDate == dueDate) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.userId, userId) || other.userId == userId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, title, description, dueDate, createdAt, status, userId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TaskDtoImplCopyWith<_$TaskDtoImpl> get copyWith =>
      __$$TaskDtoImplCopyWithImpl<_$TaskDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TaskDtoImplToJson(
      this,
    );
  }
}

abstract class _TaskDto extends TaskDto {
  const factory _TaskDto(
      {final String? id,
      final String? title,
      final String? description,
      final DateTime? dueDate,
      final DateTime? createdAt,
      final String? status,
      final String? userId}) = _$TaskDtoImpl;
  const _TaskDto._() : super._();

  factory _TaskDto.fromJson(Map<String, dynamic> json) = _$TaskDtoImpl.fromJson;

  @override
  String? get id;
  @override
  String? get title;
  @override
  String? get description;
  @override
  DateTime? get dueDate;
  @override
  DateTime? get createdAt;
  @override
  String? get status;
  @override
  String? get userId;
  @override
  @JsonKey(ignore: true)
  _$$TaskDtoImplCopyWith<_$TaskDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
