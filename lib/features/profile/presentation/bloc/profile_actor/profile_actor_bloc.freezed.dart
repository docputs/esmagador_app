// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'profile_actor_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$ProfileActorEventTearOff {
  const _$ProfileActorEventTearOff();

// ignore: unused_element
  _ChangeDisplayNamePressed changeDisplayNamePressed(String displayName) {
    return _ChangeDisplayNamePressed(
      displayName,
    );
  }

// ignore: unused_element
  _ChangeEmailAddressPressed changeEmailAddressPressed(String emailAddress) {
    return _ChangeEmailAddressPressed(
      emailAddress,
    );
  }

// ignore: unused_element
  _ChangeProfilePicturePressed changeProfilePicturePressed() {
    return const _ChangeProfilePicturePressed();
  }

// ignore: unused_element
  _ChangePasswordPressed changePasswordPressed(String password) {
    return _ChangePasswordPressed(
      password,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $ProfileActorEvent = _$ProfileActorEventTearOff();

/// @nodoc
mixin _$ProfileActorEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result changeDisplayNamePressed(String displayName),
    @required Result changeEmailAddressPressed(String emailAddress),
    @required Result changeProfilePicturePressed(),
    @required Result changePasswordPressed(String password),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result changeDisplayNamePressed(String displayName),
    Result changeEmailAddressPressed(String emailAddress),
    Result changeProfilePicturePressed(),
    Result changePasswordPressed(String password),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result changeDisplayNamePressed(_ChangeDisplayNamePressed value),
    @required
        Result changeEmailAddressPressed(_ChangeEmailAddressPressed value),
    @required
        Result changeProfilePicturePressed(_ChangeProfilePicturePressed value),
    @required Result changePasswordPressed(_ChangePasswordPressed value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result changeDisplayNamePressed(_ChangeDisplayNamePressed value),
    Result changeEmailAddressPressed(_ChangeEmailAddressPressed value),
    Result changeProfilePicturePressed(_ChangeProfilePicturePressed value),
    Result changePasswordPressed(_ChangePasswordPressed value),
    @required Result orElse(),
  });
}

/// @nodoc
abstract class $ProfileActorEventCopyWith<$Res> {
  factory $ProfileActorEventCopyWith(
          ProfileActorEvent value, $Res Function(ProfileActorEvent) then) =
      _$ProfileActorEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$ProfileActorEventCopyWithImpl<$Res>
    implements $ProfileActorEventCopyWith<$Res> {
  _$ProfileActorEventCopyWithImpl(this._value, this._then);

  final ProfileActorEvent _value;
  // ignore: unused_field
  final $Res Function(ProfileActorEvent) _then;
}

/// @nodoc
abstract class _$ChangeDisplayNamePressedCopyWith<$Res> {
  factory _$ChangeDisplayNamePressedCopyWith(_ChangeDisplayNamePressed value,
          $Res Function(_ChangeDisplayNamePressed) then) =
      __$ChangeDisplayNamePressedCopyWithImpl<$Res>;
  $Res call({String displayName});
}

/// @nodoc
class __$ChangeDisplayNamePressedCopyWithImpl<$Res>
    extends _$ProfileActorEventCopyWithImpl<$Res>
    implements _$ChangeDisplayNamePressedCopyWith<$Res> {
  __$ChangeDisplayNamePressedCopyWithImpl(_ChangeDisplayNamePressed _value,
      $Res Function(_ChangeDisplayNamePressed) _then)
      : super(_value, (v) => _then(v as _ChangeDisplayNamePressed));

  @override
  _ChangeDisplayNamePressed get _value =>
      super._value as _ChangeDisplayNamePressed;

  @override
  $Res call({
    Object displayName = freezed,
  }) {
    return _then(_ChangeDisplayNamePressed(
      displayName == freezed ? _value.displayName : displayName as String,
    ));
  }
}

/// @nodoc
class _$_ChangeDisplayNamePressed implements _ChangeDisplayNamePressed {
  const _$_ChangeDisplayNamePressed(this.displayName)
      : assert(displayName != null);

  @override
  final String displayName;

  @override
  String toString() {
    return 'ProfileActorEvent.changeDisplayNamePressed(displayName: $displayName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ChangeDisplayNamePressed &&
            (identical(other.displayName, displayName) ||
                const DeepCollectionEquality()
                    .equals(other.displayName, displayName)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(displayName);

  @override
  _$ChangeDisplayNamePressedCopyWith<_ChangeDisplayNamePressed> get copyWith =>
      __$ChangeDisplayNamePressedCopyWithImpl<_ChangeDisplayNamePressed>(
          this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result changeDisplayNamePressed(String displayName),
    @required Result changeEmailAddressPressed(String emailAddress),
    @required Result changeProfilePicturePressed(),
    @required Result changePasswordPressed(String password),
  }) {
    assert(changeDisplayNamePressed != null);
    assert(changeEmailAddressPressed != null);
    assert(changeProfilePicturePressed != null);
    assert(changePasswordPressed != null);
    return changeDisplayNamePressed(displayName);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result changeDisplayNamePressed(String displayName),
    Result changeEmailAddressPressed(String emailAddress),
    Result changeProfilePicturePressed(),
    Result changePasswordPressed(String password),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (changeDisplayNamePressed != null) {
      return changeDisplayNamePressed(displayName);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result changeDisplayNamePressed(_ChangeDisplayNamePressed value),
    @required
        Result changeEmailAddressPressed(_ChangeEmailAddressPressed value),
    @required
        Result changeProfilePicturePressed(_ChangeProfilePicturePressed value),
    @required Result changePasswordPressed(_ChangePasswordPressed value),
  }) {
    assert(changeDisplayNamePressed != null);
    assert(changeEmailAddressPressed != null);
    assert(changeProfilePicturePressed != null);
    assert(changePasswordPressed != null);
    return changeDisplayNamePressed(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result changeDisplayNamePressed(_ChangeDisplayNamePressed value),
    Result changeEmailAddressPressed(_ChangeEmailAddressPressed value),
    Result changeProfilePicturePressed(_ChangeProfilePicturePressed value),
    Result changePasswordPressed(_ChangePasswordPressed value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (changeDisplayNamePressed != null) {
      return changeDisplayNamePressed(this);
    }
    return orElse();
  }
}

abstract class _ChangeDisplayNamePressed implements ProfileActorEvent {
  const factory _ChangeDisplayNamePressed(String displayName) =
      _$_ChangeDisplayNamePressed;

  String get displayName;
  _$ChangeDisplayNamePressedCopyWith<_ChangeDisplayNamePressed> get copyWith;
}

/// @nodoc
abstract class _$ChangeEmailAddressPressedCopyWith<$Res> {
  factory _$ChangeEmailAddressPressedCopyWith(_ChangeEmailAddressPressed value,
          $Res Function(_ChangeEmailAddressPressed) then) =
      __$ChangeEmailAddressPressedCopyWithImpl<$Res>;
  $Res call({String emailAddress});
}

/// @nodoc
class __$ChangeEmailAddressPressedCopyWithImpl<$Res>
    extends _$ProfileActorEventCopyWithImpl<$Res>
    implements _$ChangeEmailAddressPressedCopyWith<$Res> {
  __$ChangeEmailAddressPressedCopyWithImpl(_ChangeEmailAddressPressed _value,
      $Res Function(_ChangeEmailAddressPressed) _then)
      : super(_value, (v) => _then(v as _ChangeEmailAddressPressed));

  @override
  _ChangeEmailAddressPressed get _value =>
      super._value as _ChangeEmailAddressPressed;

  @override
  $Res call({
    Object emailAddress = freezed,
  }) {
    return _then(_ChangeEmailAddressPressed(
      emailAddress == freezed ? _value.emailAddress : emailAddress as String,
    ));
  }
}

/// @nodoc
class _$_ChangeEmailAddressPressed implements _ChangeEmailAddressPressed {
  const _$_ChangeEmailAddressPressed(this.emailAddress)
      : assert(emailAddress != null);

  @override
  final String emailAddress;

  @override
  String toString() {
    return 'ProfileActorEvent.changeEmailAddressPressed(emailAddress: $emailAddress)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ChangeEmailAddressPressed &&
            (identical(other.emailAddress, emailAddress) ||
                const DeepCollectionEquality()
                    .equals(other.emailAddress, emailAddress)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(emailAddress);

  @override
  _$ChangeEmailAddressPressedCopyWith<_ChangeEmailAddressPressed>
      get copyWith =>
          __$ChangeEmailAddressPressedCopyWithImpl<_ChangeEmailAddressPressed>(
              this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result changeDisplayNamePressed(String displayName),
    @required Result changeEmailAddressPressed(String emailAddress),
    @required Result changeProfilePicturePressed(),
    @required Result changePasswordPressed(String password),
  }) {
    assert(changeDisplayNamePressed != null);
    assert(changeEmailAddressPressed != null);
    assert(changeProfilePicturePressed != null);
    assert(changePasswordPressed != null);
    return changeEmailAddressPressed(emailAddress);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result changeDisplayNamePressed(String displayName),
    Result changeEmailAddressPressed(String emailAddress),
    Result changeProfilePicturePressed(),
    Result changePasswordPressed(String password),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (changeEmailAddressPressed != null) {
      return changeEmailAddressPressed(emailAddress);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result changeDisplayNamePressed(_ChangeDisplayNamePressed value),
    @required
        Result changeEmailAddressPressed(_ChangeEmailAddressPressed value),
    @required
        Result changeProfilePicturePressed(_ChangeProfilePicturePressed value),
    @required Result changePasswordPressed(_ChangePasswordPressed value),
  }) {
    assert(changeDisplayNamePressed != null);
    assert(changeEmailAddressPressed != null);
    assert(changeProfilePicturePressed != null);
    assert(changePasswordPressed != null);
    return changeEmailAddressPressed(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result changeDisplayNamePressed(_ChangeDisplayNamePressed value),
    Result changeEmailAddressPressed(_ChangeEmailAddressPressed value),
    Result changeProfilePicturePressed(_ChangeProfilePicturePressed value),
    Result changePasswordPressed(_ChangePasswordPressed value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (changeEmailAddressPressed != null) {
      return changeEmailAddressPressed(this);
    }
    return orElse();
  }
}

abstract class _ChangeEmailAddressPressed implements ProfileActorEvent {
  const factory _ChangeEmailAddressPressed(String emailAddress) =
      _$_ChangeEmailAddressPressed;

  String get emailAddress;
  _$ChangeEmailAddressPressedCopyWith<_ChangeEmailAddressPressed> get copyWith;
}

/// @nodoc
abstract class _$ChangeProfilePicturePressedCopyWith<$Res> {
  factory _$ChangeProfilePicturePressedCopyWith(
          _ChangeProfilePicturePressed value,
          $Res Function(_ChangeProfilePicturePressed) then) =
      __$ChangeProfilePicturePressedCopyWithImpl<$Res>;
}

/// @nodoc
class __$ChangeProfilePicturePressedCopyWithImpl<$Res>
    extends _$ProfileActorEventCopyWithImpl<$Res>
    implements _$ChangeProfilePicturePressedCopyWith<$Res> {
  __$ChangeProfilePicturePressedCopyWithImpl(
      _ChangeProfilePicturePressed _value,
      $Res Function(_ChangeProfilePicturePressed) _then)
      : super(_value, (v) => _then(v as _ChangeProfilePicturePressed));

  @override
  _ChangeProfilePicturePressed get _value =>
      super._value as _ChangeProfilePicturePressed;
}

/// @nodoc
class _$_ChangeProfilePicturePressed implements _ChangeProfilePicturePressed {
  const _$_ChangeProfilePicturePressed();

  @override
  String toString() {
    return 'ProfileActorEvent.changeProfilePicturePressed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _ChangeProfilePicturePressed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result changeDisplayNamePressed(String displayName),
    @required Result changeEmailAddressPressed(String emailAddress),
    @required Result changeProfilePicturePressed(),
    @required Result changePasswordPressed(String password),
  }) {
    assert(changeDisplayNamePressed != null);
    assert(changeEmailAddressPressed != null);
    assert(changeProfilePicturePressed != null);
    assert(changePasswordPressed != null);
    return changeProfilePicturePressed();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result changeDisplayNamePressed(String displayName),
    Result changeEmailAddressPressed(String emailAddress),
    Result changeProfilePicturePressed(),
    Result changePasswordPressed(String password),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (changeProfilePicturePressed != null) {
      return changeProfilePicturePressed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result changeDisplayNamePressed(_ChangeDisplayNamePressed value),
    @required
        Result changeEmailAddressPressed(_ChangeEmailAddressPressed value),
    @required
        Result changeProfilePicturePressed(_ChangeProfilePicturePressed value),
    @required Result changePasswordPressed(_ChangePasswordPressed value),
  }) {
    assert(changeDisplayNamePressed != null);
    assert(changeEmailAddressPressed != null);
    assert(changeProfilePicturePressed != null);
    assert(changePasswordPressed != null);
    return changeProfilePicturePressed(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result changeDisplayNamePressed(_ChangeDisplayNamePressed value),
    Result changeEmailAddressPressed(_ChangeEmailAddressPressed value),
    Result changeProfilePicturePressed(_ChangeProfilePicturePressed value),
    Result changePasswordPressed(_ChangePasswordPressed value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (changeProfilePicturePressed != null) {
      return changeProfilePicturePressed(this);
    }
    return orElse();
  }
}

abstract class _ChangeProfilePicturePressed implements ProfileActorEvent {
  const factory _ChangeProfilePicturePressed() = _$_ChangeProfilePicturePressed;
}

/// @nodoc
abstract class _$ChangePasswordPressedCopyWith<$Res> {
  factory _$ChangePasswordPressedCopyWith(_ChangePasswordPressed value,
          $Res Function(_ChangePasswordPressed) then) =
      __$ChangePasswordPressedCopyWithImpl<$Res>;
  $Res call({String password});
}

/// @nodoc
class __$ChangePasswordPressedCopyWithImpl<$Res>
    extends _$ProfileActorEventCopyWithImpl<$Res>
    implements _$ChangePasswordPressedCopyWith<$Res> {
  __$ChangePasswordPressedCopyWithImpl(_ChangePasswordPressed _value,
      $Res Function(_ChangePasswordPressed) _then)
      : super(_value, (v) => _then(v as _ChangePasswordPressed));

  @override
  _ChangePasswordPressed get _value => super._value as _ChangePasswordPressed;

  @override
  $Res call({
    Object password = freezed,
  }) {
    return _then(_ChangePasswordPressed(
      password == freezed ? _value.password : password as String,
    ));
  }
}

/// @nodoc
class _$_ChangePasswordPressed implements _ChangePasswordPressed {
  const _$_ChangePasswordPressed(this.password) : assert(password != null);

  @override
  final String password;

  @override
  String toString() {
    return 'ProfileActorEvent.changePasswordPressed(password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ChangePasswordPressed &&
            (identical(other.password, password) ||
                const DeepCollectionEquality()
                    .equals(other.password, password)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(password);

  @override
  _$ChangePasswordPressedCopyWith<_ChangePasswordPressed> get copyWith =>
      __$ChangePasswordPressedCopyWithImpl<_ChangePasswordPressed>(
          this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result changeDisplayNamePressed(String displayName),
    @required Result changeEmailAddressPressed(String emailAddress),
    @required Result changeProfilePicturePressed(),
    @required Result changePasswordPressed(String password),
  }) {
    assert(changeDisplayNamePressed != null);
    assert(changeEmailAddressPressed != null);
    assert(changeProfilePicturePressed != null);
    assert(changePasswordPressed != null);
    return changePasswordPressed(password);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result changeDisplayNamePressed(String displayName),
    Result changeEmailAddressPressed(String emailAddress),
    Result changeProfilePicturePressed(),
    Result changePasswordPressed(String password),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (changePasswordPressed != null) {
      return changePasswordPressed(password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result changeDisplayNamePressed(_ChangeDisplayNamePressed value),
    @required
        Result changeEmailAddressPressed(_ChangeEmailAddressPressed value),
    @required
        Result changeProfilePicturePressed(_ChangeProfilePicturePressed value),
    @required Result changePasswordPressed(_ChangePasswordPressed value),
  }) {
    assert(changeDisplayNamePressed != null);
    assert(changeEmailAddressPressed != null);
    assert(changeProfilePicturePressed != null);
    assert(changePasswordPressed != null);
    return changePasswordPressed(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result changeDisplayNamePressed(_ChangeDisplayNamePressed value),
    Result changeEmailAddressPressed(_ChangeEmailAddressPressed value),
    Result changeProfilePicturePressed(_ChangeProfilePicturePressed value),
    Result changePasswordPressed(_ChangePasswordPressed value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (changePasswordPressed != null) {
      return changePasswordPressed(this);
    }
    return orElse();
  }
}

abstract class _ChangePasswordPressed implements ProfileActorEvent {
  const factory _ChangePasswordPressed(String password) =
      _$_ChangePasswordPressed;

  String get password;
  _$ChangePasswordPressedCopyWith<_ChangePasswordPressed> get copyWith;
}

/// @nodoc
class _$ProfileActorStateTearOff {
  const _$ProfileActorStateTearOff();

// ignore: unused_element
  _Initial initial() {
    return const _Initial();
  }

// ignore: unused_element
  _Success success() {
    return const _Success();
  }

// ignore: unused_element
  _Failure failure(ProfileFailure failure) {
    return _Failure(
      failure,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $ProfileActorState = _$ProfileActorStateTearOff();

/// @nodoc
mixin _$ProfileActorState {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result success(),
    @required Result failure(ProfileFailure failure),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result success(),
    Result failure(ProfileFailure failure),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result success(_Success value),
    @required Result failure(_Failure value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result success(_Success value),
    Result failure(_Failure value),
    @required Result orElse(),
  });
}

/// @nodoc
abstract class $ProfileActorStateCopyWith<$Res> {
  factory $ProfileActorStateCopyWith(
          ProfileActorState value, $Res Function(ProfileActorState) then) =
      _$ProfileActorStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$ProfileActorStateCopyWithImpl<$Res>
    implements $ProfileActorStateCopyWith<$Res> {
  _$ProfileActorStateCopyWithImpl(this._value, this._then);

  final ProfileActorState _value;
  // ignore: unused_field
  final $Res Function(ProfileActorState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$ProfileActorStateCopyWithImpl<$Res>
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
    return 'ProfileActorState.initial()';
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
    @required Result success(),
    @required Result failure(ProfileFailure failure),
  }) {
    assert(initial != null);
    assert(success != null);
    assert(failure != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result success(),
    Result failure(ProfileFailure failure),
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
    @required Result failure(_Failure value),
  }) {
    assert(initial != null);
    assert(success != null);
    assert(failure != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result success(_Success value),
    Result failure(_Failure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements ProfileActorState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$SuccessCopyWith<$Res> {
  factory _$SuccessCopyWith(_Success value, $Res Function(_Success) then) =
      __$SuccessCopyWithImpl<$Res>;
}

/// @nodoc
class __$SuccessCopyWithImpl<$Res> extends _$ProfileActorStateCopyWithImpl<$Res>
    implements _$SuccessCopyWith<$Res> {
  __$SuccessCopyWithImpl(_Success _value, $Res Function(_Success) _then)
      : super(_value, (v) => _then(v as _Success));

  @override
  _Success get _value => super._value as _Success;
}

/// @nodoc
class _$_Success implements _Success {
  const _$_Success();

  @override
  String toString() {
    return 'ProfileActorState.success()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Success);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result success(),
    @required Result failure(ProfileFailure failure),
  }) {
    assert(initial != null);
    assert(success != null);
    assert(failure != null);
    return success();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result success(),
    Result failure(ProfileFailure failure),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (success != null) {
      return success();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result success(_Success value),
    @required Result failure(_Failure value),
  }) {
    assert(initial != null);
    assert(success != null);
    assert(failure != null);
    return success(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result success(_Success value),
    Result failure(_Failure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _Success implements ProfileActorState {
  const factory _Success() = _$_Success;
}

/// @nodoc
abstract class _$FailureCopyWith<$Res> {
  factory _$FailureCopyWith(_Failure value, $Res Function(_Failure) then) =
      __$FailureCopyWithImpl<$Res>;
  $Res call({ProfileFailure failure});

  $ProfileFailureCopyWith<$Res> get failure;
}

/// @nodoc
class __$FailureCopyWithImpl<$Res> extends _$ProfileActorStateCopyWithImpl<$Res>
    implements _$FailureCopyWith<$Res> {
  __$FailureCopyWithImpl(_Failure _value, $Res Function(_Failure) _then)
      : super(_value, (v) => _then(v as _Failure));

  @override
  _Failure get _value => super._value as _Failure;

  @override
  $Res call({
    Object failure = freezed,
  }) {
    return _then(_Failure(
      failure == freezed ? _value.failure : failure as ProfileFailure,
    ));
  }

  @override
  $ProfileFailureCopyWith<$Res> get failure {
    if (_value.failure == null) {
      return null;
    }
    return $ProfileFailureCopyWith<$Res>(_value.failure, (value) {
      return _then(_value.copyWith(failure: value));
    });
  }
}

/// @nodoc
class _$_Failure implements _Failure {
  const _$_Failure(this.failure) : assert(failure != null);

  @override
  final ProfileFailure failure;

  @override
  String toString() {
    return 'ProfileActorState.failure(failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Failure &&
            (identical(other.failure, failure) ||
                const DeepCollectionEquality().equals(other.failure, failure)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failure);

  @override
  _$FailureCopyWith<_Failure> get copyWith =>
      __$FailureCopyWithImpl<_Failure>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result success(),
    @required Result failure(ProfileFailure failure),
  }) {
    assert(initial != null);
    assert(success != null);
    assert(failure != null);
    return failure(this.failure);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result success(),
    Result failure(ProfileFailure failure),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (failure != null) {
      return failure(this.failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result success(_Success value),
    @required Result failure(_Failure value),
  }) {
    assert(initial != null);
    assert(success != null);
    assert(failure != null);
    return failure(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result success(_Success value),
    Result failure(_Failure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class _Failure implements ProfileActorState {
  const factory _Failure(ProfileFailure failure) = _$_Failure;

  ProfileFailure get failure;
  _$FailureCopyWith<_Failure> get copyWith;
}
