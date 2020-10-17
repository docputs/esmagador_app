// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'choose_exercise_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$ChooseExerciseEventTearOff {
  const _$ChooseExerciseEventTearOff();

// ignore: unused_element
  _HasChosenExercise hasChosenExercise({@required Exercise exercise}) {
    return _HasChosenExercise(
      exercise: exercise,
    );
  }

// ignore: unused_element
  _IncrementedSets incrementedSets() {
    return const _IncrementedSets();
  }

// ignore: unused_element
  _DecrementedSets decrementedSets() {
    return const _DecrementedSets();
  }

// ignore: unused_element
  _ChangedMaximumReps changedMaximumReps({@required int value}) {
    return _ChangedMaximumReps(
      value: value,
    );
  }

// ignore: unused_element
  _ChangedMinimumReps changedMinimumReps({@required int value}) {
    return _ChangedMinimumReps(
      value: value,
    );
  }

// ignore: unused_element
  _SubmittedExercise submittedExercise() {
    return const _SubmittedExercise();
  }

// ignore: unused_element
  _CancelledByUser cancelledByUser() {
    return const _CancelledByUser();
  }
}

/// @nodoc
// ignore: unused_element
const $ChooseExerciseEvent = _$ChooseExerciseEventTearOff();

/// @nodoc
mixin _$ChooseExerciseEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result hasChosenExercise(Exercise exercise),
    @required Result incrementedSets(),
    @required Result decrementedSets(),
    @required Result changedMaximumReps(int value),
    @required Result changedMinimumReps(int value),
    @required Result submittedExercise(),
    @required Result cancelledByUser(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result hasChosenExercise(Exercise exercise),
    Result incrementedSets(),
    Result decrementedSets(),
    Result changedMaximumReps(int value),
    Result changedMinimumReps(int value),
    Result submittedExercise(),
    Result cancelledByUser(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result hasChosenExercise(_HasChosenExercise value),
    @required Result incrementedSets(_IncrementedSets value),
    @required Result decrementedSets(_DecrementedSets value),
    @required Result changedMaximumReps(_ChangedMaximumReps value),
    @required Result changedMinimumReps(_ChangedMinimumReps value),
    @required Result submittedExercise(_SubmittedExercise value),
    @required Result cancelledByUser(_CancelledByUser value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result hasChosenExercise(_HasChosenExercise value),
    Result incrementedSets(_IncrementedSets value),
    Result decrementedSets(_DecrementedSets value),
    Result changedMaximumReps(_ChangedMaximumReps value),
    Result changedMinimumReps(_ChangedMinimumReps value),
    Result submittedExercise(_SubmittedExercise value),
    Result cancelledByUser(_CancelledByUser value),
    @required Result orElse(),
  });
}

/// @nodoc
abstract class $ChooseExerciseEventCopyWith<$Res> {
  factory $ChooseExerciseEventCopyWith(
          ChooseExerciseEvent value, $Res Function(ChooseExerciseEvent) then) =
      _$ChooseExerciseEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$ChooseExerciseEventCopyWithImpl<$Res>
    implements $ChooseExerciseEventCopyWith<$Res> {
  _$ChooseExerciseEventCopyWithImpl(this._value, this._then);

  final ChooseExerciseEvent _value;
  // ignore: unused_field
  final $Res Function(ChooseExerciseEvent) _then;
}

/// @nodoc
abstract class _$HasChosenExerciseCopyWith<$Res> {
  factory _$HasChosenExerciseCopyWith(
          _HasChosenExercise value, $Res Function(_HasChosenExercise) then) =
      __$HasChosenExerciseCopyWithImpl<$Res>;
  $Res call({Exercise exercise});
}

/// @nodoc
class __$HasChosenExerciseCopyWithImpl<$Res>
    extends _$ChooseExerciseEventCopyWithImpl<$Res>
    implements _$HasChosenExerciseCopyWith<$Res> {
  __$HasChosenExerciseCopyWithImpl(
      _HasChosenExercise _value, $Res Function(_HasChosenExercise) _then)
      : super(_value, (v) => _then(v as _HasChosenExercise));

  @override
  _HasChosenExercise get _value => super._value as _HasChosenExercise;

  @override
  $Res call({
    Object exercise = freezed,
  }) {
    return _then(_HasChosenExercise(
      exercise: exercise == freezed ? _value.exercise : exercise as Exercise,
    ));
  }
}

/// @nodoc
class _$_HasChosenExercise implements _HasChosenExercise {
  const _$_HasChosenExercise({@required this.exercise})
      : assert(exercise != null);

  @override
  final Exercise exercise;

  @override
  String toString() {
    return 'ChooseExerciseEvent.hasChosenExercise(exercise: $exercise)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _HasChosenExercise &&
            (identical(other.exercise, exercise) ||
                const DeepCollectionEquality()
                    .equals(other.exercise, exercise)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(exercise);

  @override
  _$HasChosenExerciseCopyWith<_HasChosenExercise> get copyWith =>
      __$HasChosenExerciseCopyWithImpl<_HasChosenExercise>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result hasChosenExercise(Exercise exercise),
    @required Result incrementedSets(),
    @required Result decrementedSets(),
    @required Result changedMaximumReps(int value),
    @required Result changedMinimumReps(int value),
    @required Result submittedExercise(),
    @required Result cancelledByUser(),
  }) {
    assert(hasChosenExercise != null);
    assert(incrementedSets != null);
    assert(decrementedSets != null);
    assert(changedMaximumReps != null);
    assert(changedMinimumReps != null);
    assert(submittedExercise != null);
    assert(cancelledByUser != null);
    return hasChosenExercise(exercise);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result hasChosenExercise(Exercise exercise),
    Result incrementedSets(),
    Result decrementedSets(),
    Result changedMaximumReps(int value),
    Result changedMinimumReps(int value),
    Result submittedExercise(),
    Result cancelledByUser(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (hasChosenExercise != null) {
      return hasChosenExercise(exercise);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result hasChosenExercise(_HasChosenExercise value),
    @required Result incrementedSets(_IncrementedSets value),
    @required Result decrementedSets(_DecrementedSets value),
    @required Result changedMaximumReps(_ChangedMaximumReps value),
    @required Result changedMinimumReps(_ChangedMinimumReps value),
    @required Result submittedExercise(_SubmittedExercise value),
    @required Result cancelledByUser(_CancelledByUser value),
  }) {
    assert(hasChosenExercise != null);
    assert(incrementedSets != null);
    assert(decrementedSets != null);
    assert(changedMaximumReps != null);
    assert(changedMinimumReps != null);
    assert(submittedExercise != null);
    assert(cancelledByUser != null);
    return hasChosenExercise(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result hasChosenExercise(_HasChosenExercise value),
    Result incrementedSets(_IncrementedSets value),
    Result decrementedSets(_DecrementedSets value),
    Result changedMaximumReps(_ChangedMaximumReps value),
    Result changedMinimumReps(_ChangedMinimumReps value),
    Result submittedExercise(_SubmittedExercise value),
    Result cancelledByUser(_CancelledByUser value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (hasChosenExercise != null) {
      return hasChosenExercise(this);
    }
    return orElse();
  }
}

abstract class _HasChosenExercise implements ChooseExerciseEvent {
  const factory _HasChosenExercise({@required Exercise exercise}) =
      _$_HasChosenExercise;

  Exercise get exercise;
  _$HasChosenExerciseCopyWith<_HasChosenExercise> get copyWith;
}

/// @nodoc
abstract class _$IncrementedSetsCopyWith<$Res> {
  factory _$IncrementedSetsCopyWith(
          _IncrementedSets value, $Res Function(_IncrementedSets) then) =
      __$IncrementedSetsCopyWithImpl<$Res>;
}

/// @nodoc
class __$IncrementedSetsCopyWithImpl<$Res>
    extends _$ChooseExerciseEventCopyWithImpl<$Res>
    implements _$IncrementedSetsCopyWith<$Res> {
  __$IncrementedSetsCopyWithImpl(
      _IncrementedSets _value, $Res Function(_IncrementedSets) _then)
      : super(_value, (v) => _then(v as _IncrementedSets));

  @override
  _IncrementedSets get _value => super._value as _IncrementedSets;
}

/// @nodoc
class _$_IncrementedSets implements _IncrementedSets {
  const _$_IncrementedSets();

  @override
  String toString() {
    return 'ChooseExerciseEvent.incrementedSets()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _IncrementedSets);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result hasChosenExercise(Exercise exercise),
    @required Result incrementedSets(),
    @required Result decrementedSets(),
    @required Result changedMaximumReps(int value),
    @required Result changedMinimumReps(int value),
    @required Result submittedExercise(),
    @required Result cancelledByUser(),
  }) {
    assert(hasChosenExercise != null);
    assert(incrementedSets != null);
    assert(decrementedSets != null);
    assert(changedMaximumReps != null);
    assert(changedMinimumReps != null);
    assert(submittedExercise != null);
    assert(cancelledByUser != null);
    return incrementedSets();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result hasChosenExercise(Exercise exercise),
    Result incrementedSets(),
    Result decrementedSets(),
    Result changedMaximumReps(int value),
    Result changedMinimumReps(int value),
    Result submittedExercise(),
    Result cancelledByUser(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (incrementedSets != null) {
      return incrementedSets();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result hasChosenExercise(_HasChosenExercise value),
    @required Result incrementedSets(_IncrementedSets value),
    @required Result decrementedSets(_DecrementedSets value),
    @required Result changedMaximumReps(_ChangedMaximumReps value),
    @required Result changedMinimumReps(_ChangedMinimumReps value),
    @required Result submittedExercise(_SubmittedExercise value),
    @required Result cancelledByUser(_CancelledByUser value),
  }) {
    assert(hasChosenExercise != null);
    assert(incrementedSets != null);
    assert(decrementedSets != null);
    assert(changedMaximumReps != null);
    assert(changedMinimumReps != null);
    assert(submittedExercise != null);
    assert(cancelledByUser != null);
    return incrementedSets(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result hasChosenExercise(_HasChosenExercise value),
    Result incrementedSets(_IncrementedSets value),
    Result decrementedSets(_DecrementedSets value),
    Result changedMaximumReps(_ChangedMaximumReps value),
    Result changedMinimumReps(_ChangedMinimumReps value),
    Result submittedExercise(_SubmittedExercise value),
    Result cancelledByUser(_CancelledByUser value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (incrementedSets != null) {
      return incrementedSets(this);
    }
    return orElse();
  }
}

abstract class _IncrementedSets implements ChooseExerciseEvent {
  const factory _IncrementedSets() = _$_IncrementedSets;
}

/// @nodoc
abstract class _$DecrementedSetsCopyWith<$Res> {
  factory _$DecrementedSetsCopyWith(
          _DecrementedSets value, $Res Function(_DecrementedSets) then) =
      __$DecrementedSetsCopyWithImpl<$Res>;
}

/// @nodoc
class __$DecrementedSetsCopyWithImpl<$Res>
    extends _$ChooseExerciseEventCopyWithImpl<$Res>
    implements _$DecrementedSetsCopyWith<$Res> {
  __$DecrementedSetsCopyWithImpl(
      _DecrementedSets _value, $Res Function(_DecrementedSets) _then)
      : super(_value, (v) => _then(v as _DecrementedSets));

  @override
  _DecrementedSets get _value => super._value as _DecrementedSets;
}

/// @nodoc
class _$_DecrementedSets implements _DecrementedSets {
  const _$_DecrementedSets();

  @override
  String toString() {
    return 'ChooseExerciseEvent.decrementedSets()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _DecrementedSets);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result hasChosenExercise(Exercise exercise),
    @required Result incrementedSets(),
    @required Result decrementedSets(),
    @required Result changedMaximumReps(int value),
    @required Result changedMinimumReps(int value),
    @required Result submittedExercise(),
    @required Result cancelledByUser(),
  }) {
    assert(hasChosenExercise != null);
    assert(incrementedSets != null);
    assert(decrementedSets != null);
    assert(changedMaximumReps != null);
    assert(changedMinimumReps != null);
    assert(submittedExercise != null);
    assert(cancelledByUser != null);
    return decrementedSets();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result hasChosenExercise(Exercise exercise),
    Result incrementedSets(),
    Result decrementedSets(),
    Result changedMaximumReps(int value),
    Result changedMinimumReps(int value),
    Result submittedExercise(),
    Result cancelledByUser(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (decrementedSets != null) {
      return decrementedSets();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result hasChosenExercise(_HasChosenExercise value),
    @required Result incrementedSets(_IncrementedSets value),
    @required Result decrementedSets(_DecrementedSets value),
    @required Result changedMaximumReps(_ChangedMaximumReps value),
    @required Result changedMinimumReps(_ChangedMinimumReps value),
    @required Result submittedExercise(_SubmittedExercise value),
    @required Result cancelledByUser(_CancelledByUser value),
  }) {
    assert(hasChosenExercise != null);
    assert(incrementedSets != null);
    assert(decrementedSets != null);
    assert(changedMaximumReps != null);
    assert(changedMinimumReps != null);
    assert(submittedExercise != null);
    assert(cancelledByUser != null);
    return decrementedSets(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result hasChosenExercise(_HasChosenExercise value),
    Result incrementedSets(_IncrementedSets value),
    Result decrementedSets(_DecrementedSets value),
    Result changedMaximumReps(_ChangedMaximumReps value),
    Result changedMinimumReps(_ChangedMinimumReps value),
    Result submittedExercise(_SubmittedExercise value),
    Result cancelledByUser(_CancelledByUser value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (decrementedSets != null) {
      return decrementedSets(this);
    }
    return orElse();
  }
}

abstract class _DecrementedSets implements ChooseExerciseEvent {
  const factory _DecrementedSets() = _$_DecrementedSets;
}

/// @nodoc
abstract class _$ChangedMaximumRepsCopyWith<$Res> {
  factory _$ChangedMaximumRepsCopyWith(
          _ChangedMaximumReps value, $Res Function(_ChangedMaximumReps) then) =
      __$ChangedMaximumRepsCopyWithImpl<$Res>;
  $Res call({int value});
}

/// @nodoc
class __$ChangedMaximumRepsCopyWithImpl<$Res>
    extends _$ChooseExerciseEventCopyWithImpl<$Res>
    implements _$ChangedMaximumRepsCopyWith<$Res> {
  __$ChangedMaximumRepsCopyWithImpl(
      _ChangedMaximumReps _value, $Res Function(_ChangedMaximumReps) _then)
      : super(_value, (v) => _then(v as _ChangedMaximumReps));

  @override
  _ChangedMaximumReps get _value => super._value as _ChangedMaximumReps;

  @override
  $Res call({
    Object value = freezed,
  }) {
    return _then(_ChangedMaximumReps(
      value: value == freezed ? _value.value : value as int,
    ));
  }
}

/// @nodoc
class _$_ChangedMaximumReps implements _ChangedMaximumReps {
  const _$_ChangedMaximumReps({@required this.value}) : assert(value != null);

  @override
  final int value;

  @override
  String toString() {
    return 'ChooseExerciseEvent.changedMaximumReps(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ChangedMaximumReps &&
            (identical(other.value, value) ||
                const DeepCollectionEquality().equals(other.value, value)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(value);

  @override
  _$ChangedMaximumRepsCopyWith<_ChangedMaximumReps> get copyWith =>
      __$ChangedMaximumRepsCopyWithImpl<_ChangedMaximumReps>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result hasChosenExercise(Exercise exercise),
    @required Result incrementedSets(),
    @required Result decrementedSets(),
    @required Result changedMaximumReps(int value),
    @required Result changedMinimumReps(int value),
    @required Result submittedExercise(),
    @required Result cancelledByUser(),
  }) {
    assert(hasChosenExercise != null);
    assert(incrementedSets != null);
    assert(decrementedSets != null);
    assert(changedMaximumReps != null);
    assert(changedMinimumReps != null);
    assert(submittedExercise != null);
    assert(cancelledByUser != null);
    return changedMaximumReps(value);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result hasChosenExercise(Exercise exercise),
    Result incrementedSets(),
    Result decrementedSets(),
    Result changedMaximumReps(int value),
    Result changedMinimumReps(int value),
    Result submittedExercise(),
    Result cancelledByUser(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (changedMaximumReps != null) {
      return changedMaximumReps(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result hasChosenExercise(_HasChosenExercise value),
    @required Result incrementedSets(_IncrementedSets value),
    @required Result decrementedSets(_DecrementedSets value),
    @required Result changedMaximumReps(_ChangedMaximumReps value),
    @required Result changedMinimumReps(_ChangedMinimumReps value),
    @required Result submittedExercise(_SubmittedExercise value),
    @required Result cancelledByUser(_CancelledByUser value),
  }) {
    assert(hasChosenExercise != null);
    assert(incrementedSets != null);
    assert(decrementedSets != null);
    assert(changedMaximumReps != null);
    assert(changedMinimumReps != null);
    assert(submittedExercise != null);
    assert(cancelledByUser != null);
    return changedMaximumReps(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result hasChosenExercise(_HasChosenExercise value),
    Result incrementedSets(_IncrementedSets value),
    Result decrementedSets(_DecrementedSets value),
    Result changedMaximumReps(_ChangedMaximumReps value),
    Result changedMinimumReps(_ChangedMinimumReps value),
    Result submittedExercise(_SubmittedExercise value),
    Result cancelledByUser(_CancelledByUser value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (changedMaximumReps != null) {
      return changedMaximumReps(this);
    }
    return orElse();
  }
}

abstract class _ChangedMaximumReps implements ChooseExerciseEvent {
  const factory _ChangedMaximumReps({@required int value}) =
      _$_ChangedMaximumReps;

  int get value;
  _$ChangedMaximumRepsCopyWith<_ChangedMaximumReps> get copyWith;
}

/// @nodoc
abstract class _$ChangedMinimumRepsCopyWith<$Res> {
  factory _$ChangedMinimumRepsCopyWith(
          _ChangedMinimumReps value, $Res Function(_ChangedMinimumReps) then) =
      __$ChangedMinimumRepsCopyWithImpl<$Res>;
  $Res call({int value});
}

/// @nodoc
class __$ChangedMinimumRepsCopyWithImpl<$Res>
    extends _$ChooseExerciseEventCopyWithImpl<$Res>
    implements _$ChangedMinimumRepsCopyWith<$Res> {
  __$ChangedMinimumRepsCopyWithImpl(
      _ChangedMinimumReps _value, $Res Function(_ChangedMinimumReps) _then)
      : super(_value, (v) => _then(v as _ChangedMinimumReps));

  @override
  _ChangedMinimumReps get _value => super._value as _ChangedMinimumReps;

  @override
  $Res call({
    Object value = freezed,
  }) {
    return _then(_ChangedMinimumReps(
      value: value == freezed ? _value.value : value as int,
    ));
  }
}

/// @nodoc
class _$_ChangedMinimumReps implements _ChangedMinimumReps {
  const _$_ChangedMinimumReps({@required this.value}) : assert(value != null);

  @override
  final int value;

  @override
  String toString() {
    return 'ChooseExerciseEvent.changedMinimumReps(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ChangedMinimumReps &&
            (identical(other.value, value) ||
                const DeepCollectionEquality().equals(other.value, value)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(value);

  @override
  _$ChangedMinimumRepsCopyWith<_ChangedMinimumReps> get copyWith =>
      __$ChangedMinimumRepsCopyWithImpl<_ChangedMinimumReps>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result hasChosenExercise(Exercise exercise),
    @required Result incrementedSets(),
    @required Result decrementedSets(),
    @required Result changedMaximumReps(int value),
    @required Result changedMinimumReps(int value),
    @required Result submittedExercise(),
    @required Result cancelledByUser(),
  }) {
    assert(hasChosenExercise != null);
    assert(incrementedSets != null);
    assert(decrementedSets != null);
    assert(changedMaximumReps != null);
    assert(changedMinimumReps != null);
    assert(submittedExercise != null);
    assert(cancelledByUser != null);
    return changedMinimumReps(value);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result hasChosenExercise(Exercise exercise),
    Result incrementedSets(),
    Result decrementedSets(),
    Result changedMaximumReps(int value),
    Result changedMinimumReps(int value),
    Result submittedExercise(),
    Result cancelledByUser(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (changedMinimumReps != null) {
      return changedMinimumReps(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result hasChosenExercise(_HasChosenExercise value),
    @required Result incrementedSets(_IncrementedSets value),
    @required Result decrementedSets(_DecrementedSets value),
    @required Result changedMaximumReps(_ChangedMaximumReps value),
    @required Result changedMinimumReps(_ChangedMinimumReps value),
    @required Result submittedExercise(_SubmittedExercise value),
    @required Result cancelledByUser(_CancelledByUser value),
  }) {
    assert(hasChosenExercise != null);
    assert(incrementedSets != null);
    assert(decrementedSets != null);
    assert(changedMaximumReps != null);
    assert(changedMinimumReps != null);
    assert(submittedExercise != null);
    assert(cancelledByUser != null);
    return changedMinimumReps(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result hasChosenExercise(_HasChosenExercise value),
    Result incrementedSets(_IncrementedSets value),
    Result decrementedSets(_DecrementedSets value),
    Result changedMaximumReps(_ChangedMaximumReps value),
    Result changedMinimumReps(_ChangedMinimumReps value),
    Result submittedExercise(_SubmittedExercise value),
    Result cancelledByUser(_CancelledByUser value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (changedMinimumReps != null) {
      return changedMinimumReps(this);
    }
    return orElse();
  }
}

abstract class _ChangedMinimumReps implements ChooseExerciseEvent {
  const factory _ChangedMinimumReps({@required int value}) =
      _$_ChangedMinimumReps;

  int get value;
  _$ChangedMinimumRepsCopyWith<_ChangedMinimumReps> get copyWith;
}

/// @nodoc
abstract class _$SubmittedExerciseCopyWith<$Res> {
  factory _$SubmittedExerciseCopyWith(
          _SubmittedExercise value, $Res Function(_SubmittedExercise) then) =
      __$SubmittedExerciseCopyWithImpl<$Res>;
}

/// @nodoc
class __$SubmittedExerciseCopyWithImpl<$Res>
    extends _$ChooseExerciseEventCopyWithImpl<$Res>
    implements _$SubmittedExerciseCopyWith<$Res> {
  __$SubmittedExerciseCopyWithImpl(
      _SubmittedExercise _value, $Res Function(_SubmittedExercise) _then)
      : super(_value, (v) => _then(v as _SubmittedExercise));

  @override
  _SubmittedExercise get _value => super._value as _SubmittedExercise;
}

/// @nodoc
class _$_SubmittedExercise implements _SubmittedExercise {
  const _$_SubmittedExercise();

  @override
  String toString() {
    return 'ChooseExerciseEvent.submittedExercise()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _SubmittedExercise);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result hasChosenExercise(Exercise exercise),
    @required Result incrementedSets(),
    @required Result decrementedSets(),
    @required Result changedMaximumReps(int value),
    @required Result changedMinimumReps(int value),
    @required Result submittedExercise(),
    @required Result cancelledByUser(),
  }) {
    assert(hasChosenExercise != null);
    assert(incrementedSets != null);
    assert(decrementedSets != null);
    assert(changedMaximumReps != null);
    assert(changedMinimumReps != null);
    assert(submittedExercise != null);
    assert(cancelledByUser != null);
    return submittedExercise();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result hasChosenExercise(Exercise exercise),
    Result incrementedSets(),
    Result decrementedSets(),
    Result changedMaximumReps(int value),
    Result changedMinimumReps(int value),
    Result submittedExercise(),
    Result cancelledByUser(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (submittedExercise != null) {
      return submittedExercise();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result hasChosenExercise(_HasChosenExercise value),
    @required Result incrementedSets(_IncrementedSets value),
    @required Result decrementedSets(_DecrementedSets value),
    @required Result changedMaximumReps(_ChangedMaximumReps value),
    @required Result changedMinimumReps(_ChangedMinimumReps value),
    @required Result submittedExercise(_SubmittedExercise value),
    @required Result cancelledByUser(_CancelledByUser value),
  }) {
    assert(hasChosenExercise != null);
    assert(incrementedSets != null);
    assert(decrementedSets != null);
    assert(changedMaximumReps != null);
    assert(changedMinimumReps != null);
    assert(submittedExercise != null);
    assert(cancelledByUser != null);
    return submittedExercise(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result hasChosenExercise(_HasChosenExercise value),
    Result incrementedSets(_IncrementedSets value),
    Result decrementedSets(_DecrementedSets value),
    Result changedMaximumReps(_ChangedMaximumReps value),
    Result changedMinimumReps(_ChangedMinimumReps value),
    Result submittedExercise(_SubmittedExercise value),
    Result cancelledByUser(_CancelledByUser value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (submittedExercise != null) {
      return submittedExercise(this);
    }
    return orElse();
  }
}

abstract class _SubmittedExercise implements ChooseExerciseEvent {
  const factory _SubmittedExercise() = _$_SubmittedExercise;
}

/// @nodoc
abstract class _$CancelledByUserCopyWith<$Res> {
  factory _$CancelledByUserCopyWith(
          _CancelledByUser value, $Res Function(_CancelledByUser) then) =
      __$CancelledByUserCopyWithImpl<$Res>;
}

/// @nodoc
class __$CancelledByUserCopyWithImpl<$Res>
    extends _$ChooseExerciseEventCopyWithImpl<$Res>
    implements _$CancelledByUserCopyWith<$Res> {
  __$CancelledByUserCopyWithImpl(
      _CancelledByUser _value, $Res Function(_CancelledByUser) _then)
      : super(_value, (v) => _then(v as _CancelledByUser));

  @override
  _CancelledByUser get _value => super._value as _CancelledByUser;
}

/// @nodoc
class _$_CancelledByUser implements _CancelledByUser {
  const _$_CancelledByUser();

  @override
  String toString() {
    return 'ChooseExerciseEvent.cancelledByUser()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _CancelledByUser);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result hasChosenExercise(Exercise exercise),
    @required Result incrementedSets(),
    @required Result decrementedSets(),
    @required Result changedMaximumReps(int value),
    @required Result changedMinimumReps(int value),
    @required Result submittedExercise(),
    @required Result cancelledByUser(),
  }) {
    assert(hasChosenExercise != null);
    assert(incrementedSets != null);
    assert(decrementedSets != null);
    assert(changedMaximumReps != null);
    assert(changedMinimumReps != null);
    assert(submittedExercise != null);
    assert(cancelledByUser != null);
    return cancelledByUser();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result hasChosenExercise(Exercise exercise),
    Result incrementedSets(),
    Result decrementedSets(),
    Result changedMaximumReps(int value),
    Result changedMinimumReps(int value),
    Result submittedExercise(),
    Result cancelledByUser(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (cancelledByUser != null) {
      return cancelledByUser();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result hasChosenExercise(_HasChosenExercise value),
    @required Result incrementedSets(_IncrementedSets value),
    @required Result decrementedSets(_DecrementedSets value),
    @required Result changedMaximumReps(_ChangedMaximumReps value),
    @required Result changedMinimumReps(_ChangedMinimumReps value),
    @required Result submittedExercise(_SubmittedExercise value),
    @required Result cancelledByUser(_CancelledByUser value),
  }) {
    assert(hasChosenExercise != null);
    assert(incrementedSets != null);
    assert(decrementedSets != null);
    assert(changedMaximumReps != null);
    assert(changedMinimumReps != null);
    assert(submittedExercise != null);
    assert(cancelledByUser != null);
    return cancelledByUser(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result hasChosenExercise(_HasChosenExercise value),
    Result incrementedSets(_IncrementedSets value),
    Result decrementedSets(_DecrementedSets value),
    Result changedMaximumReps(_ChangedMaximumReps value),
    Result changedMinimumReps(_ChangedMinimumReps value),
    Result submittedExercise(_SubmittedExercise value),
    Result cancelledByUser(_CancelledByUser value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (cancelledByUser != null) {
      return cancelledByUser(this);
    }
    return orElse();
  }
}

abstract class _CancelledByUser implements ChooseExerciseEvent {
  const factory _CancelledByUser() = _$_CancelledByUser;
}

/// @nodoc
class _$ChooseExerciseStateTearOff {
  const _$ChooseExerciseStateTearOff();

// ignore: unused_element
  _ChooseExerciseState call({@required UserExercise userExercise}) {
    return _ChooseExerciseState(
      userExercise: userExercise,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $ChooseExerciseState = _$ChooseExerciseStateTearOff();

/// @nodoc
mixin _$ChooseExerciseState {
  UserExercise get userExercise;

  $ChooseExerciseStateCopyWith<ChooseExerciseState> get copyWith;
}

/// @nodoc
abstract class $ChooseExerciseStateCopyWith<$Res> {
  factory $ChooseExerciseStateCopyWith(
          ChooseExerciseState value, $Res Function(ChooseExerciseState) then) =
      _$ChooseExerciseStateCopyWithImpl<$Res>;
  $Res call({UserExercise userExercise});
}

/// @nodoc
class _$ChooseExerciseStateCopyWithImpl<$Res>
    implements $ChooseExerciseStateCopyWith<$Res> {
  _$ChooseExerciseStateCopyWithImpl(this._value, this._then);

  final ChooseExerciseState _value;
  // ignore: unused_field
  final $Res Function(ChooseExerciseState) _then;

  @override
  $Res call({
    Object userExercise = freezed,
  }) {
    return _then(_value.copyWith(
      userExercise: userExercise == freezed
          ? _value.userExercise
          : userExercise as UserExercise,
    ));
  }
}

/// @nodoc
abstract class _$ChooseExerciseStateCopyWith<$Res>
    implements $ChooseExerciseStateCopyWith<$Res> {
  factory _$ChooseExerciseStateCopyWith(_ChooseExerciseState value,
          $Res Function(_ChooseExerciseState) then) =
      __$ChooseExerciseStateCopyWithImpl<$Res>;
  @override
  $Res call({UserExercise userExercise});
}

/// @nodoc
class __$ChooseExerciseStateCopyWithImpl<$Res>
    extends _$ChooseExerciseStateCopyWithImpl<$Res>
    implements _$ChooseExerciseStateCopyWith<$Res> {
  __$ChooseExerciseStateCopyWithImpl(
      _ChooseExerciseState _value, $Res Function(_ChooseExerciseState) _then)
      : super(_value, (v) => _then(v as _ChooseExerciseState));

  @override
  _ChooseExerciseState get _value => super._value as _ChooseExerciseState;

  @override
  $Res call({
    Object userExercise = freezed,
  }) {
    return _then(_ChooseExerciseState(
      userExercise: userExercise == freezed
          ? _value.userExercise
          : userExercise as UserExercise,
    ));
  }
}

/// @nodoc
class _$_ChooseExerciseState implements _ChooseExerciseState {
  const _$_ChooseExerciseState({@required this.userExercise})
      : assert(userExercise != null);

  @override
  final UserExercise userExercise;

  @override
  String toString() {
    return 'ChooseExerciseState(userExercise: $userExercise)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ChooseExerciseState &&
            (identical(other.userExercise, userExercise) ||
                const DeepCollectionEquality()
                    .equals(other.userExercise, userExercise)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(userExercise);

  @override
  _$ChooseExerciseStateCopyWith<_ChooseExerciseState> get copyWith =>
      __$ChooseExerciseStateCopyWithImpl<_ChooseExerciseState>(
          this, _$identity);
}

abstract class _ChooseExerciseState implements ChooseExerciseState {
  const factory _ChooseExerciseState({@required UserExercise userExercise}) =
      _$_ChooseExerciseState;

  @override
  UserExercise get userExercise;
  @override
  _$ChooseExerciseStateCopyWith<_ChooseExerciseState> get copyWith;
}
