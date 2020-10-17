// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'workout_actor_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$WorkoutActorEventTearOff {
  const _$WorkoutActorEventTearOff();

// ignore: unused_element
  _WorkoutDeleted workoutDeleted(Workout workout) {
    return _WorkoutDeleted(
      workout,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $WorkoutActorEvent = _$WorkoutActorEventTearOff();

/// @nodoc
mixin _$WorkoutActorEvent {
  Workout get workout;

  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result workoutDeleted(Workout workout),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result workoutDeleted(Workout workout),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result workoutDeleted(_WorkoutDeleted value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result workoutDeleted(_WorkoutDeleted value),
    @required Result orElse(),
  });

  $WorkoutActorEventCopyWith<WorkoutActorEvent> get copyWith;
}

/// @nodoc
abstract class $WorkoutActorEventCopyWith<$Res> {
  factory $WorkoutActorEventCopyWith(
          WorkoutActorEvent value, $Res Function(WorkoutActorEvent) then) =
      _$WorkoutActorEventCopyWithImpl<$Res>;
  $Res call({Workout workout});
}

/// @nodoc
class _$WorkoutActorEventCopyWithImpl<$Res>
    implements $WorkoutActorEventCopyWith<$Res> {
  _$WorkoutActorEventCopyWithImpl(this._value, this._then);

  final WorkoutActorEvent _value;
  // ignore: unused_field
  final $Res Function(WorkoutActorEvent) _then;

  @override
  $Res call({
    Object workout = freezed,
  }) {
    return _then(_value.copyWith(
      workout: workout == freezed ? _value.workout : workout as Workout,
    ));
  }
}

/// @nodoc
abstract class _$WorkoutDeletedCopyWith<$Res>
    implements $WorkoutActorEventCopyWith<$Res> {
  factory _$WorkoutDeletedCopyWith(
          _WorkoutDeleted value, $Res Function(_WorkoutDeleted) then) =
      __$WorkoutDeletedCopyWithImpl<$Res>;
  @override
  $Res call({Workout workout});
}

/// @nodoc
class __$WorkoutDeletedCopyWithImpl<$Res>
    extends _$WorkoutActorEventCopyWithImpl<$Res>
    implements _$WorkoutDeletedCopyWith<$Res> {
  __$WorkoutDeletedCopyWithImpl(
      _WorkoutDeleted _value, $Res Function(_WorkoutDeleted) _then)
      : super(_value, (v) => _then(v as _WorkoutDeleted));

  @override
  _WorkoutDeleted get _value => super._value as _WorkoutDeleted;

  @override
  $Res call({
    Object workout = freezed,
  }) {
    return _then(_WorkoutDeleted(
      workout == freezed ? _value.workout : workout as Workout,
    ));
  }
}

/// @nodoc
class _$_WorkoutDeleted implements _WorkoutDeleted {
  const _$_WorkoutDeleted(this.workout) : assert(workout != null);

  @override
  final Workout workout;

  @override
  String toString() {
    return 'WorkoutActorEvent.workoutDeleted(workout: $workout)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _WorkoutDeleted &&
            (identical(other.workout, workout) ||
                const DeepCollectionEquality().equals(other.workout, workout)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(workout);

  @override
  _$WorkoutDeletedCopyWith<_WorkoutDeleted> get copyWith =>
      __$WorkoutDeletedCopyWithImpl<_WorkoutDeleted>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result workoutDeleted(Workout workout),
  }) {
    assert(workoutDeleted != null);
    return workoutDeleted(workout);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result workoutDeleted(Workout workout),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (workoutDeleted != null) {
      return workoutDeleted(workout);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result workoutDeleted(_WorkoutDeleted value),
  }) {
    assert(workoutDeleted != null);
    return workoutDeleted(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result workoutDeleted(_WorkoutDeleted value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (workoutDeleted != null) {
      return workoutDeleted(this);
    }
    return orElse();
  }
}

abstract class _WorkoutDeleted implements WorkoutActorEvent {
  const factory _WorkoutDeleted(Workout workout) = _$_WorkoutDeleted;

  @override
  Workout get workout;
  @override
  _$WorkoutDeletedCopyWith<_WorkoutDeleted> get copyWith;
}

/// @nodoc
class _$WorkoutActorStateTearOff {
  const _$WorkoutActorStateTearOff();

// ignore: unused_element
  _Initial initial() {
    return const _Initial();
  }

// ignore: unused_element
  _ActionInProgress actionInProgress() {
    return const _ActionInProgress();
  }

// ignore: unused_element
  _DeleteSuccess deleteSuccess() {
    return const _DeleteSuccess();
  }

// ignore: unused_element
  _DeleteFailure deleteFailure() {
    return const _DeleteFailure();
  }
}

/// @nodoc
// ignore: unused_element
const $WorkoutActorState = _$WorkoutActorStateTearOff();

/// @nodoc
mixin _$WorkoutActorState {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result actionInProgress(),
    @required Result deleteSuccess(),
    @required Result deleteFailure(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result actionInProgress(),
    Result deleteSuccess(),
    Result deleteFailure(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result actionInProgress(_ActionInProgress value),
    @required Result deleteSuccess(_DeleteSuccess value),
    @required Result deleteFailure(_DeleteFailure value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result actionInProgress(_ActionInProgress value),
    Result deleteSuccess(_DeleteSuccess value),
    Result deleteFailure(_DeleteFailure value),
    @required Result orElse(),
  });
}

/// @nodoc
abstract class $WorkoutActorStateCopyWith<$Res> {
  factory $WorkoutActorStateCopyWith(
          WorkoutActorState value, $Res Function(WorkoutActorState) then) =
      _$WorkoutActorStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$WorkoutActorStateCopyWithImpl<$Res>
    implements $WorkoutActorStateCopyWith<$Res> {
  _$WorkoutActorStateCopyWithImpl(this._value, this._then);

  final WorkoutActorState _value;
  // ignore: unused_field
  final $Res Function(WorkoutActorState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$WorkoutActorStateCopyWithImpl<$Res>
    implements _$InitialCopyWith<$Res> {
  __$InitialCopyWithImpl(_Initial _value, $Res Function(_Initial) _then)
      : super(_value, (v) => _then(v as _Initial));

  @override
  _Initial get _value => super._value as _Initial;
}

/// @nodoc
class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'WorkoutActorState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result actionInProgress(),
    @required Result deleteSuccess(),
    @required Result deleteFailure(),
  }) {
    assert(initial != null);
    assert(actionInProgress != null);
    assert(deleteSuccess != null);
    assert(deleteFailure != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result actionInProgress(),
    Result deleteSuccess(),
    Result deleteFailure(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result actionInProgress(_ActionInProgress value),
    @required Result deleteSuccess(_DeleteSuccess value),
    @required Result deleteFailure(_DeleteFailure value),
  }) {
    assert(initial != null);
    assert(actionInProgress != null);
    assert(deleteSuccess != null);
    assert(deleteFailure != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result actionInProgress(_ActionInProgress value),
    Result deleteSuccess(_DeleteSuccess value),
    Result deleteFailure(_DeleteFailure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements WorkoutActorState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$ActionInProgressCopyWith<$Res> {
  factory _$ActionInProgressCopyWith(
          _ActionInProgress value, $Res Function(_ActionInProgress) then) =
      __$ActionInProgressCopyWithImpl<$Res>;
}

/// @nodoc
class __$ActionInProgressCopyWithImpl<$Res>
    extends _$WorkoutActorStateCopyWithImpl<$Res>
    implements _$ActionInProgressCopyWith<$Res> {
  __$ActionInProgressCopyWithImpl(
      _ActionInProgress _value, $Res Function(_ActionInProgress) _then)
      : super(_value, (v) => _then(v as _ActionInProgress));

  @override
  _ActionInProgress get _value => super._value as _ActionInProgress;
}

/// @nodoc
class _$_ActionInProgress implements _ActionInProgress {
  const _$_ActionInProgress();

  @override
  String toString() {
    return 'WorkoutActorState.actionInProgress()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _ActionInProgress);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result actionInProgress(),
    @required Result deleteSuccess(),
    @required Result deleteFailure(),
  }) {
    assert(initial != null);
    assert(actionInProgress != null);
    assert(deleteSuccess != null);
    assert(deleteFailure != null);
    return actionInProgress();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result actionInProgress(),
    Result deleteSuccess(),
    Result deleteFailure(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (actionInProgress != null) {
      return actionInProgress();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result actionInProgress(_ActionInProgress value),
    @required Result deleteSuccess(_DeleteSuccess value),
    @required Result deleteFailure(_DeleteFailure value),
  }) {
    assert(initial != null);
    assert(actionInProgress != null);
    assert(deleteSuccess != null);
    assert(deleteFailure != null);
    return actionInProgress(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result actionInProgress(_ActionInProgress value),
    Result deleteSuccess(_DeleteSuccess value),
    Result deleteFailure(_DeleteFailure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (actionInProgress != null) {
      return actionInProgress(this);
    }
    return orElse();
  }
}

abstract class _ActionInProgress implements WorkoutActorState {
  const factory _ActionInProgress() = _$_ActionInProgress;
}

/// @nodoc
abstract class _$DeleteSuccessCopyWith<$Res> {
  factory _$DeleteSuccessCopyWith(
          _DeleteSuccess value, $Res Function(_DeleteSuccess) then) =
      __$DeleteSuccessCopyWithImpl<$Res>;
}

/// @nodoc
class __$DeleteSuccessCopyWithImpl<$Res>
    extends _$WorkoutActorStateCopyWithImpl<$Res>
    implements _$DeleteSuccessCopyWith<$Res> {
  __$DeleteSuccessCopyWithImpl(
      _DeleteSuccess _value, $Res Function(_DeleteSuccess) _then)
      : super(_value, (v) => _then(v as _DeleteSuccess));

  @override
  _DeleteSuccess get _value => super._value as _DeleteSuccess;
}

/// @nodoc
class _$_DeleteSuccess implements _DeleteSuccess {
  const _$_DeleteSuccess();

  @override
  String toString() {
    return 'WorkoutActorState.deleteSuccess()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _DeleteSuccess);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result actionInProgress(),
    @required Result deleteSuccess(),
    @required Result deleteFailure(),
  }) {
    assert(initial != null);
    assert(actionInProgress != null);
    assert(deleteSuccess != null);
    assert(deleteFailure != null);
    return deleteSuccess();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result actionInProgress(),
    Result deleteSuccess(),
    Result deleteFailure(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (deleteSuccess != null) {
      return deleteSuccess();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result actionInProgress(_ActionInProgress value),
    @required Result deleteSuccess(_DeleteSuccess value),
    @required Result deleteFailure(_DeleteFailure value),
  }) {
    assert(initial != null);
    assert(actionInProgress != null);
    assert(deleteSuccess != null);
    assert(deleteFailure != null);
    return deleteSuccess(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result actionInProgress(_ActionInProgress value),
    Result deleteSuccess(_DeleteSuccess value),
    Result deleteFailure(_DeleteFailure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (deleteSuccess != null) {
      return deleteSuccess(this);
    }
    return orElse();
  }
}

abstract class _DeleteSuccess implements WorkoutActorState {
  const factory _DeleteSuccess() = _$_DeleteSuccess;
}

/// @nodoc
abstract class _$DeleteFailureCopyWith<$Res> {
  factory _$DeleteFailureCopyWith(
          _DeleteFailure value, $Res Function(_DeleteFailure) then) =
      __$DeleteFailureCopyWithImpl<$Res>;
}

/// @nodoc
class __$DeleteFailureCopyWithImpl<$Res>
    extends _$WorkoutActorStateCopyWithImpl<$Res>
    implements _$DeleteFailureCopyWith<$Res> {
  __$DeleteFailureCopyWithImpl(
      _DeleteFailure _value, $Res Function(_DeleteFailure) _then)
      : super(_value, (v) => _then(v as _DeleteFailure));

  @override
  _DeleteFailure get _value => super._value as _DeleteFailure;
}

/// @nodoc
class _$_DeleteFailure implements _DeleteFailure {
  const _$_DeleteFailure();

  @override
  String toString() {
    return 'WorkoutActorState.deleteFailure()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _DeleteFailure);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result actionInProgress(),
    @required Result deleteSuccess(),
    @required Result deleteFailure(),
  }) {
    assert(initial != null);
    assert(actionInProgress != null);
    assert(deleteSuccess != null);
    assert(deleteFailure != null);
    return deleteFailure();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result actionInProgress(),
    Result deleteSuccess(),
    Result deleteFailure(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (deleteFailure != null) {
      return deleteFailure();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result actionInProgress(_ActionInProgress value),
    @required Result deleteSuccess(_DeleteSuccess value),
    @required Result deleteFailure(_DeleteFailure value),
  }) {
    assert(initial != null);
    assert(actionInProgress != null);
    assert(deleteSuccess != null);
    assert(deleteFailure != null);
    return deleteFailure(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result actionInProgress(_ActionInProgress value),
    Result deleteSuccess(_DeleteSuccess value),
    Result deleteFailure(_DeleteFailure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (deleteFailure != null) {
      return deleteFailure(this);
    }
    return orElse();
  }
}

abstract class _DeleteFailure implements WorkoutActorState {
  const factory _DeleteFailure() = _$_DeleteFailure;
}
