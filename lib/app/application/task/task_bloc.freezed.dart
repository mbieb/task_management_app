// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'task_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$TaskEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String title) titleChanged,
    required TResult Function(String desc) descChanged,
    required TResult Function(DateTime date) dueDateChanged,
    required TResult Function(DropdownText status) statusChanged,
    required TResult Function() submit,
    required TResult Function() update,
    required TResult Function(String id) delete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String title)? titleChanged,
    TResult? Function(String desc)? descChanged,
    TResult? Function(DateTime date)? dueDateChanged,
    TResult? Function(DropdownText status)? statusChanged,
    TResult? Function()? submit,
    TResult? Function()? update,
    TResult? Function(String id)? delete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String title)? titleChanged,
    TResult Function(String desc)? descChanged,
    TResult Function(DateTime date)? dueDateChanged,
    TResult Function(DropdownText status)? statusChanged,
    TResult Function()? submit,
    TResult Function()? update,
    TResult Function(String id)? delete,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_TitleChanged value) titleChanged,
    required TResult Function(_DescChanged value) descChanged,
    required TResult Function(_DueDateChanged value) dueDateChanged,
    required TResult Function(_StatusChanged value) statusChanged,
    required TResult Function(_Submit value) submit,
    required TResult Function(_Update value) update,
    required TResult Function(_Delete value) delete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_TitleChanged value)? titleChanged,
    TResult? Function(_DescChanged value)? descChanged,
    TResult? Function(_DueDateChanged value)? dueDateChanged,
    TResult? Function(_StatusChanged value)? statusChanged,
    TResult? Function(_Submit value)? submit,
    TResult? Function(_Update value)? update,
    TResult? Function(_Delete value)? delete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_TitleChanged value)? titleChanged,
    TResult Function(_DescChanged value)? descChanged,
    TResult Function(_DueDateChanged value)? dueDateChanged,
    TResult Function(_StatusChanged value)? statusChanged,
    TResult Function(_Submit value)? submit,
    TResult Function(_Update value)? update,
    TResult Function(_Delete value)? delete,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TaskEventCopyWith<$Res> {
  factory $TaskEventCopyWith(TaskEvent value, $Res Function(TaskEvent) then) =
      _$TaskEventCopyWithImpl<$Res, TaskEvent>;
}

/// @nodoc
class _$TaskEventCopyWithImpl<$Res, $Val extends TaskEvent>
    implements $TaskEventCopyWith<$Res> {
  _$TaskEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$StartedImplCopyWith<$Res> {
  factory _$$StartedImplCopyWith(
          _$StartedImpl value, $Res Function(_$StartedImpl) then) =
      __$$StartedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StartedImplCopyWithImpl<$Res>
    extends _$TaskEventCopyWithImpl<$Res, _$StartedImpl>
    implements _$$StartedImplCopyWith<$Res> {
  __$$StartedImplCopyWithImpl(
      _$StartedImpl _value, $Res Function(_$StartedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$StartedImpl implements _Started {
  const _$StartedImpl();

  @override
  String toString() {
    return 'TaskEvent.started()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$StartedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String title) titleChanged,
    required TResult Function(String desc) descChanged,
    required TResult Function(DateTime date) dueDateChanged,
    required TResult Function(DropdownText status) statusChanged,
    required TResult Function() submit,
    required TResult Function() update,
    required TResult Function(String id) delete,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String title)? titleChanged,
    TResult? Function(String desc)? descChanged,
    TResult? Function(DateTime date)? dueDateChanged,
    TResult? Function(DropdownText status)? statusChanged,
    TResult? Function()? submit,
    TResult? Function()? update,
    TResult? Function(String id)? delete,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String title)? titleChanged,
    TResult Function(String desc)? descChanged,
    TResult Function(DateTime date)? dueDateChanged,
    TResult Function(DropdownText status)? statusChanged,
    TResult Function()? submit,
    TResult Function()? update,
    TResult Function(String id)? delete,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_TitleChanged value) titleChanged,
    required TResult Function(_DescChanged value) descChanged,
    required TResult Function(_DueDateChanged value) dueDateChanged,
    required TResult Function(_StatusChanged value) statusChanged,
    required TResult Function(_Submit value) submit,
    required TResult Function(_Update value) update,
    required TResult Function(_Delete value) delete,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_TitleChanged value)? titleChanged,
    TResult? Function(_DescChanged value)? descChanged,
    TResult? Function(_DueDateChanged value)? dueDateChanged,
    TResult? Function(_StatusChanged value)? statusChanged,
    TResult? Function(_Submit value)? submit,
    TResult? Function(_Update value)? update,
    TResult? Function(_Delete value)? delete,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_TitleChanged value)? titleChanged,
    TResult Function(_DescChanged value)? descChanged,
    TResult Function(_DueDateChanged value)? dueDateChanged,
    TResult Function(_StatusChanged value)? statusChanged,
    TResult Function(_Submit value)? submit,
    TResult Function(_Update value)? update,
    TResult Function(_Delete value)? delete,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements TaskEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$TitleChangedImplCopyWith<$Res> {
  factory _$$TitleChangedImplCopyWith(
          _$TitleChangedImpl value, $Res Function(_$TitleChangedImpl) then) =
      __$$TitleChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String title});
}

/// @nodoc
class __$$TitleChangedImplCopyWithImpl<$Res>
    extends _$TaskEventCopyWithImpl<$Res, _$TitleChangedImpl>
    implements _$$TitleChangedImplCopyWith<$Res> {
  __$$TitleChangedImplCopyWithImpl(
      _$TitleChangedImpl _value, $Res Function(_$TitleChangedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
  }) {
    return _then(_$TitleChangedImpl(
      null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$TitleChangedImpl implements _TitleChanged {
  const _$TitleChangedImpl(this.title);

  @override
  final String title;

  @override
  String toString() {
    return 'TaskEvent.titleChanged(title: $title)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TitleChangedImpl &&
            (identical(other.title, title) || other.title == title));
  }

  @override
  int get hashCode => Object.hash(runtimeType, title);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TitleChangedImplCopyWith<_$TitleChangedImpl> get copyWith =>
      __$$TitleChangedImplCopyWithImpl<_$TitleChangedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String title) titleChanged,
    required TResult Function(String desc) descChanged,
    required TResult Function(DateTime date) dueDateChanged,
    required TResult Function(DropdownText status) statusChanged,
    required TResult Function() submit,
    required TResult Function() update,
    required TResult Function(String id) delete,
  }) {
    return titleChanged(title);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String title)? titleChanged,
    TResult? Function(String desc)? descChanged,
    TResult? Function(DateTime date)? dueDateChanged,
    TResult? Function(DropdownText status)? statusChanged,
    TResult? Function()? submit,
    TResult? Function()? update,
    TResult? Function(String id)? delete,
  }) {
    return titleChanged?.call(title);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String title)? titleChanged,
    TResult Function(String desc)? descChanged,
    TResult Function(DateTime date)? dueDateChanged,
    TResult Function(DropdownText status)? statusChanged,
    TResult Function()? submit,
    TResult Function()? update,
    TResult Function(String id)? delete,
    required TResult orElse(),
  }) {
    if (titleChanged != null) {
      return titleChanged(title);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_TitleChanged value) titleChanged,
    required TResult Function(_DescChanged value) descChanged,
    required TResult Function(_DueDateChanged value) dueDateChanged,
    required TResult Function(_StatusChanged value) statusChanged,
    required TResult Function(_Submit value) submit,
    required TResult Function(_Update value) update,
    required TResult Function(_Delete value) delete,
  }) {
    return titleChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_TitleChanged value)? titleChanged,
    TResult? Function(_DescChanged value)? descChanged,
    TResult? Function(_DueDateChanged value)? dueDateChanged,
    TResult? Function(_StatusChanged value)? statusChanged,
    TResult? Function(_Submit value)? submit,
    TResult? Function(_Update value)? update,
    TResult? Function(_Delete value)? delete,
  }) {
    return titleChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_TitleChanged value)? titleChanged,
    TResult Function(_DescChanged value)? descChanged,
    TResult Function(_DueDateChanged value)? dueDateChanged,
    TResult Function(_StatusChanged value)? statusChanged,
    TResult Function(_Submit value)? submit,
    TResult Function(_Update value)? update,
    TResult Function(_Delete value)? delete,
    required TResult orElse(),
  }) {
    if (titleChanged != null) {
      return titleChanged(this);
    }
    return orElse();
  }
}

abstract class _TitleChanged implements TaskEvent {
  const factory _TitleChanged(final String title) = _$TitleChangedImpl;

  String get title;
  @JsonKey(ignore: true)
  _$$TitleChangedImplCopyWith<_$TitleChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DescChangedImplCopyWith<$Res> {
  factory _$$DescChangedImplCopyWith(
          _$DescChangedImpl value, $Res Function(_$DescChangedImpl) then) =
      __$$DescChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String desc});
}

/// @nodoc
class __$$DescChangedImplCopyWithImpl<$Res>
    extends _$TaskEventCopyWithImpl<$Res, _$DescChangedImpl>
    implements _$$DescChangedImplCopyWith<$Res> {
  __$$DescChangedImplCopyWithImpl(
      _$DescChangedImpl _value, $Res Function(_$DescChangedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? desc = null,
  }) {
    return _then(_$DescChangedImpl(
      null == desc
          ? _value.desc
          : desc // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$DescChangedImpl implements _DescChanged {
  const _$DescChangedImpl(this.desc);

  @override
  final String desc;

  @override
  String toString() {
    return 'TaskEvent.descChanged(desc: $desc)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DescChangedImpl &&
            (identical(other.desc, desc) || other.desc == desc));
  }

  @override
  int get hashCode => Object.hash(runtimeType, desc);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DescChangedImplCopyWith<_$DescChangedImpl> get copyWith =>
      __$$DescChangedImplCopyWithImpl<_$DescChangedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String title) titleChanged,
    required TResult Function(String desc) descChanged,
    required TResult Function(DateTime date) dueDateChanged,
    required TResult Function(DropdownText status) statusChanged,
    required TResult Function() submit,
    required TResult Function() update,
    required TResult Function(String id) delete,
  }) {
    return descChanged(desc);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String title)? titleChanged,
    TResult? Function(String desc)? descChanged,
    TResult? Function(DateTime date)? dueDateChanged,
    TResult? Function(DropdownText status)? statusChanged,
    TResult? Function()? submit,
    TResult? Function()? update,
    TResult? Function(String id)? delete,
  }) {
    return descChanged?.call(desc);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String title)? titleChanged,
    TResult Function(String desc)? descChanged,
    TResult Function(DateTime date)? dueDateChanged,
    TResult Function(DropdownText status)? statusChanged,
    TResult Function()? submit,
    TResult Function()? update,
    TResult Function(String id)? delete,
    required TResult orElse(),
  }) {
    if (descChanged != null) {
      return descChanged(desc);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_TitleChanged value) titleChanged,
    required TResult Function(_DescChanged value) descChanged,
    required TResult Function(_DueDateChanged value) dueDateChanged,
    required TResult Function(_StatusChanged value) statusChanged,
    required TResult Function(_Submit value) submit,
    required TResult Function(_Update value) update,
    required TResult Function(_Delete value) delete,
  }) {
    return descChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_TitleChanged value)? titleChanged,
    TResult? Function(_DescChanged value)? descChanged,
    TResult? Function(_DueDateChanged value)? dueDateChanged,
    TResult? Function(_StatusChanged value)? statusChanged,
    TResult? Function(_Submit value)? submit,
    TResult? Function(_Update value)? update,
    TResult? Function(_Delete value)? delete,
  }) {
    return descChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_TitleChanged value)? titleChanged,
    TResult Function(_DescChanged value)? descChanged,
    TResult Function(_DueDateChanged value)? dueDateChanged,
    TResult Function(_StatusChanged value)? statusChanged,
    TResult Function(_Submit value)? submit,
    TResult Function(_Update value)? update,
    TResult Function(_Delete value)? delete,
    required TResult orElse(),
  }) {
    if (descChanged != null) {
      return descChanged(this);
    }
    return orElse();
  }
}

abstract class _DescChanged implements TaskEvent {
  const factory _DescChanged(final String desc) = _$DescChangedImpl;

  String get desc;
  @JsonKey(ignore: true)
  _$$DescChangedImplCopyWith<_$DescChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DueDateChangedImplCopyWith<$Res> {
  factory _$$DueDateChangedImplCopyWith(_$DueDateChangedImpl value,
          $Res Function(_$DueDateChangedImpl) then) =
      __$$DueDateChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({DateTime date});
}

/// @nodoc
class __$$DueDateChangedImplCopyWithImpl<$Res>
    extends _$TaskEventCopyWithImpl<$Res, _$DueDateChangedImpl>
    implements _$$DueDateChangedImplCopyWith<$Res> {
  __$$DueDateChangedImplCopyWithImpl(
      _$DueDateChangedImpl _value, $Res Function(_$DueDateChangedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = null,
  }) {
    return _then(_$DueDateChangedImpl(
      null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$DueDateChangedImpl implements _DueDateChanged {
  const _$DueDateChangedImpl(this.date);

  @override
  final DateTime date;

  @override
  String toString() {
    return 'TaskEvent.dueDateChanged(date: $date)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DueDateChangedImpl &&
            (identical(other.date, date) || other.date == date));
  }

  @override
  int get hashCode => Object.hash(runtimeType, date);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DueDateChangedImplCopyWith<_$DueDateChangedImpl> get copyWith =>
      __$$DueDateChangedImplCopyWithImpl<_$DueDateChangedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String title) titleChanged,
    required TResult Function(String desc) descChanged,
    required TResult Function(DateTime date) dueDateChanged,
    required TResult Function(DropdownText status) statusChanged,
    required TResult Function() submit,
    required TResult Function() update,
    required TResult Function(String id) delete,
  }) {
    return dueDateChanged(date);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String title)? titleChanged,
    TResult? Function(String desc)? descChanged,
    TResult? Function(DateTime date)? dueDateChanged,
    TResult? Function(DropdownText status)? statusChanged,
    TResult? Function()? submit,
    TResult? Function()? update,
    TResult? Function(String id)? delete,
  }) {
    return dueDateChanged?.call(date);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String title)? titleChanged,
    TResult Function(String desc)? descChanged,
    TResult Function(DateTime date)? dueDateChanged,
    TResult Function(DropdownText status)? statusChanged,
    TResult Function()? submit,
    TResult Function()? update,
    TResult Function(String id)? delete,
    required TResult orElse(),
  }) {
    if (dueDateChanged != null) {
      return dueDateChanged(date);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_TitleChanged value) titleChanged,
    required TResult Function(_DescChanged value) descChanged,
    required TResult Function(_DueDateChanged value) dueDateChanged,
    required TResult Function(_StatusChanged value) statusChanged,
    required TResult Function(_Submit value) submit,
    required TResult Function(_Update value) update,
    required TResult Function(_Delete value) delete,
  }) {
    return dueDateChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_TitleChanged value)? titleChanged,
    TResult? Function(_DescChanged value)? descChanged,
    TResult? Function(_DueDateChanged value)? dueDateChanged,
    TResult? Function(_StatusChanged value)? statusChanged,
    TResult? Function(_Submit value)? submit,
    TResult? Function(_Update value)? update,
    TResult? Function(_Delete value)? delete,
  }) {
    return dueDateChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_TitleChanged value)? titleChanged,
    TResult Function(_DescChanged value)? descChanged,
    TResult Function(_DueDateChanged value)? dueDateChanged,
    TResult Function(_StatusChanged value)? statusChanged,
    TResult Function(_Submit value)? submit,
    TResult Function(_Update value)? update,
    TResult Function(_Delete value)? delete,
    required TResult orElse(),
  }) {
    if (dueDateChanged != null) {
      return dueDateChanged(this);
    }
    return orElse();
  }
}

abstract class _DueDateChanged implements TaskEvent {
  const factory _DueDateChanged(final DateTime date) = _$DueDateChangedImpl;

  DateTime get date;
  @JsonKey(ignore: true)
  _$$DueDateChangedImplCopyWith<_$DueDateChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$StatusChangedImplCopyWith<$Res> {
  factory _$$StatusChangedImplCopyWith(
          _$StatusChangedImpl value, $Res Function(_$StatusChangedImpl) then) =
      __$$StatusChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({DropdownText status});

  $DropdownTextCopyWith<$Res> get status;
}

/// @nodoc
class __$$StatusChangedImplCopyWithImpl<$Res>
    extends _$TaskEventCopyWithImpl<$Res, _$StatusChangedImpl>
    implements _$$StatusChangedImplCopyWith<$Res> {
  __$$StatusChangedImplCopyWithImpl(
      _$StatusChangedImpl _value, $Res Function(_$StatusChangedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
  }) {
    return _then(_$StatusChangedImpl(
      null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as DropdownText,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $DropdownTextCopyWith<$Res> get status {
    return $DropdownTextCopyWith<$Res>(_value.status, (value) {
      return _then(_value.copyWith(status: value));
    });
  }
}

/// @nodoc

class _$StatusChangedImpl implements _StatusChanged {
  const _$StatusChangedImpl(this.status);

  @override
  final DropdownText status;

  @override
  String toString() {
    return 'TaskEvent.statusChanged(status: $status)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StatusChangedImpl &&
            (identical(other.status, status) || other.status == status));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StatusChangedImplCopyWith<_$StatusChangedImpl> get copyWith =>
      __$$StatusChangedImplCopyWithImpl<_$StatusChangedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String title) titleChanged,
    required TResult Function(String desc) descChanged,
    required TResult Function(DateTime date) dueDateChanged,
    required TResult Function(DropdownText status) statusChanged,
    required TResult Function() submit,
    required TResult Function() update,
    required TResult Function(String id) delete,
  }) {
    return statusChanged(status);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String title)? titleChanged,
    TResult? Function(String desc)? descChanged,
    TResult? Function(DateTime date)? dueDateChanged,
    TResult? Function(DropdownText status)? statusChanged,
    TResult? Function()? submit,
    TResult? Function()? update,
    TResult? Function(String id)? delete,
  }) {
    return statusChanged?.call(status);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String title)? titleChanged,
    TResult Function(String desc)? descChanged,
    TResult Function(DateTime date)? dueDateChanged,
    TResult Function(DropdownText status)? statusChanged,
    TResult Function()? submit,
    TResult Function()? update,
    TResult Function(String id)? delete,
    required TResult orElse(),
  }) {
    if (statusChanged != null) {
      return statusChanged(status);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_TitleChanged value) titleChanged,
    required TResult Function(_DescChanged value) descChanged,
    required TResult Function(_DueDateChanged value) dueDateChanged,
    required TResult Function(_StatusChanged value) statusChanged,
    required TResult Function(_Submit value) submit,
    required TResult Function(_Update value) update,
    required TResult Function(_Delete value) delete,
  }) {
    return statusChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_TitleChanged value)? titleChanged,
    TResult? Function(_DescChanged value)? descChanged,
    TResult? Function(_DueDateChanged value)? dueDateChanged,
    TResult? Function(_StatusChanged value)? statusChanged,
    TResult? Function(_Submit value)? submit,
    TResult? Function(_Update value)? update,
    TResult? Function(_Delete value)? delete,
  }) {
    return statusChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_TitleChanged value)? titleChanged,
    TResult Function(_DescChanged value)? descChanged,
    TResult Function(_DueDateChanged value)? dueDateChanged,
    TResult Function(_StatusChanged value)? statusChanged,
    TResult Function(_Submit value)? submit,
    TResult Function(_Update value)? update,
    TResult Function(_Delete value)? delete,
    required TResult orElse(),
  }) {
    if (statusChanged != null) {
      return statusChanged(this);
    }
    return orElse();
  }
}

abstract class _StatusChanged implements TaskEvent {
  const factory _StatusChanged(final DropdownText status) = _$StatusChangedImpl;

  DropdownText get status;
  @JsonKey(ignore: true)
  _$$StatusChangedImplCopyWith<_$StatusChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SubmitImplCopyWith<$Res> {
  factory _$$SubmitImplCopyWith(
          _$SubmitImpl value, $Res Function(_$SubmitImpl) then) =
      __$$SubmitImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SubmitImplCopyWithImpl<$Res>
    extends _$TaskEventCopyWithImpl<$Res, _$SubmitImpl>
    implements _$$SubmitImplCopyWith<$Res> {
  __$$SubmitImplCopyWithImpl(
      _$SubmitImpl _value, $Res Function(_$SubmitImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SubmitImpl implements _Submit {
  const _$SubmitImpl();

  @override
  String toString() {
    return 'TaskEvent.submit()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SubmitImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String title) titleChanged,
    required TResult Function(String desc) descChanged,
    required TResult Function(DateTime date) dueDateChanged,
    required TResult Function(DropdownText status) statusChanged,
    required TResult Function() submit,
    required TResult Function() update,
    required TResult Function(String id) delete,
  }) {
    return submit();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String title)? titleChanged,
    TResult? Function(String desc)? descChanged,
    TResult? Function(DateTime date)? dueDateChanged,
    TResult? Function(DropdownText status)? statusChanged,
    TResult? Function()? submit,
    TResult? Function()? update,
    TResult? Function(String id)? delete,
  }) {
    return submit?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String title)? titleChanged,
    TResult Function(String desc)? descChanged,
    TResult Function(DateTime date)? dueDateChanged,
    TResult Function(DropdownText status)? statusChanged,
    TResult Function()? submit,
    TResult Function()? update,
    TResult Function(String id)? delete,
    required TResult orElse(),
  }) {
    if (submit != null) {
      return submit();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_TitleChanged value) titleChanged,
    required TResult Function(_DescChanged value) descChanged,
    required TResult Function(_DueDateChanged value) dueDateChanged,
    required TResult Function(_StatusChanged value) statusChanged,
    required TResult Function(_Submit value) submit,
    required TResult Function(_Update value) update,
    required TResult Function(_Delete value) delete,
  }) {
    return submit(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_TitleChanged value)? titleChanged,
    TResult? Function(_DescChanged value)? descChanged,
    TResult? Function(_DueDateChanged value)? dueDateChanged,
    TResult? Function(_StatusChanged value)? statusChanged,
    TResult? Function(_Submit value)? submit,
    TResult? Function(_Update value)? update,
    TResult? Function(_Delete value)? delete,
  }) {
    return submit?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_TitleChanged value)? titleChanged,
    TResult Function(_DescChanged value)? descChanged,
    TResult Function(_DueDateChanged value)? dueDateChanged,
    TResult Function(_StatusChanged value)? statusChanged,
    TResult Function(_Submit value)? submit,
    TResult Function(_Update value)? update,
    TResult Function(_Delete value)? delete,
    required TResult orElse(),
  }) {
    if (submit != null) {
      return submit(this);
    }
    return orElse();
  }
}

abstract class _Submit implements TaskEvent {
  const factory _Submit() = _$SubmitImpl;
}

/// @nodoc
abstract class _$$UpdateImplCopyWith<$Res> {
  factory _$$UpdateImplCopyWith(
          _$UpdateImpl value, $Res Function(_$UpdateImpl) then) =
      __$$UpdateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UpdateImplCopyWithImpl<$Res>
    extends _$TaskEventCopyWithImpl<$Res, _$UpdateImpl>
    implements _$$UpdateImplCopyWith<$Res> {
  __$$UpdateImplCopyWithImpl(
      _$UpdateImpl _value, $Res Function(_$UpdateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$UpdateImpl implements _Update {
  const _$UpdateImpl();

  @override
  String toString() {
    return 'TaskEvent.update()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$UpdateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String title) titleChanged,
    required TResult Function(String desc) descChanged,
    required TResult Function(DateTime date) dueDateChanged,
    required TResult Function(DropdownText status) statusChanged,
    required TResult Function() submit,
    required TResult Function() update,
    required TResult Function(String id) delete,
  }) {
    return update();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String title)? titleChanged,
    TResult? Function(String desc)? descChanged,
    TResult? Function(DateTime date)? dueDateChanged,
    TResult? Function(DropdownText status)? statusChanged,
    TResult? Function()? submit,
    TResult? Function()? update,
    TResult? Function(String id)? delete,
  }) {
    return update?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String title)? titleChanged,
    TResult Function(String desc)? descChanged,
    TResult Function(DateTime date)? dueDateChanged,
    TResult Function(DropdownText status)? statusChanged,
    TResult Function()? submit,
    TResult Function()? update,
    TResult Function(String id)? delete,
    required TResult orElse(),
  }) {
    if (update != null) {
      return update();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_TitleChanged value) titleChanged,
    required TResult Function(_DescChanged value) descChanged,
    required TResult Function(_DueDateChanged value) dueDateChanged,
    required TResult Function(_StatusChanged value) statusChanged,
    required TResult Function(_Submit value) submit,
    required TResult Function(_Update value) update,
    required TResult Function(_Delete value) delete,
  }) {
    return update(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_TitleChanged value)? titleChanged,
    TResult? Function(_DescChanged value)? descChanged,
    TResult? Function(_DueDateChanged value)? dueDateChanged,
    TResult? Function(_StatusChanged value)? statusChanged,
    TResult? Function(_Submit value)? submit,
    TResult? Function(_Update value)? update,
    TResult? Function(_Delete value)? delete,
  }) {
    return update?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_TitleChanged value)? titleChanged,
    TResult Function(_DescChanged value)? descChanged,
    TResult Function(_DueDateChanged value)? dueDateChanged,
    TResult Function(_StatusChanged value)? statusChanged,
    TResult Function(_Submit value)? submit,
    TResult Function(_Update value)? update,
    TResult Function(_Delete value)? delete,
    required TResult orElse(),
  }) {
    if (update != null) {
      return update(this);
    }
    return orElse();
  }
}

abstract class _Update implements TaskEvent {
  const factory _Update() = _$UpdateImpl;
}

/// @nodoc
abstract class _$$DeleteImplCopyWith<$Res> {
  factory _$$DeleteImplCopyWith(
          _$DeleteImpl value, $Res Function(_$DeleteImpl) then) =
      __$$DeleteImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String id});
}

/// @nodoc
class __$$DeleteImplCopyWithImpl<$Res>
    extends _$TaskEventCopyWithImpl<$Res, _$DeleteImpl>
    implements _$$DeleteImplCopyWith<$Res> {
  __$$DeleteImplCopyWithImpl(
      _$DeleteImpl _value, $Res Function(_$DeleteImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$DeleteImpl(
      null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$DeleteImpl implements _Delete {
  const _$DeleteImpl(this.id);

  @override
  final String id;

  @override
  String toString() {
    return 'TaskEvent.delete(id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteImplCopyWith<_$DeleteImpl> get copyWith =>
      __$$DeleteImplCopyWithImpl<_$DeleteImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String title) titleChanged,
    required TResult Function(String desc) descChanged,
    required TResult Function(DateTime date) dueDateChanged,
    required TResult Function(DropdownText status) statusChanged,
    required TResult Function() submit,
    required TResult Function() update,
    required TResult Function(String id) delete,
  }) {
    return delete(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String title)? titleChanged,
    TResult? Function(String desc)? descChanged,
    TResult? Function(DateTime date)? dueDateChanged,
    TResult? Function(DropdownText status)? statusChanged,
    TResult? Function()? submit,
    TResult? Function()? update,
    TResult? Function(String id)? delete,
  }) {
    return delete?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String title)? titleChanged,
    TResult Function(String desc)? descChanged,
    TResult Function(DateTime date)? dueDateChanged,
    TResult Function(DropdownText status)? statusChanged,
    TResult Function()? submit,
    TResult Function()? update,
    TResult Function(String id)? delete,
    required TResult orElse(),
  }) {
    if (delete != null) {
      return delete(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_TitleChanged value) titleChanged,
    required TResult Function(_DescChanged value) descChanged,
    required TResult Function(_DueDateChanged value) dueDateChanged,
    required TResult Function(_StatusChanged value) statusChanged,
    required TResult Function(_Submit value) submit,
    required TResult Function(_Update value) update,
    required TResult Function(_Delete value) delete,
  }) {
    return delete(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_TitleChanged value)? titleChanged,
    TResult? Function(_DescChanged value)? descChanged,
    TResult? Function(_DueDateChanged value)? dueDateChanged,
    TResult? Function(_StatusChanged value)? statusChanged,
    TResult? Function(_Submit value)? submit,
    TResult? Function(_Update value)? update,
    TResult? Function(_Delete value)? delete,
  }) {
    return delete?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_TitleChanged value)? titleChanged,
    TResult Function(_DescChanged value)? descChanged,
    TResult Function(_DueDateChanged value)? dueDateChanged,
    TResult Function(_StatusChanged value)? statusChanged,
    TResult Function(_Submit value)? submit,
    TResult Function(_Update value)? update,
    TResult Function(_Delete value)? delete,
    required TResult orElse(),
  }) {
    if (delete != null) {
      return delete(this);
    }
    return orElse();
  }
}

abstract class _Delete implements TaskEvent {
  const factory _Delete(final String id) = _$DeleteImpl;

  String get id;
  @JsonKey(ignore: true)
  _$$DeleteImplCopyWith<_$DeleteImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$TaskState {
  Option<List<TaskModel>> get taskListOption =>
      throw _privateConstructorUsedError;
  Option<Either<AppFailure, TaskSuccess>> get failureOrSuccessOption =>
      throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  TaskForm get form => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TaskStateCopyWith<TaskState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TaskStateCopyWith<$Res> {
  factory $TaskStateCopyWith(TaskState value, $Res Function(TaskState) then) =
      _$TaskStateCopyWithImpl<$Res, TaskState>;
  @useResult
  $Res call(
      {Option<List<TaskModel>> taskListOption,
      Option<Either<AppFailure, TaskSuccess>> failureOrSuccessOption,
      bool isLoading,
      TaskForm form});

  $TaskFormCopyWith<$Res> get form;
}

/// @nodoc
class _$TaskStateCopyWithImpl<$Res, $Val extends TaskState>
    implements $TaskStateCopyWith<$Res> {
  _$TaskStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? taskListOption = null,
    Object? failureOrSuccessOption = null,
    Object? isLoading = null,
    Object? form = null,
  }) {
    return _then(_value.copyWith(
      taskListOption: null == taskListOption
          ? _value.taskListOption
          : taskListOption // ignore: cast_nullable_to_non_nullable
              as Option<List<TaskModel>>,
      failureOrSuccessOption: null == failureOrSuccessOption
          ? _value.failureOrSuccessOption
          : failureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<AppFailure, TaskSuccess>>,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      form: null == form
          ? _value.form
          : form // ignore: cast_nullable_to_non_nullable
              as TaskForm,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $TaskFormCopyWith<$Res> get form {
    return $TaskFormCopyWith<$Res>(_value.form, (value) {
      return _then(_value.copyWith(form: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$TaskStateImplCopyWith<$Res>
    implements $TaskStateCopyWith<$Res> {
  factory _$$TaskStateImplCopyWith(
          _$TaskStateImpl value, $Res Function(_$TaskStateImpl) then) =
      __$$TaskStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Option<List<TaskModel>> taskListOption,
      Option<Either<AppFailure, TaskSuccess>> failureOrSuccessOption,
      bool isLoading,
      TaskForm form});

  @override
  $TaskFormCopyWith<$Res> get form;
}

/// @nodoc
class __$$TaskStateImplCopyWithImpl<$Res>
    extends _$TaskStateCopyWithImpl<$Res, _$TaskStateImpl>
    implements _$$TaskStateImplCopyWith<$Res> {
  __$$TaskStateImplCopyWithImpl(
      _$TaskStateImpl _value, $Res Function(_$TaskStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? taskListOption = null,
    Object? failureOrSuccessOption = null,
    Object? isLoading = null,
    Object? form = null,
  }) {
    return _then(_$TaskStateImpl(
      taskListOption: null == taskListOption
          ? _value.taskListOption
          : taskListOption // ignore: cast_nullable_to_non_nullable
              as Option<List<TaskModel>>,
      failureOrSuccessOption: null == failureOrSuccessOption
          ? _value.failureOrSuccessOption
          : failureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<AppFailure, TaskSuccess>>,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      form: null == form
          ? _value.form
          : form // ignore: cast_nullable_to_non_nullable
              as TaskForm,
    ));
  }
}

/// @nodoc

class _$TaskStateImpl extends _TaskState {
  const _$TaskStateImpl(
      {required this.taskListOption,
      required this.failureOrSuccessOption,
      required this.isLoading,
      required this.form})
      : super._();

  @override
  final Option<List<TaskModel>> taskListOption;
  @override
  final Option<Either<AppFailure, TaskSuccess>> failureOrSuccessOption;
  @override
  final bool isLoading;
  @override
  final TaskForm form;

  @override
  String toString() {
    return 'TaskState(taskListOption: $taskListOption, failureOrSuccessOption: $failureOrSuccessOption, isLoading: $isLoading, form: $form)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TaskStateImpl &&
            (identical(other.taskListOption, taskListOption) ||
                other.taskListOption == taskListOption) &&
            (identical(other.failureOrSuccessOption, failureOrSuccessOption) ||
                other.failureOrSuccessOption == failureOrSuccessOption) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.form, form) || other.form == form));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, taskListOption, failureOrSuccessOption, isLoading, form);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TaskStateImplCopyWith<_$TaskStateImpl> get copyWith =>
      __$$TaskStateImplCopyWithImpl<_$TaskStateImpl>(this, _$identity);
}

abstract class _TaskState extends TaskState {
  const factory _TaskState(
      {required final Option<List<TaskModel>> taskListOption,
      required final Option<Either<AppFailure, TaskSuccess>>
          failureOrSuccessOption,
      required final bool isLoading,
      required final TaskForm form}) = _$TaskStateImpl;
  const _TaskState._() : super._();

  @override
  Option<List<TaskModel>> get taskListOption;
  @override
  Option<Either<AppFailure, TaskSuccess>> get failureOrSuccessOption;
  @override
  bool get isLoading;
  @override
  TaskForm get form;
  @override
  @JsonKey(ignore: true)
  _$$TaskStateImplCopyWith<_$TaskStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
