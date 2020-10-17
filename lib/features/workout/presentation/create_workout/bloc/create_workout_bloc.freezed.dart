// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'create_workout_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$CreateWorkoutEventTearOff {
  const _$CreateWorkoutEventTearOff();

// ignore: unused_element
  _TitleSubmitted titleSubmitted(String title) {
    return _TitleSubmitted(
      title,
    );
  }

// ignore: unused_element
  _RoutineSubmitted routineSubmitted(List<int> daysOfWeek) {
    return _RoutineSubmitted(
      daysOfWeek,
    );
  }

// ignore: unused_element
  _ExercisesSubmitted exercisesSubmitted() {
    return const _ExercisesSubmitted();
  }

// ignore: unused_element
  _AddedExerciseToList addedExerciseToList(UserExercise exercise) {
    return _AddedExerciseToList(
      exercise,
    );
  }

// ignore: unused_element
  _RemovedExerciseFromList removedExerciseFromList(UserExercise exercise) {
    return _RemovedExerciseFromList(
      exercise,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $CreateWorkoutEvent = _$CreateWorkoutEventTearOff();

/// @nodoc
mixin _$CreateWorkoutEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result titleSubmitted(String title),
    @required Result routineSubmitted(List<int> daysOfWeek),
    @required Result exercisesSubmitted(),
    @required Result addedExerciseToList(UserExercise exercise),
    @required Result removedExerciseFromList(UserExercise exercise),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result titleSubmitted(String title),
    Result routineSubmitted(List<int> daysOfWeek),
    Result exercisesSubmitted(),
    Result addedExerciseToList(UserExercise exercise),
    Result removedExerciseFromList(UserExercise exercise),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result titleSubmitted(_TitleSubmitted value),
    @required Result routineSubmitted(_RoutineSubmitted value),
    @required Result exercisesSubmitted(_ExercisesSubmitted value),
    @required Result addedExerciseToList(_AddedExerciseToList value),
    @required Result removedExerciseFromList(_RemovedExerciseFromList value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result titleSubmitted(_TitleSubmitted value),
    Result routineSubmitted(_RoutineSubmitted value),
    Result exercisesSubmitted(_ExercisesSubmitted value),
    Result addedExerciseToList(_AddedExerciseToList value),
    Result removedExerciseFromList(_RemovedExerciseFromList value),
    @required Result orElse(),
  });
}

/// @nodoc
abstract class $CreateWorkoutEventCopyWith<$Res> {
  factory $CreateWorkoutEventCopyWith(
          CreateWorkoutEvent value, $Res Function(CreateWorkoutEvent) then) =
      _$CreateWorkoutEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$CreateWorkoutEventCopyWithImpl<$Res>
    implements $CreateWorkoutEventCopyWith<$Res> {
  _$CreateWorkoutEventCopyWithImpl(this._value, this._then);

  final CreateWorkoutEvent _value;
  // ignore: unused_field
  final $Res Function(CreateWorkoutEvent) _then;
}

/// @nodoc
abstract class _$TitleSubmittedCopyWith<$Res> {
  factory _$TitleSubmittedCopyWith(
          _TitleSubmitted value, $Res Function(_TitleSubmitted) then) =
      __$TitleSubmittedCopyWithImpl<$Res>;
  $Res call({String title});
}

/// @nodoc
class __$TitleSubmittedCopyWithImpl<$Res>
    extends _$CreateWorkoutEventCopyWithImpl<$Res>
    implements _$TitleSubmittedCopyWith<$Res> {
  __$TitleSubmittedCopyWithImpl(
      _TitleSubmitted _value, $Res Function(_TitleSubmitted) _then)
      : super(_value, (v) => _then(v as _TitleSubmitted));

  @override
  _TitleSubmitted get _value => super._value as _TitleSubmitted;

  @override
  $Res call({
    Object title = freezed,
  }) {
    return _then(_TitleSubmitted(
      title == freezed ? _value.title : title as String,
    ));
  }
}

/// @nodoc
class _$_TitleSubmitted implements _TitleSubmitted {
  const _$_TitleSubmitted(this.title) : assert(title != null);

  @override
  final String title;

  @override
  String toString() {
    return 'CreateWorkoutEvent.titleSubmitted(title: $title)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _TitleSubmitted &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(title);

  @override
  _$TitleSubmittedCopyWith<_TitleSubmitted> get copyWith =>
      __$TitleSubmittedCopyWithImpl<_TitleSubmitted>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result titleSubmitted(String title),
    @required Result routineSubmitted(List<int> daysOfWeek),
    @required Result exercisesSubmitted(),
    @required Result addedExerciseToList(UserExercise exercise),
    @required Result removedExerciseFromList(UserExercise exercise),
  }) {
    assert(titleSubmitted != null);
    assert(routineSubmitted != null);
    assert(exercisesSubmitted != null);
    assert(addedExerciseToList != null);
    assert(removedExerciseFromList != null);
    return titleSubmitted(title);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result titleSubmitted(String title),
    Result routineSubmitted(List<int> daysOfWeek),
    Result exercisesSubmitted(),
    Result addedExerciseToList(UserExercise exercise),
    Result removedExerciseFromList(UserExercise exercise),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (titleSubmitted != null) {
      return titleSubmitted(title);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result titleSubmitted(_TitleSubmitted value),
    @required Result routineSubmitted(_RoutineSubmitted value),
    @required Result exercisesSubmitted(_ExercisesSubmitted value),
    @required Result addedExerciseToList(_AddedExerciseToList value),
    @required Result removedExerciseFromList(_RemovedExerciseFromList value),
  }) {
    assert(titleSubmitted != null);
    assert(routineSubmitted != null);
    assert(exercisesSubmitted != null);
    assert(addedExerciseToList != null);
    assert(removedExerciseFromList != null);
    return titleSubmitted(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result titleSubmitted(_TitleSubmitted value),
    Result routineSubmitted(_RoutineSubmitted value),
    Result exercisesSubmitted(_ExercisesSubmitted value),
    Result addedExerciseToList(_AddedExerciseToList value),
    Result removedExerciseFromList(_RemovedExerciseFromList value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (titleSubmitted != null) {
      return titleSubmitted(this);
    }
    return orElse();
  }
}

abstract class _TitleSubmitted implements CreateWorkoutEvent {
  const factory _TitleSubmitted(String title) = _$_TitleSubmitted;

  String get title;
  _$TitleSubmittedCopyWith<_TitleSubmitted> get copyWith;
}

/// @nodoc
abstract class _$RoutineSubmittedCopyWith<$Res> {
  factory _$RoutineSubmittedCopyWith(
          _RoutineSubmitted value, $Res Function(_RoutineSubmitted) then) =
      __$RoutineSubmittedCopyWithImpl<$Res>;
  $Res call({List<int> daysOfWeek});
}

/// @nodoc
class __$RoutineSubmittedCopyWithImpl<$Res>
    extends _$CreateWorkoutEventCopyWithImpl<$Res>
    implements _$RoutineSubmittedCopyWith<$Res> {
  __$RoutineSubmittedCopyWithImpl(
      _RoutineSubmitted _value, $Res Function(_RoutineSubmitted) _then)
      : super(_value, (v) => _then(v as _RoutineSubmitted));

  @override
  _RoutineSubmitted get _value => super._value as _RoutineSubmitted;

  @override
  $Res call({
    Object daysOfWeek = freezed,
  }) {
    return _then(_RoutineSubmitted(
      daysOfWeek == freezed ? _value.daysOfWeek : daysOfWeek as List<int>,
    ));
  }
}

/// @nodoc
class _$_RoutineSubmitted implements _RoutineSubmitted {
  const _$_RoutineSubmitted(this.daysOfWeek) : assert(daysOfWeek != null);

  @override
  final List<int> daysOfWeek;

  @override
  String toString() {
    return 'CreateWorkoutEvent.routineSubmitted(daysOfWeek: $daysOfWeek)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _RoutineSubmitted &&
            (identical(other.daysOfWeek, daysOfWeek) ||
                const DeepCollectionEquality()
                    .equals(other.daysOfWeek, daysOfWeek)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(daysOfWeek);

  @override
  _$RoutineSubmittedCopyWith<_RoutineSubmitted> get copyWith =>
      __$RoutineSubmittedCopyWithImpl<_RoutineSubmitted>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result titleSubmitted(String title),
    @required Result routineSubmitted(List<int> daysOfWeek),
    @required Result exercisesSubmitted(),
    @required Result addedExerciseToList(UserExercise exercise),
    @required Result removedExerciseFromList(UserExercise exercise),
  }) {
    assert(titleSubmitted != null);
    assert(routineSubmitted != null);
    assert(exercisesSubmitted != null);
    assert(addedExerciseToList != null);
    assert(removedExerciseFromList != null);
    return routineSubmitted(daysOfWeek);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result titleSubmitted(String title),
    Result routineSubmitted(List<int> daysOfWeek),
    Result exercisesSubmitted(),
    Result addedExerciseToList(UserExercise exercise),
    Result removedExerciseFromList(UserExercise exercise),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (routineSubmitted != null) {
      return routineSubmitted(daysOfWeek);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result titleSubmitted(_TitleSubmitted value),
    @required Result routineSubmitted(_RoutineSubmitted value),
    @required Result exercisesSubmitted(_ExercisesSubmitted value),
    @required Result addedExerciseToList(_AddedExerciseToList value),
    @required Result removedExerciseFromList(_RemovedExerciseFromList value),
  }) {
    assert(titleSubmitted != null);
    assert(routineSubmitted != null);
    assert(exercisesSubmitted != null);
    assert(addedExerciseToList != null);
    assert(removedExerciseFromList != null);
    return routineSubmitted(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result titleSubmitted(_TitleSubmitted value),
    Result routineSubmitted(_RoutineSubmitted value),
    Result exercisesSubmitted(_ExercisesSubmitted value),
    Result addedExerciseToList(_AddedExerciseToList value),
    Result removedExerciseFromList(_RemovedExerciseFromList value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (routineSubmitted != null) {
      return routineSubmitted(this);
    }
    return orElse();
  }
}

abstract class _RoutineSubmitted implements CreateWorkoutEvent {
  const factory _RoutineSubmitted(List<int> daysOfWeek) = _$_RoutineSubmitted;

  List<int> get daysOfWeek;
  _$RoutineSubmittedCopyWith<_RoutineSubmitted> get copyWith;
}

/// @nodoc
abstract class _$ExercisesSubmittedCopyWith<$Res> {
  factory _$ExercisesSubmittedCopyWith(
          _ExercisesSubmitted value, $Res Function(_ExercisesSubmitted) then) =
      __$ExercisesSubmittedCopyWithImpl<$Res>;
}

/// @nodoc
class __$ExercisesSubmittedCopyWithImpl<$Res>
    extends _$CreateWorkoutEventCopyWithImpl<$Res>
    implements _$ExercisesSubmittedCopyWith<$Res> {
  __$ExercisesSubmittedCopyWithImpl(
      _ExercisesSubmitted _value, $Res Function(_ExercisesSubmitted) _then)
      : super(_value, (v) => _then(v as _ExercisesSubmitted));

  @override
  _ExercisesSubmitted get _value => super._value as _ExercisesSubmitted;
}

/// @nodoc
class _$_ExercisesSubmitted implements _ExercisesSubmitted {
  const _$_ExercisesSubmitted();

  @override
  String toString() {
    return 'CreateWorkoutEvent.exercisesSubmitted()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _ExercisesSubmitted);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result titleSubmitted(String title),
    @required Result routineSubmitted(List<int> daysOfWeek),
    @required Result exercisesSubmitted(),
    @required Result addedExerciseToList(UserExercise exercise),
    @required Result removedExerciseFromList(UserExercise exercise),
  }) {
    assert(titleSubmitted != null);
    assert(routineSubmitted != null);
    assert(exercisesSubmitted != null);
    assert(addedExerciseToList != null);
    assert(removedExerciseFromList != null);
    return exercisesSubmitted();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result titleSubmitted(String title),
    Result routineSubmitted(List<int> daysOfWeek),
    Result exercisesSubmitted(),
    Result addedExerciseToList(UserExercise exercise),
    Result removedExerciseFromList(UserExercise exercise),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (exercisesSubmitted != null) {
      return exercisesSubmitted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result titleSubmitted(_TitleSubmitted value),
    @required Result routineSubmitted(_RoutineSubmitted value),
    @required Result exercisesSubmitted(_ExercisesSubmitted value),
    @required Result addedExerciseToList(_AddedExerciseToList value),
    @required Result removedExerciseFromList(_RemovedExerciseFromList value),
  }) {
    assert(titleSubmitted != null);
    assert(routineSubmitted != null);
    assert(exercisesSubmitted != null);
    assert(addedExerciseToList != null);
    assert(removedExerciseFromList != null);
    return exercisesSubmitted(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result titleSubmitted(_TitleSubmitted value),
    Result routineSubmitted(_RoutineSubmitted value),
    Result exercisesSubmitted(_ExercisesSubmitted value),
    Result addedExerciseToList(_AddedExerciseToList value),
    Result removedExerciseFromList(_RemovedExerciseFromList value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (exercisesSubmitted != null) {
      return exercisesSubmitted(this);
    }
    return orElse();
  }
}

abstract class _ExercisesSubmitted implements CreateWorkoutEvent {
  const factory _ExercisesSubmitted() = _$_ExercisesSubmitted;
}

/// @nodoc
abstract class _$AddedExerciseToListCopyWith<$Res> {
  factory _$AddedExerciseToListCopyWith(_AddedExerciseToList value,
          $Res Function(_AddedExerciseToList) then) =
      __$AddedExerciseToListCopyWithImpl<$Res>;
  $Res call({UserExercise exercise});
}

/// @nodoc
class __$AddedExerciseToListCopyWithImpl<$Res>
    extends _$CreateWorkoutEventCopyWithImpl<$Res>
    implements _$AddedExerciseToListCopyWith<$Res> {
  __$AddedExerciseToListCopyWithImpl(
      _AddedExerciseToList _value, $Res Function(_AddedExerciseToList) _then)
      : super(_value, (v) => _then(v as _AddedExerciseToList));

  @override
  _AddedExerciseToList get _value => super._value as _AddedExerciseToList;

  @override
  $Res call({
    Object exercise = freezed,
  }) {
    return _then(_AddedExerciseToList(
      exercise == freezed ? _value.exercise : exercise as UserExercise,
    ));
  }
}

/// @nodoc
class _$_AddedExerciseToList implements _AddedExerciseToList {
  const _$_AddedExerciseToList(this.exercise) : assert(exercise != null);

  @override
  final UserExercise exercise;

  @override
  String toString() {
    return 'CreateWorkoutEvent.addedExerciseToList(exercise: $exercise)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AddedExerciseToList &&
            (identical(other.exercise, exercise) ||
                const DeepCollectionEquality()
                    .equals(other.exercise, exercise)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(exercise);

  @override
  _$AddedExerciseToListCopyWith<_AddedExerciseToList> get copyWith =>
      __$AddedExerciseToListCopyWithImpl<_AddedExerciseToList>(
          this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result titleSubmitted(String title),
    @required Result routineSubmitted(List<int> daysOfWeek),
    @required Result exercisesSubmitted(),
    @required Result addedExerciseToList(UserExercise exercise),
    @required Result removedExerciseFromList(UserExercise exercise),
  }) {
    assert(titleSubmitted != null);
    assert(routineSubmitted != null);
    assert(exercisesSubmitted != null);
    assert(addedExerciseToList != null);
    assert(removedExerciseFromList != null);
    return addedExerciseToList(exercise);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result titleSubmitted(String title),
    Result routineSubmitted(List<int> daysOfWeek),
    Result exercisesSubmitted(),
    Result addedExerciseToList(UserExercise exercise),
    Result removedExerciseFromList(UserExercise exercise),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (addedExerciseToList != null) {
      return addedExerciseToList(exercise);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result titleSubmitted(_TitleSubmitted value),
    @required Result routineSubmitted(_RoutineSubmitted value),
    @required Result exercisesSubmitted(_ExercisesSubmitted value),
    @required Result addedExerciseToList(_AddedExerciseToList value),
    @required Result removedExerciseFromList(_RemovedExerciseFromList value),
  }) {
    assert(titleSubmitted != null);
    assert(routineSubmitted != null);
    assert(exercisesSubmitted != null);
    assert(addedExerciseToList != null);
    assert(removedExerciseFromList != null);
    return addedExerciseToList(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result titleSubmitted(_TitleSubmitted value),
    Result routineSubmitted(_RoutineSubmitted value),
    Result exercisesSubmitted(_ExercisesSubmitted value),
    Result addedExerciseToList(_AddedExerciseToList value),
    Result removedExerciseFromList(_RemovedExerciseFromList value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (addedExerciseToList != null) {
      return addedExerciseToList(this);
    }
    return orElse();
  }
}

abstract class _AddedExerciseToList implements CreateWorkoutEvent {
  const factory _AddedExerciseToList(UserExercise exercise) =
      _$_AddedExerciseToList;

  UserExercise get exercise;
  _$AddedExerciseToListCopyWith<_AddedExerciseToList> get copyWith;
}

/// @nodoc
abstract class _$RemovedExerciseFromListCopyWith<$Res> {
  factory _$RemovedExerciseFromListCopyWith(_RemovedExerciseFromList value,
          $Res Function(_RemovedExerciseFromList) then) =
      __$RemovedExerciseFromListCopyWithImpl<$Res>;
  $Res call({UserExercise exercise});
}

/// @nodoc
class __$RemovedExerciseFromListCopyWithImpl<$Res>
    extends _$CreateWorkoutEventCopyWithImpl<$Res>
    implements _$RemovedExerciseFromListCopyWith<$Res> {
  __$RemovedExerciseFromListCopyWithImpl(_RemovedExerciseFromList _value,
      $Res Function(_RemovedExerciseFromList) _then)
      : super(_value, (v) => _then(v as _RemovedExerciseFromList));

  @override
  _RemovedExerciseFromList get _value =>
      super._value as _RemovedExerciseFromList;

  @override
  $Res call({
    Object exercise = freezed,
  }) {
    return _then(_RemovedExerciseFromList(
      exercise == freezed ? _value.exercise : exercise as UserExercise,
    ));
  }
}

/// @nodoc
class _$_RemovedExerciseFromList implements _RemovedExerciseFromList {
  const _$_RemovedExerciseFromList(this.exercise) : assert(exercise != null);

  @override
  final UserExercise exercise;

  @override
  String toString() {
    return 'CreateWorkoutEvent.removedExerciseFromList(exercise: $exercise)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _RemovedExerciseFromList &&
            (identical(other.exercise, exercise) ||
                const DeepCollectionEquality()
                    .equals(other.exercise, exercise)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(exercise);

  @override
  _$RemovedExerciseFromListCopyWith<_RemovedExerciseFromList> get copyWith =>
      __$RemovedExerciseFromListCopyWithImpl<_RemovedExerciseFromList>(
          this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result titleSubmitted(String title),
    @required Result routineSubmitted(List<int> daysOfWeek),
    @required Result exercisesSubmitted(),
    @required Result addedExerciseToList(UserExercise exercise),
    @required Result removedExerciseFromList(UserExercise exercise),
  }) {
    assert(titleSubmitted != null);
    assert(routineSubmitted != null);
    assert(exercisesSubmitted != null);
    assert(addedExerciseToList != null);
    assert(removedExerciseFromList != null);
    return removedExerciseFromList(exercise);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result titleSubmitted(String title),
    Result routineSubmitted(List<int> daysOfWeek),
    Result exercisesSubmitted(),
    Result addedExerciseToList(UserExercise exercise),
    Result removedExerciseFromList(UserExercise exercise),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (removedExerciseFromList != null) {
      return removedExerciseFromList(exercise);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result titleSubmitted(_TitleSubmitted value),
    @required Result routineSubmitted(_RoutineSubmitted value),
    @required Result exercisesSubmitted(_ExercisesSubmitted value),
    @required Result addedExerciseToList(_AddedExerciseToList value),
    @required Result removedExerciseFromList(_RemovedExerciseFromList value),
  }) {
    assert(titleSubmitted != null);
    assert(routineSubmitted != null);
    assert(exercisesSubmitted != null);
    assert(addedExerciseToList != null);
    assert(removedExerciseFromList != null);
    return removedExerciseFromList(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result titleSubmitted(_TitleSubmitted value),
    Result routineSubmitted(_RoutineSubmitted value),
    Result exercisesSubmitted(_ExercisesSubmitted value),
    Result addedExerciseToList(_AddedExerciseToList value),
    Result removedExerciseFromList(_RemovedExerciseFromList value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (removedExerciseFromList != null) {
      return removedExerciseFromList(this);
    }
    return orElse();
  }
}

abstract class _RemovedExerciseFromList implements CreateWorkoutEvent {
  const factory _RemovedExerciseFromList(UserExercise exercise) =
      _$_RemovedExerciseFromList;

  UserExercise get exercise;
  _$RemovedExerciseFromListCopyWith<_RemovedExerciseFromList> get copyWith;
}

/// @nodoc
class _$CreateWorkoutStateTearOff {
  const _$CreateWorkoutStateTearOff();

// ignore: unused_element
  _CreateWorkoutState call(
      {@required
          String title,
      @required
          List<int> daysOfWeek,
      @required
          List<UserExercise> exercises,
      @required
          bool isSubmitting,
      @required
          Option<Either<WorkoutFailure, Unit>> saveSuccessOrFailureOption}) {
    return _CreateWorkoutState(
      title: title,
      daysOfWeek: daysOfWeek,
      exercises: exercises,
      isSubmitting: isSubmitting,
      saveSuccessOrFailureOption: saveSuccessOrFailureOption,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $CreateWorkoutState = _$CreateWorkoutStateTearOff();

/// @nodoc
mixin _$CreateWorkoutState {
  String get title;
  List<int> get daysOfWeek;
  List<UserExercise> get exercises;
  bool get isSubmitting;
  Option<Either<WorkoutFailure, Unit>> get saveSuccessOrFailureOption;

  $CreateWorkoutStateCopyWith<CreateWorkoutState> get copyWith;
}

/// @nodoc
abstract class $CreateWorkoutStateCopyWith<$Res> {
  factory $CreateWorkoutStateCopyWith(
          CreateWorkoutState value, $Res Function(CreateWorkoutState) then) =
      _$CreateWorkoutStateCopyWithImpl<$Res>;
  $Res call(
      {String title,
      List<int> daysOfWeek,
      List<UserExercise> exercises,
      bool isSubmitting,
      Option<Either<WorkoutFailure, Unit>> saveSuccessOrFailureOption});
}

/// @nodoc
class _$CreateWorkoutStateCopyWithImpl<$Res>
    implements $CreateWorkoutStateCopyWith<$Res> {
  _$CreateWorkoutStateCopyWithImpl(this._value, this._then);

  final CreateWorkoutState _value;
  // ignore: unused_field
  final $Res Function(CreateWorkoutState) _then;

  @override
  $Res call({
    Object title = freezed,
    Object daysOfWeek = freezed,
    Object exercises = freezed,
    Object isSubmitting = freezed,
    Object saveSuccessOrFailureOption = freezed,
  }) {
    return _then(_value.copyWith(
      title: title == freezed ? _value.title : title as String,
      daysOfWeek:
          daysOfWeek == freezed ? _value.daysOfWeek : daysOfWeek as List<int>,
      exercises: exercises == freezed
          ? _value.exercises
          : exercises as List<UserExercise>,
      isSubmitting:
          isSubmitting == freezed ? _value.isSubmitting : isSubmitting as bool,
      saveSuccessOrFailureOption: saveSuccessOrFailureOption == freezed
          ? _value.saveSuccessOrFailureOption
          : saveSuccessOrFailureOption as Option<Either<WorkoutFailure, Unit>>,
    ));
  }
}

/// @nodoc
abstract class _$CreateWorkoutStateCopyWith<$Res>
    implements $CreateWorkoutStateCopyWith<$Res> {
  factory _$CreateWorkoutStateCopyWith(
          _CreateWorkoutState value, $Res Function(_CreateWorkoutState) then) =
      __$CreateWorkoutStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {String title,
      List<int> daysOfWeek,
      List<UserExercise> exercises,
      bool isSubmitting,
      Option<Either<WorkoutFailure, Unit>> saveSuccessOrFailureOption});
}

/// @nodoc
class __$CreateWorkoutStateCopyWithImpl<$Res>
    extends _$CreateWorkoutStateCopyWithImpl<$Res>
    implements _$CreateWorkoutStateCopyWith<$Res> {
  __$CreateWorkoutStateCopyWithImpl(
      _CreateWorkoutState _value, $Res Function(_CreateWorkoutState) _then)
      : super(_value, (v) => _then(v as _CreateWorkoutState));

  @override
  _CreateWorkoutState get _value => super._value as _CreateWorkoutState;

  @override
  $Res call({
    Object title = freezed,
    Object daysOfWeek = freezed,
    Object exercises = freezed,
    Object isSubmitting = freezed,
    Object saveSuccessOrFailureOption = freezed,
  }) {
    return _then(_CreateWorkoutState(
      title: title == freezed ? _value.title : title as String,
      daysOfWeek:
          daysOfWeek == freezed ? _value.daysOfWeek : daysOfWeek as List<int>,
      exercises: exercises == freezed
          ? _value.exercises
          : exercises as List<UserExercise>,
      isSubmitting:
          isSubmitting == freezed ? _value.isSubmitting : isSubmitting as bool,
      saveSuccessOrFailureOption: saveSuccessOrFailureOption == freezed
          ? _value.saveSuccessOrFailureOption
          : saveSuccessOrFailureOption as Option<Either<WorkoutFailure, Unit>>,
    ));
  }
}

/// @nodoc
class _$_CreateWorkoutState implements _CreateWorkoutState {
  const _$_CreateWorkoutState(
      {@required this.title,
      @required this.daysOfWeek,
      @required this.exercises,
      @required this.isSubmitting,
      @required this.saveSuccessOrFailureOption})
      : assert(title != null),
        assert(daysOfWeek != null),
        assert(exercises != null),
        assert(isSubmitting != null),
        assert(saveSuccessOrFailureOption != null);

  @override
  final String title;
  @override
  final List<int> daysOfWeek;
  @override
  final List<UserExercise> exercises;
  @override
  final bool isSubmitting;
  @override
  final Option<Either<WorkoutFailure, Unit>> saveSuccessOrFailureOption;

  @override
  String toString() {
    return 'CreateWorkoutState(title: $title, daysOfWeek: $daysOfWeek, exercises: $exercises, isSubmitting: $isSubmitting, saveSuccessOrFailureOption: $saveSuccessOrFailureOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CreateWorkoutState &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.daysOfWeek, daysOfWeek) ||
                const DeepCollectionEquality()
                    .equals(other.daysOfWeek, daysOfWeek)) &&
            (identical(other.exercises, exercises) ||
                const DeepCollectionEquality()
                    .equals(other.exercises, exercises)) &&
            (identical(other.isSubmitting, isSubmitting) ||
                const DeepCollectionEquality()
                    .equals(other.isSubmitting, isSubmitting)) &&
            (identical(other.saveSuccessOrFailureOption,
                    saveSuccessOrFailureOption) ||
                const DeepCollectionEquality().equals(
                    other.saveSuccessOrFailureOption,
                    saveSuccessOrFailureOption)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(daysOfWeek) ^
      const DeepCollectionEquality().hash(exercises) ^
      const DeepCollectionEquality().hash(isSubmitting) ^
      const DeepCollectionEquality().hash(saveSuccessOrFailureOption);

  @override
  _$CreateWorkoutStateCopyWith<_CreateWorkoutState> get copyWith =>
      __$CreateWorkoutStateCopyWithImpl<_CreateWorkoutState>(this, _$identity);
}

abstract class _CreateWorkoutState implements CreateWorkoutState {
  const factory _CreateWorkoutState(
      {@required
          String title,
      @required
          List<int> daysOfWeek,
      @required
          List<UserExercise> exercises,
      @required
          bool isSubmitting,
      @required
          Option<Either<WorkoutFailure, Unit>>
              saveSuccessOrFailureOption}) = _$_CreateWorkoutState;

  @override
  String get title;
  @override
  List<int> get daysOfWeek;
  @override
  List<UserExercise> get exercises;
  @override
  bool get isSubmitting;
  @override
  Option<Either<WorkoutFailure, Unit>> get saveSuccessOrFailureOption;
  @override
  _$CreateWorkoutStateCopyWith<_CreateWorkoutState> get copyWith;
}
