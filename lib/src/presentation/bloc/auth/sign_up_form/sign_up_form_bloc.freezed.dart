// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sign_up_form_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SignUpFormEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() signUpPressed,
    required TResult Function(String fullName) fullNameOnChanged,
    required TResult Function(String phoneNumber) phoneNumberOnChanged,
    required TResult Function(String email) emailOnChanged,
    required TResult Function(String password) passwordOnChanged,
    required TResult Function() signUpWithGooglePressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? signUpPressed,
    TResult? Function(String fullName)? fullNameOnChanged,
    TResult? Function(String phoneNumber)? phoneNumberOnChanged,
    TResult? Function(String email)? emailOnChanged,
    TResult? Function(String password)? passwordOnChanged,
    TResult? Function()? signUpWithGooglePressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? signUpPressed,
    TResult Function(String fullName)? fullNameOnChanged,
    TResult Function(String phoneNumber)? phoneNumberOnChanged,
    TResult Function(String email)? emailOnChanged,
    TResult Function(String password)? passwordOnChanged,
    TResult Function()? signUpWithGooglePressed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SignUpPressed value) signUpPressed,
    required TResult Function(_FullNameOnChanged value) fullNameOnChanged,
    required TResult Function(_PhoneNumberOnChanged value) phoneNumberOnChanged,
    required TResult Function(_EmailOnChanged value) emailOnChanged,
    required TResult Function(_PasswordOnChanged value) passwordOnChanged,
    required TResult Function(_SignUpWithGooglePressed value)
        signUpWithGooglePressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SignUpPressed value)? signUpPressed,
    TResult? Function(_FullNameOnChanged value)? fullNameOnChanged,
    TResult? Function(_PhoneNumberOnChanged value)? phoneNumberOnChanged,
    TResult? Function(_EmailOnChanged value)? emailOnChanged,
    TResult? Function(_PasswordOnChanged value)? passwordOnChanged,
    TResult? Function(_SignUpWithGooglePressed value)? signUpWithGooglePressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SignUpPressed value)? signUpPressed,
    TResult Function(_FullNameOnChanged value)? fullNameOnChanged,
    TResult Function(_PhoneNumberOnChanged value)? phoneNumberOnChanged,
    TResult Function(_EmailOnChanged value)? emailOnChanged,
    TResult Function(_PasswordOnChanged value)? passwordOnChanged,
    TResult Function(_SignUpWithGooglePressed value)? signUpWithGooglePressed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignUpFormEventCopyWith<$Res> {
  factory $SignUpFormEventCopyWith(
          SignUpFormEvent value, $Res Function(SignUpFormEvent) then) =
      _$SignUpFormEventCopyWithImpl<$Res, SignUpFormEvent>;
}

/// @nodoc
class _$SignUpFormEventCopyWithImpl<$Res, $Val extends SignUpFormEvent>
    implements $SignUpFormEventCopyWith<$Res> {
  _$SignUpFormEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_SignUpPressedCopyWith<$Res> {
  factory _$$_SignUpPressedCopyWith(
          _$_SignUpPressed value, $Res Function(_$_SignUpPressed) then) =
      __$$_SignUpPressedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_SignUpPressedCopyWithImpl<$Res>
    extends _$SignUpFormEventCopyWithImpl<$Res, _$_SignUpPressed>
    implements _$$_SignUpPressedCopyWith<$Res> {
  __$$_SignUpPressedCopyWithImpl(
      _$_SignUpPressed _value, $Res Function(_$_SignUpPressed) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_SignUpPressed implements _SignUpPressed {
  const _$_SignUpPressed();

  @override
  String toString() {
    return 'SignUpFormEvent.signUpPressed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_SignUpPressed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() signUpPressed,
    required TResult Function(String fullName) fullNameOnChanged,
    required TResult Function(String phoneNumber) phoneNumberOnChanged,
    required TResult Function(String email) emailOnChanged,
    required TResult Function(String password) passwordOnChanged,
    required TResult Function() signUpWithGooglePressed,
  }) {
    return signUpPressed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? signUpPressed,
    TResult? Function(String fullName)? fullNameOnChanged,
    TResult? Function(String phoneNumber)? phoneNumberOnChanged,
    TResult? Function(String email)? emailOnChanged,
    TResult? Function(String password)? passwordOnChanged,
    TResult? Function()? signUpWithGooglePressed,
  }) {
    return signUpPressed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? signUpPressed,
    TResult Function(String fullName)? fullNameOnChanged,
    TResult Function(String phoneNumber)? phoneNumberOnChanged,
    TResult Function(String email)? emailOnChanged,
    TResult Function(String password)? passwordOnChanged,
    TResult Function()? signUpWithGooglePressed,
    required TResult orElse(),
  }) {
    if (signUpPressed != null) {
      return signUpPressed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SignUpPressed value) signUpPressed,
    required TResult Function(_FullNameOnChanged value) fullNameOnChanged,
    required TResult Function(_PhoneNumberOnChanged value) phoneNumberOnChanged,
    required TResult Function(_EmailOnChanged value) emailOnChanged,
    required TResult Function(_PasswordOnChanged value) passwordOnChanged,
    required TResult Function(_SignUpWithGooglePressed value)
        signUpWithGooglePressed,
  }) {
    return signUpPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SignUpPressed value)? signUpPressed,
    TResult? Function(_FullNameOnChanged value)? fullNameOnChanged,
    TResult? Function(_PhoneNumberOnChanged value)? phoneNumberOnChanged,
    TResult? Function(_EmailOnChanged value)? emailOnChanged,
    TResult? Function(_PasswordOnChanged value)? passwordOnChanged,
    TResult? Function(_SignUpWithGooglePressed value)? signUpWithGooglePressed,
  }) {
    return signUpPressed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SignUpPressed value)? signUpPressed,
    TResult Function(_FullNameOnChanged value)? fullNameOnChanged,
    TResult Function(_PhoneNumberOnChanged value)? phoneNumberOnChanged,
    TResult Function(_EmailOnChanged value)? emailOnChanged,
    TResult Function(_PasswordOnChanged value)? passwordOnChanged,
    TResult Function(_SignUpWithGooglePressed value)? signUpWithGooglePressed,
    required TResult orElse(),
  }) {
    if (signUpPressed != null) {
      return signUpPressed(this);
    }
    return orElse();
  }
}

abstract class _SignUpPressed implements SignUpFormEvent {
  const factory _SignUpPressed() = _$_SignUpPressed;
}

/// @nodoc
abstract class _$$_FullNameOnChangedCopyWith<$Res> {
  factory _$$_FullNameOnChangedCopyWith(_$_FullNameOnChanged value,
          $Res Function(_$_FullNameOnChanged) then) =
      __$$_FullNameOnChangedCopyWithImpl<$Res>;
  @useResult
  $Res call({String fullName});
}

/// @nodoc
class __$$_FullNameOnChangedCopyWithImpl<$Res>
    extends _$SignUpFormEventCopyWithImpl<$Res, _$_FullNameOnChanged>
    implements _$$_FullNameOnChangedCopyWith<$Res> {
  __$$_FullNameOnChangedCopyWithImpl(
      _$_FullNameOnChanged _value, $Res Function(_$_FullNameOnChanged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fullName = null,
  }) {
    return _then(_$_FullNameOnChanged(
      null == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_FullNameOnChanged implements _FullNameOnChanged {
  const _$_FullNameOnChanged(this.fullName);

  @override
  final String fullName;

  @override
  String toString() {
    return 'SignUpFormEvent.fullNameOnChanged(fullName: $fullName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FullNameOnChanged &&
            (identical(other.fullName, fullName) ||
                other.fullName == fullName));
  }

  @override
  int get hashCode => Object.hash(runtimeType, fullName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FullNameOnChangedCopyWith<_$_FullNameOnChanged> get copyWith =>
      __$$_FullNameOnChangedCopyWithImpl<_$_FullNameOnChanged>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() signUpPressed,
    required TResult Function(String fullName) fullNameOnChanged,
    required TResult Function(String phoneNumber) phoneNumberOnChanged,
    required TResult Function(String email) emailOnChanged,
    required TResult Function(String password) passwordOnChanged,
    required TResult Function() signUpWithGooglePressed,
  }) {
    return fullNameOnChanged(fullName);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? signUpPressed,
    TResult? Function(String fullName)? fullNameOnChanged,
    TResult? Function(String phoneNumber)? phoneNumberOnChanged,
    TResult? Function(String email)? emailOnChanged,
    TResult? Function(String password)? passwordOnChanged,
    TResult? Function()? signUpWithGooglePressed,
  }) {
    return fullNameOnChanged?.call(fullName);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? signUpPressed,
    TResult Function(String fullName)? fullNameOnChanged,
    TResult Function(String phoneNumber)? phoneNumberOnChanged,
    TResult Function(String email)? emailOnChanged,
    TResult Function(String password)? passwordOnChanged,
    TResult Function()? signUpWithGooglePressed,
    required TResult orElse(),
  }) {
    if (fullNameOnChanged != null) {
      return fullNameOnChanged(fullName);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SignUpPressed value) signUpPressed,
    required TResult Function(_FullNameOnChanged value) fullNameOnChanged,
    required TResult Function(_PhoneNumberOnChanged value) phoneNumberOnChanged,
    required TResult Function(_EmailOnChanged value) emailOnChanged,
    required TResult Function(_PasswordOnChanged value) passwordOnChanged,
    required TResult Function(_SignUpWithGooglePressed value)
        signUpWithGooglePressed,
  }) {
    return fullNameOnChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SignUpPressed value)? signUpPressed,
    TResult? Function(_FullNameOnChanged value)? fullNameOnChanged,
    TResult? Function(_PhoneNumberOnChanged value)? phoneNumberOnChanged,
    TResult? Function(_EmailOnChanged value)? emailOnChanged,
    TResult? Function(_PasswordOnChanged value)? passwordOnChanged,
    TResult? Function(_SignUpWithGooglePressed value)? signUpWithGooglePressed,
  }) {
    return fullNameOnChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SignUpPressed value)? signUpPressed,
    TResult Function(_FullNameOnChanged value)? fullNameOnChanged,
    TResult Function(_PhoneNumberOnChanged value)? phoneNumberOnChanged,
    TResult Function(_EmailOnChanged value)? emailOnChanged,
    TResult Function(_PasswordOnChanged value)? passwordOnChanged,
    TResult Function(_SignUpWithGooglePressed value)? signUpWithGooglePressed,
    required TResult orElse(),
  }) {
    if (fullNameOnChanged != null) {
      return fullNameOnChanged(this);
    }
    return orElse();
  }
}

abstract class _FullNameOnChanged implements SignUpFormEvent {
  const factory _FullNameOnChanged(final String fullName) =
      _$_FullNameOnChanged;

  String get fullName;
  @JsonKey(ignore: true)
  _$$_FullNameOnChangedCopyWith<_$_FullNameOnChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_PhoneNumberOnChangedCopyWith<$Res> {
  factory _$$_PhoneNumberOnChangedCopyWith(_$_PhoneNumberOnChanged value,
          $Res Function(_$_PhoneNumberOnChanged) then) =
      __$$_PhoneNumberOnChangedCopyWithImpl<$Res>;
  @useResult
  $Res call({String phoneNumber});
}

/// @nodoc
class __$$_PhoneNumberOnChangedCopyWithImpl<$Res>
    extends _$SignUpFormEventCopyWithImpl<$Res, _$_PhoneNumberOnChanged>
    implements _$$_PhoneNumberOnChangedCopyWith<$Res> {
  __$$_PhoneNumberOnChangedCopyWithImpl(_$_PhoneNumberOnChanged _value,
      $Res Function(_$_PhoneNumberOnChanged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phoneNumber = null,
  }) {
    return _then(_$_PhoneNumberOnChanged(
      null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_PhoneNumberOnChanged implements _PhoneNumberOnChanged {
  const _$_PhoneNumberOnChanged(this.phoneNumber);

  @override
  final String phoneNumber;

  @override
  String toString() {
    return 'SignUpFormEvent.phoneNumberOnChanged(phoneNumber: $phoneNumber)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PhoneNumberOnChanged &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber));
  }

  @override
  int get hashCode => Object.hash(runtimeType, phoneNumber);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PhoneNumberOnChangedCopyWith<_$_PhoneNumberOnChanged> get copyWith =>
      __$$_PhoneNumberOnChangedCopyWithImpl<_$_PhoneNumberOnChanged>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() signUpPressed,
    required TResult Function(String fullName) fullNameOnChanged,
    required TResult Function(String phoneNumber) phoneNumberOnChanged,
    required TResult Function(String email) emailOnChanged,
    required TResult Function(String password) passwordOnChanged,
    required TResult Function() signUpWithGooglePressed,
  }) {
    return phoneNumberOnChanged(phoneNumber);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? signUpPressed,
    TResult? Function(String fullName)? fullNameOnChanged,
    TResult? Function(String phoneNumber)? phoneNumberOnChanged,
    TResult? Function(String email)? emailOnChanged,
    TResult? Function(String password)? passwordOnChanged,
    TResult? Function()? signUpWithGooglePressed,
  }) {
    return phoneNumberOnChanged?.call(phoneNumber);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? signUpPressed,
    TResult Function(String fullName)? fullNameOnChanged,
    TResult Function(String phoneNumber)? phoneNumberOnChanged,
    TResult Function(String email)? emailOnChanged,
    TResult Function(String password)? passwordOnChanged,
    TResult Function()? signUpWithGooglePressed,
    required TResult orElse(),
  }) {
    if (phoneNumberOnChanged != null) {
      return phoneNumberOnChanged(phoneNumber);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SignUpPressed value) signUpPressed,
    required TResult Function(_FullNameOnChanged value) fullNameOnChanged,
    required TResult Function(_PhoneNumberOnChanged value) phoneNumberOnChanged,
    required TResult Function(_EmailOnChanged value) emailOnChanged,
    required TResult Function(_PasswordOnChanged value) passwordOnChanged,
    required TResult Function(_SignUpWithGooglePressed value)
        signUpWithGooglePressed,
  }) {
    return phoneNumberOnChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SignUpPressed value)? signUpPressed,
    TResult? Function(_FullNameOnChanged value)? fullNameOnChanged,
    TResult? Function(_PhoneNumberOnChanged value)? phoneNumberOnChanged,
    TResult? Function(_EmailOnChanged value)? emailOnChanged,
    TResult? Function(_PasswordOnChanged value)? passwordOnChanged,
    TResult? Function(_SignUpWithGooglePressed value)? signUpWithGooglePressed,
  }) {
    return phoneNumberOnChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SignUpPressed value)? signUpPressed,
    TResult Function(_FullNameOnChanged value)? fullNameOnChanged,
    TResult Function(_PhoneNumberOnChanged value)? phoneNumberOnChanged,
    TResult Function(_EmailOnChanged value)? emailOnChanged,
    TResult Function(_PasswordOnChanged value)? passwordOnChanged,
    TResult Function(_SignUpWithGooglePressed value)? signUpWithGooglePressed,
    required TResult orElse(),
  }) {
    if (phoneNumberOnChanged != null) {
      return phoneNumberOnChanged(this);
    }
    return orElse();
  }
}

abstract class _PhoneNumberOnChanged implements SignUpFormEvent {
  const factory _PhoneNumberOnChanged(final String phoneNumber) =
      _$_PhoneNumberOnChanged;

  String get phoneNumber;
  @JsonKey(ignore: true)
  _$$_PhoneNumberOnChangedCopyWith<_$_PhoneNumberOnChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_EmailOnChangedCopyWith<$Res> {
  factory _$$_EmailOnChangedCopyWith(
          _$_EmailOnChanged value, $Res Function(_$_EmailOnChanged) then) =
      __$$_EmailOnChangedCopyWithImpl<$Res>;
  @useResult
  $Res call({String email});
}

/// @nodoc
class __$$_EmailOnChangedCopyWithImpl<$Res>
    extends _$SignUpFormEventCopyWithImpl<$Res, _$_EmailOnChanged>
    implements _$$_EmailOnChangedCopyWith<$Res> {
  __$$_EmailOnChangedCopyWithImpl(
      _$_EmailOnChanged _value, $Res Function(_$_EmailOnChanged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
  }) {
    return _then(_$_EmailOnChanged(
      null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_EmailOnChanged implements _EmailOnChanged {
  const _$_EmailOnChanged(this.email);

  @override
  final String email;

  @override
  String toString() {
    return 'SignUpFormEvent.emailOnChanged(email: $email)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EmailOnChanged &&
            (identical(other.email, email) || other.email == email));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_EmailOnChangedCopyWith<_$_EmailOnChanged> get copyWith =>
      __$$_EmailOnChangedCopyWithImpl<_$_EmailOnChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() signUpPressed,
    required TResult Function(String fullName) fullNameOnChanged,
    required TResult Function(String phoneNumber) phoneNumberOnChanged,
    required TResult Function(String email) emailOnChanged,
    required TResult Function(String password) passwordOnChanged,
    required TResult Function() signUpWithGooglePressed,
  }) {
    return emailOnChanged(email);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? signUpPressed,
    TResult? Function(String fullName)? fullNameOnChanged,
    TResult? Function(String phoneNumber)? phoneNumberOnChanged,
    TResult? Function(String email)? emailOnChanged,
    TResult? Function(String password)? passwordOnChanged,
    TResult? Function()? signUpWithGooglePressed,
  }) {
    return emailOnChanged?.call(email);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? signUpPressed,
    TResult Function(String fullName)? fullNameOnChanged,
    TResult Function(String phoneNumber)? phoneNumberOnChanged,
    TResult Function(String email)? emailOnChanged,
    TResult Function(String password)? passwordOnChanged,
    TResult Function()? signUpWithGooglePressed,
    required TResult orElse(),
  }) {
    if (emailOnChanged != null) {
      return emailOnChanged(email);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SignUpPressed value) signUpPressed,
    required TResult Function(_FullNameOnChanged value) fullNameOnChanged,
    required TResult Function(_PhoneNumberOnChanged value) phoneNumberOnChanged,
    required TResult Function(_EmailOnChanged value) emailOnChanged,
    required TResult Function(_PasswordOnChanged value) passwordOnChanged,
    required TResult Function(_SignUpWithGooglePressed value)
        signUpWithGooglePressed,
  }) {
    return emailOnChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SignUpPressed value)? signUpPressed,
    TResult? Function(_FullNameOnChanged value)? fullNameOnChanged,
    TResult? Function(_PhoneNumberOnChanged value)? phoneNumberOnChanged,
    TResult? Function(_EmailOnChanged value)? emailOnChanged,
    TResult? Function(_PasswordOnChanged value)? passwordOnChanged,
    TResult? Function(_SignUpWithGooglePressed value)? signUpWithGooglePressed,
  }) {
    return emailOnChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SignUpPressed value)? signUpPressed,
    TResult Function(_FullNameOnChanged value)? fullNameOnChanged,
    TResult Function(_PhoneNumberOnChanged value)? phoneNumberOnChanged,
    TResult Function(_EmailOnChanged value)? emailOnChanged,
    TResult Function(_PasswordOnChanged value)? passwordOnChanged,
    TResult Function(_SignUpWithGooglePressed value)? signUpWithGooglePressed,
    required TResult orElse(),
  }) {
    if (emailOnChanged != null) {
      return emailOnChanged(this);
    }
    return orElse();
  }
}

abstract class _EmailOnChanged implements SignUpFormEvent {
  const factory _EmailOnChanged(final String email) = _$_EmailOnChanged;

  String get email;
  @JsonKey(ignore: true)
  _$$_EmailOnChangedCopyWith<_$_EmailOnChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_PasswordOnChangedCopyWith<$Res> {
  factory _$$_PasswordOnChangedCopyWith(_$_PasswordOnChanged value,
          $Res Function(_$_PasswordOnChanged) then) =
      __$$_PasswordOnChangedCopyWithImpl<$Res>;
  @useResult
  $Res call({String password});
}

/// @nodoc
class __$$_PasswordOnChangedCopyWithImpl<$Res>
    extends _$SignUpFormEventCopyWithImpl<$Res, _$_PasswordOnChanged>
    implements _$$_PasswordOnChangedCopyWith<$Res> {
  __$$_PasswordOnChangedCopyWithImpl(
      _$_PasswordOnChanged _value, $Res Function(_$_PasswordOnChanged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? password = null,
  }) {
    return _then(_$_PasswordOnChanged(
      null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_PasswordOnChanged implements _PasswordOnChanged {
  const _$_PasswordOnChanged(this.password);

  @override
  final String password;

  @override
  String toString() {
    return 'SignUpFormEvent.passwordOnChanged(password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PasswordOnChanged &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PasswordOnChangedCopyWith<_$_PasswordOnChanged> get copyWith =>
      __$$_PasswordOnChangedCopyWithImpl<_$_PasswordOnChanged>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() signUpPressed,
    required TResult Function(String fullName) fullNameOnChanged,
    required TResult Function(String phoneNumber) phoneNumberOnChanged,
    required TResult Function(String email) emailOnChanged,
    required TResult Function(String password) passwordOnChanged,
    required TResult Function() signUpWithGooglePressed,
  }) {
    return passwordOnChanged(password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? signUpPressed,
    TResult? Function(String fullName)? fullNameOnChanged,
    TResult? Function(String phoneNumber)? phoneNumberOnChanged,
    TResult? Function(String email)? emailOnChanged,
    TResult? Function(String password)? passwordOnChanged,
    TResult? Function()? signUpWithGooglePressed,
  }) {
    return passwordOnChanged?.call(password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? signUpPressed,
    TResult Function(String fullName)? fullNameOnChanged,
    TResult Function(String phoneNumber)? phoneNumberOnChanged,
    TResult Function(String email)? emailOnChanged,
    TResult Function(String password)? passwordOnChanged,
    TResult Function()? signUpWithGooglePressed,
    required TResult orElse(),
  }) {
    if (passwordOnChanged != null) {
      return passwordOnChanged(password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SignUpPressed value) signUpPressed,
    required TResult Function(_FullNameOnChanged value) fullNameOnChanged,
    required TResult Function(_PhoneNumberOnChanged value) phoneNumberOnChanged,
    required TResult Function(_EmailOnChanged value) emailOnChanged,
    required TResult Function(_PasswordOnChanged value) passwordOnChanged,
    required TResult Function(_SignUpWithGooglePressed value)
        signUpWithGooglePressed,
  }) {
    return passwordOnChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SignUpPressed value)? signUpPressed,
    TResult? Function(_FullNameOnChanged value)? fullNameOnChanged,
    TResult? Function(_PhoneNumberOnChanged value)? phoneNumberOnChanged,
    TResult? Function(_EmailOnChanged value)? emailOnChanged,
    TResult? Function(_PasswordOnChanged value)? passwordOnChanged,
    TResult? Function(_SignUpWithGooglePressed value)? signUpWithGooglePressed,
  }) {
    return passwordOnChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SignUpPressed value)? signUpPressed,
    TResult Function(_FullNameOnChanged value)? fullNameOnChanged,
    TResult Function(_PhoneNumberOnChanged value)? phoneNumberOnChanged,
    TResult Function(_EmailOnChanged value)? emailOnChanged,
    TResult Function(_PasswordOnChanged value)? passwordOnChanged,
    TResult Function(_SignUpWithGooglePressed value)? signUpWithGooglePressed,
    required TResult orElse(),
  }) {
    if (passwordOnChanged != null) {
      return passwordOnChanged(this);
    }
    return orElse();
  }
}

abstract class _PasswordOnChanged implements SignUpFormEvent {
  const factory _PasswordOnChanged(final String password) =
      _$_PasswordOnChanged;

  String get password;
  @JsonKey(ignore: true)
  _$$_PasswordOnChangedCopyWith<_$_PasswordOnChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SignUpWithGooglePressedCopyWith<$Res> {
  factory _$$_SignUpWithGooglePressedCopyWith(_$_SignUpWithGooglePressed value,
          $Res Function(_$_SignUpWithGooglePressed) then) =
      __$$_SignUpWithGooglePressedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_SignUpWithGooglePressedCopyWithImpl<$Res>
    extends _$SignUpFormEventCopyWithImpl<$Res, _$_SignUpWithGooglePressed>
    implements _$$_SignUpWithGooglePressedCopyWith<$Res> {
  __$$_SignUpWithGooglePressedCopyWithImpl(_$_SignUpWithGooglePressed _value,
      $Res Function(_$_SignUpWithGooglePressed) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_SignUpWithGooglePressed implements _SignUpWithGooglePressed {
  const _$_SignUpWithGooglePressed();

  @override
  String toString() {
    return 'SignUpFormEvent.signUpWithGooglePressed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SignUpWithGooglePressed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() signUpPressed,
    required TResult Function(String fullName) fullNameOnChanged,
    required TResult Function(String phoneNumber) phoneNumberOnChanged,
    required TResult Function(String email) emailOnChanged,
    required TResult Function(String password) passwordOnChanged,
    required TResult Function() signUpWithGooglePressed,
  }) {
    return signUpWithGooglePressed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? signUpPressed,
    TResult? Function(String fullName)? fullNameOnChanged,
    TResult? Function(String phoneNumber)? phoneNumberOnChanged,
    TResult? Function(String email)? emailOnChanged,
    TResult? Function(String password)? passwordOnChanged,
    TResult? Function()? signUpWithGooglePressed,
  }) {
    return signUpWithGooglePressed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? signUpPressed,
    TResult Function(String fullName)? fullNameOnChanged,
    TResult Function(String phoneNumber)? phoneNumberOnChanged,
    TResult Function(String email)? emailOnChanged,
    TResult Function(String password)? passwordOnChanged,
    TResult Function()? signUpWithGooglePressed,
    required TResult orElse(),
  }) {
    if (signUpWithGooglePressed != null) {
      return signUpWithGooglePressed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SignUpPressed value) signUpPressed,
    required TResult Function(_FullNameOnChanged value) fullNameOnChanged,
    required TResult Function(_PhoneNumberOnChanged value) phoneNumberOnChanged,
    required TResult Function(_EmailOnChanged value) emailOnChanged,
    required TResult Function(_PasswordOnChanged value) passwordOnChanged,
    required TResult Function(_SignUpWithGooglePressed value)
        signUpWithGooglePressed,
  }) {
    return signUpWithGooglePressed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SignUpPressed value)? signUpPressed,
    TResult? Function(_FullNameOnChanged value)? fullNameOnChanged,
    TResult? Function(_PhoneNumberOnChanged value)? phoneNumberOnChanged,
    TResult? Function(_EmailOnChanged value)? emailOnChanged,
    TResult? Function(_PasswordOnChanged value)? passwordOnChanged,
    TResult? Function(_SignUpWithGooglePressed value)? signUpWithGooglePressed,
  }) {
    return signUpWithGooglePressed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SignUpPressed value)? signUpPressed,
    TResult Function(_FullNameOnChanged value)? fullNameOnChanged,
    TResult Function(_PhoneNumberOnChanged value)? phoneNumberOnChanged,
    TResult Function(_EmailOnChanged value)? emailOnChanged,
    TResult Function(_PasswordOnChanged value)? passwordOnChanged,
    TResult Function(_SignUpWithGooglePressed value)? signUpWithGooglePressed,
    required TResult orElse(),
  }) {
    if (signUpWithGooglePressed != null) {
      return signUpWithGooglePressed(this);
    }
    return orElse();
  }
}

abstract class _SignUpWithGooglePressed implements SignUpFormEvent {
  const factory _SignUpWithGooglePressed() = _$_SignUpWithGooglePressed;
}

/// @nodoc
mixin _$SignUpFormState {
  RequestState get state => throw _privateConstructorUsedError;
  String get fullName => throw _privateConstructorUsedError;
  String get phoneNumber => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  bool get isSubmitting => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SignUpFormStateCopyWith<SignUpFormState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignUpFormStateCopyWith<$Res> {
  factory $SignUpFormStateCopyWith(
          SignUpFormState value, $Res Function(SignUpFormState) then) =
      _$SignUpFormStateCopyWithImpl<$Res, SignUpFormState>;
  @useResult
  $Res call(
      {RequestState state,
      String fullName,
      String phoneNumber,
      String email,
      String password,
      String message,
      bool isSubmitting});
}

/// @nodoc
class _$SignUpFormStateCopyWithImpl<$Res, $Val extends SignUpFormState>
    implements $SignUpFormStateCopyWith<$Res> {
  _$SignUpFormStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? state = null,
    Object? fullName = null,
    Object? phoneNumber = null,
    Object? email = null,
    Object? password = null,
    Object? message = null,
    Object? isSubmitting = null,
  }) {
    return _then(_value.copyWith(
      state: null == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as RequestState,
      fullName: null == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String,
      phoneNumber: null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      isSubmitting: null == isSubmitting
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SignUpFormStateCopyWith<$Res>
    implements $SignUpFormStateCopyWith<$Res> {
  factory _$$_SignUpFormStateCopyWith(
          _$_SignUpFormState value, $Res Function(_$_SignUpFormState) then) =
      __$$_SignUpFormStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {RequestState state,
      String fullName,
      String phoneNumber,
      String email,
      String password,
      String message,
      bool isSubmitting});
}

/// @nodoc
class __$$_SignUpFormStateCopyWithImpl<$Res>
    extends _$SignUpFormStateCopyWithImpl<$Res, _$_SignUpFormState>
    implements _$$_SignUpFormStateCopyWith<$Res> {
  __$$_SignUpFormStateCopyWithImpl(
      _$_SignUpFormState _value, $Res Function(_$_SignUpFormState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? state = null,
    Object? fullName = null,
    Object? phoneNumber = null,
    Object? email = null,
    Object? password = null,
    Object? message = null,
    Object? isSubmitting = null,
  }) {
    return _then(_$_SignUpFormState(
      state: null == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as RequestState,
      fullName: null == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String,
      phoneNumber: null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      isSubmitting: null == isSubmitting
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_SignUpFormState implements _SignUpFormState {
  const _$_SignUpFormState(
      {required this.state,
      required this.fullName,
      required this.phoneNumber,
      required this.email,
      required this.password,
      required this.message,
      required this.isSubmitting});

  @override
  final RequestState state;
  @override
  final String fullName;
  @override
  final String phoneNumber;
  @override
  final String email;
  @override
  final String password;
  @override
  final String message;
  @override
  final bool isSubmitting;

  @override
  String toString() {
    return 'SignUpFormState(state: $state, fullName: $fullName, phoneNumber: $phoneNumber, email: $email, password: $password, message: $message, isSubmitting: $isSubmitting)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SignUpFormState &&
            (identical(other.state, state) || other.state == state) &&
            (identical(other.fullName, fullName) ||
                other.fullName == fullName) &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.isSubmitting, isSubmitting) ||
                other.isSubmitting == isSubmitting));
  }

  @override
  int get hashCode => Object.hash(runtimeType, state, fullName, phoneNumber,
      email, password, message, isSubmitting);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SignUpFormStateCopyWith<_$_SignUpFormState> get copyWith =>
      __$$_SignUpFormStateCopyWithImpl<_$_SignUpFormState>(this, _$identity);
}

abstract class _SignUpFormState implements SignUpFormState {
  const factory _SignUpFormState(
      {required final RequestState state,
      required final String fullName,
      required final String phoneNumber,
      required final String email,
      required final String password,
      required final String message,
      required final bool isSubmitting}) = _$_SignUpFormState;

  @override
  RequestState get state;
  @override
  String get fullName;
  @override
  String get phoneNumber;
  @override
  String get email;
  @override
  String get password;
  @override
  String get message;
  @override
  bool get isSubmitting;
  @override
  @JsonKey(ignore: true)
  _$$_SignUpFormStateCopyWith<_$_SignUpFormState> get copyWith =>
      throw _privateConstructorUsedError;
}
