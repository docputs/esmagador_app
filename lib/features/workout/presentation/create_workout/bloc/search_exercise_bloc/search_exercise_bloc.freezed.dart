// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'search_exercise_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$SearchExerciseEventTearOff {
  const _$SearchExerciseEventTearOff();

// ignore: unused_element
  _UserTyped userTyped({@required String text}) {
    return _UserTyped(
      text: text,
    );
  }
}

// ignore: unused_element
const $SearchExerciseEvent = _$SearchExerciseEventTearOff();

mixin _$SearchExerciseEvent {
  String get text;

  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result userTyped(String text),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result userTyped(String text),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result userTyped(_UserTyped value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result userTyped(_UserTyped value),
    @required Result orElse(),
  });

  $SearchExerciseEventCopyWith<SearchExerciseEvent> get copyWith;
}

abstract class $SearchExerciseEventCopyWith<$Res> {
  factory $SearchExerciseEventCopyWith(
          SearchExerciseEvent value, $Res Function(SearchExerciseEvent) then) =
      _$SearchExerciseEventCopyWithImpl<$Res>;
  $Res call({String text});
}

class _$SearchExerciseEventCopyWithImpl<$Res>
    implements $SearchExerciseEventCopyWith<$Res> {
  _$SearchExerciseEventCopyWithImpl(this._value, this._then);

  final SearchExerciseEvent _value;
  // ignore: unused_field
  final $Res Function(SearchExerciseEvent) _then;

  @override
  $Res call({
    Object text = freezed,
  }) {
    return _then(_value.copyWith(
      text: text == freezed ? _value.text : text as String,
    ));
  }
}

abstract class _$UserTypedCopyWith<$Res>
    implements $SearchExerciseEventCopyWith<$Res> {
  factory _$UserTypedCopyWith(
          _UserTyped value, $Res Function(_UserTyped) then) =
      __$UserTypedCopyWithImpl<$Res>;
  @override
  $Res call({String text});
}

class __$UserTypedCopyWithImpl<$Res>
    extends _$SearchExerciseEventCopyWithImpl<$Res>
    implements _$UserTypedCopyWith<$Res> {
  __$UserTypedCopyWithImpl(_UserTyped _value, $Res Function(_UserTyped) _then)
      : super(_value, (v) => _then(v as _UserTyped));

  @override
  _UserTyped get _value => super._value as _UserTyped;

  @override
  $Res call({
    Object text = freezed,
  }) {
    return _then(_UserTyped(
      text: text == freezed ? _value.text : text as String,
    ));
  }
}

class _$_UserTyped implements _UserTyped {
  const _$_UserTyped({@required this.text}) : assert(text != null);

  @override
  final String text;

  @override
  String toString() {
    return 'SearchExerciseEvent.userTyped(text: $text)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UserTyped &&
            (identical(other.text, text) ||
                const DeepCollectionEquality().equals(other.text, text)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(text);

  @override
  _$UserTypedCopyWith<_UserTyped> get copyWith =>
      __$UserTypedCopyWithImpl<_UserTyped>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result userTyped(String text),
  }) {
    assert(userTyped != null);
    return userTyped(text);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result userTyped(String text),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (userTyped != null) {
      return userTyped(text);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result userTyped(_UserTyped value),
  }) {
    assert(userTyped != null);
    return userTyped(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result userTyped(_UserTyped value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (userTyped != null) {
      return userTyped(this);
    }
    return orElse();
  }
}

abstract class _UserTyped implements SearchExerciseEvent {
  const factory _UserTyped({@required String text}) = _$_UserTyped;

  @override
  String get text;
  @override
  _$UserTypedCopyWith<_UserTyped> get copyWith;
}

class _$SearchExerciseStateTearOff {
  const _$SearchExerciseStateTearOff();

// ignore: unused_element
  _SearchExerciseState call({@required List<Exercise> exercises}) {
    return _SearchExerciseState(
      exercises: exercises,
    );
  }
}

// ignore: unused_element
const $SearchExerciseState = _$SearchExerciseStateTearOff();

mixin _$SearchExerciseState {
  List<Exercise> get exercises;

  $SearchExerciseStateCopyWith<SearchExerciseState> get copyWith;
}

abstract class $SearchExerciseStateCopyWith<$Res> {
  factory $SearchExerciseStateCopyWith(
          SearchExerciseState value, $Res Function(SearchExerciseState) then) =
      _$SearchExerciseStateCopyWithImpl<$Res>;
  $Res call({List<Exercise> exercises});
}

class _$SearchExerciseStateCopyWithImpl<$Res>
    implements $SearchExerciseStateCopyWith<$Res> {
  _$SearchExerciseStateCopyWithImpl(this._value, this._then);

  final SearchExerciseState _value;
  // ignore: unused_field
  final $Res Function(SearchExerciseState) _then;

  @override
  $Res call({
    Object exercises = freezed,
  }) {
    return _then(_value.copyWith(
      exercises:
          exercises == freezed ? _value.exercises : exercises as List<Exercise>,
    ));
  }
}

abstract class _$SearchExerciseStateCopyWith<$Res>
    implements $SearchExerciseStateCopyWith<$Res> {
  factory _$SearchExerciseStateCopyWith(_SearchExerciseState value,
          $Res Function(_SearchExerciseState) then) =
      __$SearchExerciseStateCopyWithImpl<$Res>;
  @override
  $Res call({List<Exercise> exercises});
}

class __$SearchExerciseStateCopyWithImpl<$Res>
    extends _$SearchExerciseStateCopyWithImpl<$Res>
    implements _$SearchExerciseStateCopyWith<$Res> {
  __$SearchExerciseStateCopyWithImpl(
      _SearchExerciseState _value, $Res Function(_SearchExerciseState) _then)
      : super(_value, (v) => _then(v as _SearchExerciseState));

  @override
  _SearchExerciseState get _value => super._value as _SearchExerciseState;

  @override
  $Res call({
    Object exercises = freezed,
  }) {
    return _then(_SearchExerciseState(
      exercises:
          exercises == freezed ? _value.exercises : exercises as List<Exercise>,
    ));
  }
}

class _$_SearchExerciseState implements _SearchExerciseState {
  const _$_SearchExerciseState({@required this.exercises})
      : assert(exercises != null);

  @override
  final List<Exercise> exercises;

  @override
  String toString() {
    return 'SearchExerciseState(exercises: $exercises)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SearchExerciseState &&
            (identical(other.exercises, exercises) ||
                const DeepCollectionEquality()
                    .equals(other.exercises, exercises)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(exercises);

  @override
  _$SearchExerciseStateCopyWith<_SearchExerciseState> get copyWith =>
      __$SearchExerciseStateCopyWithImpl<_SearchExerciseState>(
          this, _$identity);
}

abstract class _SearchExerciseState implements SearchExerciseState {
  const factory _SearchExerciseState({@required List<Exercise> exercises}) =
      _$_SearchExerciseState;

  @override
  List<Exercise> get exercises;
  @override
  _$SearchExerciseStateCopyWith<_SearchExerciseState> get copyWith;
}
