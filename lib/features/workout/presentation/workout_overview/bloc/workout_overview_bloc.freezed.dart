// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'workout_overview_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$WorkoutOverviewEventTearOff {
  const _$WorkoutOverviewEventTearOff();

// ignore: unused_element
  _WatchAllStarted watchAllStarted() {
    return const _WatchAllStarted();
  }
}

// ignore: unused_element
const $WorkoutOverviewEvent = _$WorkoutOverviewEventTearOff();

mixin _$WorkoutOverviewEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result watchAllStarted(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result watchAllStarted(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result watchAllStarted(_WatchAllStarted value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result watchAllStarted(_WatchAllStarted value),
    @required Result orElse(),
  });
}

abstract class $WorkoutOverviewEventCopyWith<$Res> {
  factory $WorkoutOverviewEventCopyWith(WorkoutOverviewEvent value,
          $Res Function(WorkoutOverviewEvent) then) =
      _$WorkoutOverviewEventCopyWithImpl<$Res>;
}

class _$WorkoutOverviewEventCopyWithImpl<$Res>
    implements $WorkoutOverviewEventCopyWith<$Res> {
  _$WorkoutOverviewEventCopyWithImpl(this._value, this._then);

  final WorkoutOverviewEvent _value;
  // ignore: unused_field
  final $Res Function(WorkoutOverviewEvent) _then;
}

abstract class _$WatchAllStartedCopyWith<$Res> {
  factory _$WatchAllStartedCopyWith(
          _WatchAllStarted value, $Res Function(_WatchAllStarted) then) =
      __$WatchAllStartedCopyWithImpl<$Res>;
}

class __$WatchAllStartedCopyWithImpl<$Res>
    extends _$WorkoutOverviewEventCopyWithImpl<$Res>
    implements _$WatchAllStartedCopyWith<$Res> {
  __$WatchAllStartedCopyWithImpl(
      _WatchAllStarted _value, $Res Function(_WatchAllStarted) _then)
      : super(_value, (v) => _then(v as _WatchAllStarted));

  @override
  _WatchAllStarted get _value => super._value as _WatchAllStarted;
}

class _$_WatchAllStarted implements _WatchAllStarted {
  const _$_WatchAllStarted();

  @override
  String toString() {
    return 'WorkoutOverviewEvent.watchAllStarted()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _WatchAllStarted);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result watchAllStarted(),
  }) {
    assert(watchAllStarted != null);
    return watchAllStarted();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result watchAllStarted(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (watchAllStarted != null) {
      return watchAllStarted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result watchAllStarted(_WatchAllStarted value),
  }) {
    assert(watchAllStarted != null);
    return watchAllStarted(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result watchAllStarted(_WatchAllStarted value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (watchAllStarted != null) {
      return watchAllStarted(this);
    }
    return orElse();
  }
}

abstract class _WatchAllStarted implements WorkoutOverviewEvent {
  const factory _WatchAllStarted() = _$_WatchAllStarted;
}

class _$WorkoutOverviewStateTearOff {
  const _$WorkoutOverviewStateTearOff();

// ignore: unused_element
  _Initial initial() {
    return _Initial();
  }

// ignore: unused_element
  _Success success({@required List<Workout> workouts}) {
    return _Success(
      workouts: workouts,
    );
  }

// ignore: unused_element
  _Error error() {
    return const _Error();
  }
}

// ignore: unused_element
const $WorkoutOverviewState = _$WorkoutOverviewStateTearOff();

mixin _$WorkoutOverviewState {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result success(List<Workout> workouts),
    @required Result error(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result success(List<Workout> workouts),
    Result error(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result success(_Success value),
    @required Result error(_Error value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result success(_Success value),
    Result error(_Error value),
    @required Result orElse(),
  });
}

abstract class $WorkoutOverviewStateCopyWith<$Res> {
  factory $WorkoutOverviewStateCopyWith(WorkoutOverviewState value,
          $Res Function(WorkoutOverviewState) then) =
      _$WorkoutOverviewStateCopyWithImpl<$Res>;
}

class _$WorkoutOverviewStateCopyWithImpl<$Res>
    implements $WorkoutOverviewStateCopyWith<$Res> {
  _$WorkoutOverviewStateCopyWithImpl(this._value, this._then);

  final WorkoutOverviewState _value;
  // ignore: unused_field
  final $Res Function(WorkoutOverviewState) _then;
}

abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

class __$InitialCopyWithImpl<$Res>
    extends _$WorkoutOverviewStateCopyWithImpl<$Res>
    implements _$InitialCopyWith<$Res> {
  __$InitialCopyWithImpl(_Initial _value, $Res Function(_Initial) _then)
      : super(_value, (v) => _then(v as _Initial));

  @override
  _Initial get _value => super._value as _Initial;
}

class _$_Initial implements _Initial {
  _$_Initial();

  @override
  String toString() {
    return 'WorkoutOverviewState.initial()';
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
    @required Result success(List<Workout> workouts),
    @required Result error(),
  }) {
    assert(initial != null);
    assert(success != null);
    assert(error != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result success(List<Workout> workouts),
    Result error(),
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
    @required Result success(_Success value),
    @required Result error(_Error value),
  }) {
    assert(initial != null);
    assert(success != null);
    assert(error != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result success(_Success value),
    Result error(_Error value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements WorkoutOverviewState {
  factory _Initial() = _$_Initial;
}

abstract class _$SuccessCopyWith<$Res> {
  factory _$SuccessCopyWith(_Success value, $Res Function(_Success) then) =
      __$SuccessCopyWithImpl<$Res>;
  $Res call({List<Workout> workouts});
}

class __$SuccessCopyWithImpl<$Res>
    extends _$WorkoutOverviewStateCopyWithImpl<$Res>
    implements _$SuccessCopyWith<$Res> {
  __$SuccessCopyWithImpl(_Success _value, $Res Function(_Success) _then)
      : super(_value, (v) => _then(v as _Success));

  @override
  _Success get _value => super._value as _Success;

  @override
  $Res call({
    Object workouts = freezed,
  }) {
    return _then(_Success(
      workouts:
          workouts == freezed ? _value.workouts : workouts as List<Workout>,
    ));
  }
}

class _$_Success implements _Success {
  const _$_Success({@required this.workouts}) : assert(workouts != null);

  @override
  final List<Workout> workouts;

  @override
  String toString() {
    return 'WorkoutOverviewState.success(workouts: $workouts)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Success &&
            (identical(other.workouts, workouts) ||
                const DeepCollectionEquality()
                    .equals(other.workouts, workouts)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(workouts);

  @override
  _$SuccessCopyWith<_Success> get copyWith =>
      __$SuccessCopyWithImpl<_Success>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result success(List<Workout> workouts),
    @required Result error(),
  }) {
    assert(initial != null);
    assert(success != null);
    assert(error != null);
    return success(workouts);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result success(List<Workout> workouts),
    Result error(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (success != null) {
      return success(workouts);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result success(_Success value),
    @required Result error(_Error value),
  }) {
    assert(initial != null);
    assert(success != null);
    assert(error != null);
    return success(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result success(_Success value),
    Result error(_Error value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _Success implements WorkoutOverviewState {
  const factory _Success({@required List<Workout> workouts}) = _$_Success;

  List<Workout> get workouts;
  _$SuccessCopyWith<_Success> get copyWith;
}

abstract class _$ErrorCopyWith<$Res> {
  factory _$ErrorCopyWith(_Error value, $Res Function(_Error) then) =
      __$ErrorCopyWithImpl<$Res>;
}

class __$ErrorCopyWithImpl<$Res>
    extends _$WorkoutOverviewStateCopyWithImpl<$Res>
    implements _$ErrorCopyWith<$Res> {
  __$ErrorCopyWithImpl(_Error _value, $Res Function(_Error) _then)
      : super(_value, (v) => _then(v as _Error));

  @override
  _Error get _value => super._value as _Error;
}

class _$_Error implements _Error {
  const _$_Error();

  @override
  String toString() {
    return 'WorkoutOverviewState.error()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Error);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result success(List<Workout> workouts),
    @required Result error(),
  }) {
    assert(initial != null);
    assert(success != null);
    assert(error != null);
    return error();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result success(List<Workout> workouts),
    Result error(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result success(_Success value),
    @required Result error(_Error value),
  }) {
    assert(initial != null);
    assert(success != null);
    assert(error != null);
    return error(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result success(_Success value),
    Result error(_Error value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements WorkoutOverviewState {
  const factory _Error() = _$_Error;
}
