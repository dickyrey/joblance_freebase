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
    required TResult Function(String username) usernameOnChanged,
    required TResult Function(String phone) phoneOnChanged,
    required TResult Function(String email) emailOnChanged,
    required TResult Function(String password) passwordOnChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? signUpPressed,
    TResult? Function(String username)? usernameOnChanged,
    TResult? Function(String phone)? phoneOnChanged,
    TResult? Function(String email)? emailOnChanged,
    TResult? Function(String password)? passwordOnChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? signUpPressed,
    TResult Function(String username)? usernameOnChanged,
    TResult Function(String phone)? phoneOnChanged,
    TResult Function(String email)? emailOnChanged,
    TResult Function(String password)? passwordOnChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SignUpPressed value) signUpPressed,
    required TResult Function(_UsernameOnChanged value) usernameOnChanged,
    required TResult Function(_PhoneOnChanged value) phoneOnChanged,
    required TResult Function(_EmailOnChanged value) emailOnChanged,
    required TResult Function(_PasswordOnChanged value) passwordOnChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SignUpPressed value)? signUpPressed,
    TResult? Function(_UsernameOnChanged value)? usernameOnChanged,
    TResult? Function(_PhoneOnChanged value)? phoneOnChanged,
    TResult? Function(_EmailOnChanged value)? emailOnChanged,
    TResult? Function(_PasswordOnChanged value)? passwordOnChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SignUpPressed value)? signUpPressed,
    TResult Function(_UsernameOnChanged value)? usernameOnChanged,
    TResult Function(_PhoneOnChanged value)? phoneOnChanged,
    TResult Function(_EmailOnChanged value)? emailOnChanged,
    TResult Function(_PasswordOnChanged value)? passwordOnChanged,
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
    required TResult Function(String username) usernameOnChanged,
    required TResult Function(String phone) phoneOnChanged,
    required TResult Function(String email) emailOnChanged,
    required TResult Function(String password) passwordOnChanged,
  }) {
    return signUpPressed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? signUpPressed,
    TResult? Function(String username)? usernameOnChanged,
    TResult? Function(String phone)? phoneOnChanged,
    TResult? Function(String email)? emailOnChanged,
    TResult? Function(String password)? passwordOnChanged,
  }) {
    return signUpPressed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? signUpPressed,
    TResult Function(String username)? usernameOnChanged,
    TResult Function(String phone)? phoneOnChanged,
    TResult Function(String email)? emailOnChanged,
    TResult Function(String password)? passwordOnChanged,
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
    required TResult Function(_UsernameOnChanged value) usernameOnChanged,
    required TResult Function(_PhoneOnChanged value) phoneOnChanged,
    required TResult Function(_EmailOnChanged value) emailOnChanged,
    required TResult Function(_PasswordOnChanged value) passwordOnChanged,
  }) {
    return signUpPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SignUpPressed value)? signUpPressed,
    TResult? Function(_UsernameOnChanged value)? usernameOnChanged,
    TResult? Function(_PhoneOnChanged value)? phoneOnChanged,
    TResult? Function(_EmailOnChanged value)? emailOnChanged,
    TResult? Function(_PasswordOnChanged value)? passwordOnChanged,
  }) {
    return signUpPressed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SignUpPressed value)? signUpPressed,
    TResult Function(_UsernameOnChanged value)? usernameOnChanged,
    TResult Function(_PhoneOnChanged value)? phoneOnChanged,
    TResult Function(_EmailOnChanged value)? emailOnChanged,
    TResult Function(_PasswordOnChanged value)? passwordOnChanged,
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
abstract class _$$_UsernameOnChangedCopyWith<$Res> {
  factory _$$_UsernameOnChangedCopyWith(_$_UsernameOnChanged value,
          $Res Function(_$_UsernameOnChanged) then) =
      __$$_UsernameOnChangedCopyWithImpl<$Res>;
  @useResult
  $Res call({String username});
}

/// @nodoc
class __$$_UsernameOnChangedCopyWithImpl<$Res>
    extends _$SignUpFormEventCopyWithImpl<$Res, _$_UsernameOnChanged>
    implements _$$_UsernameOnChangedCopyWith<$Res> {
  __$$_UsernameOnChangedCopyWithImpl(
      _$_UsernameOnChanged _value, $Res Function(_$_UsernameOnChanged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? username = null,
  }) {
    return _then(_$_UsernameOnChanged(
      null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_UsernameOnChanged implements _UsernameOnChanged {
  const _$_UsernameOnChanged(this.username);

  @override
  final String username;

  @override
  String toString() {
    return 'SignUpFormEvent.usernameOnChanged(username: $username)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UsernameOnChanged &&
            (identical(other.username, username) ||
                other.username == username));
  }

  @override
  int get hashCode => Object.hash(runtimeType, username);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UsernameOnChangedCopyWith<_$_UsernameOnChanged> get copyWith =>
      __$$_UsernameOnChangedCopyWithImpl<_$_UsernameOnChanged>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() signUpPressed,
    required TResult Function(String username) usernameOnChanged,
    required TResult Function(String phone) phoneOnChanged,
    required TResult Function(String email) emailOnChanged,
    required TResult Function(String password) passwordOnChanged,
  }) {
    return usernameOnChanged(username);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? signUpPressed,
    TResult? Function(String username)? usernameOnChanged,
    TResult? Function(String phone)? phoneOnChanged,
    TResult? Function(String email)? emailOnChanged,
    TResult? Function(String password)? passwordOnChanged,
  }) {
    return usernameOnChanged?.call(username);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? signUpPressed,
    TResult Function(String username)? usernameOnChanged,
    TResult Function(String phone)? phoneOnChanged,
    TResult Function(String email)? emailOnChanged,
    TResult Function(String password)? passwordOnChanged,
    required TResult orElse(),
  }) {
    if (usernameOnChanged != null) {
      return usernameOnChanged(username);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SignUpPressed value) signUpPressed,
    required TResult Function(_UsernameOnChanged value) usernameOnChanged,
    required TResult Function(_PhoneOnChanged value) phoneOnChanged,
    required TResult Function(_EmailOnChanged value) emailOnChanged,
    required TResult Function(_PasswordOnChanged value) passwordOnChanged,
  }) {
    return usernameOnChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SignUpPressed value)? signUpPressed,
    TResult? Function(_UsernameOnChanged value)? usernameOnChanged,
    TResult? Function(_PhoneOnChanged value)? phoneOnChanged,
    TResult? Function(_EmailOnChanged value)? emailOnChanged,
    TResult? Function(_PasswordOnChanged value)? passwordOnChanged,
  }) {
    return usernameOnChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SignUpPressed value)? signUpPressed,
    TResult Function(_UsernameOnChanged value)? usernameOnChanged,
    TResult Function(_PhoneOnChanged value)? phoneOnChanged,
    TResult Function(_EmailOnChanged value)? emailOnChanged,
    TResult Function(_PasswordOnChanged value)? passwordOnChanged,
    required TResult orElse(),
  }) {
    if (usernameOnChanged != null) {
      return usernameOnChanged(this);
    }
    return orElse();
  }
}

abstract class _UsernameOnChanged implements SignUpFormEvent {
  const factory _UsernameOnChanged(final String username) =
      _$_UsernameOnChanged;

  String get username;
  @JsonKey(ignore: true)
  _$$_UsernameOnChangedCopyWith<_$_UsernameOnChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_PhoneOnChangedCopyWith<$Res> {
  factory _$$_PhoneOnChangedCopyWith(
          _$_PhoneOnChanged value, $Res Function(_$_PhoneOnChanged) then) =
      __$$_PhoneOnChangedCopyWithImpl<$Res>;
  @useResult
  $Res call({String phone});
}

/// @nodoc
class __$$_PhoneOnChangedCopyWithImpl<$Res>
    extends _$SignUpFormEventCopyWithImpl<$Res, _$_PhoneOnChanged>
    implements _$$_PhoneOnChangedCopyWith<$Res> {
  __$$_PhoneOnChangedCopyWithImpl(
      _$_PhoneOnChanged _value, $Res Function(_$_PhoneOnChanged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phone = null,
  }) {
    return _then(_$_PhoneOnChanged(
      null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_PhoneOnChanged implements _PhoneOnChanged {
  const _$_PhoneOnChanged(this.phone);

  @override
  final String phone;

  @override
  String toString() {
    return 'SignUpFormEvent.phoneOnChanged(phone: $phone)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PhoneOnChanged &&
            (identical(other.phone, phone) || other.phone == phone));
  }

  @override
  int get hashCode => Object.hash(runtimeType, phone);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PhoneOnChangedCopyWith<_$_PhoneOnChanged> get copyWith =>
      __$$_PhoneOnChangedCopyWithImpl<_$_PhoneOnChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() signUpPressed,
    required TResult Function(String username) usernameOnChanged,
    required TResult Function(String phone) phoneOnChanged,
    required TResult Function(String email) emailOnChanged,
    required TResult Function(String password) passwordOnChanged,
  }) {
    return phoneOnChanged(phone);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? signUpPressed,
    TResult? Function(String username)? usernameOnChanged,
    TResult? Function(String phone)? phoneOnChanged,
    TResult? Function(String email)? emailOnChanged,
    TResult? Function(String password)? passwordOnChanged,
  }) {
    return phoneOnChanged?.call(phone);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? signUpPressed,
    TResult Function(String username)? usernameOnChanged,
    TResult Function(String phone)? phoneOnChanged,
    TResult Function(String email)? emailOnChanged,
    TResult Function(String password)? passwordOnChanged,
    required TResult orElse(),
  }) {
    if (phoneOnChanged != null) {
      return phoneOnChanged(phone);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SignUpPressed value) signUpPressed,
    required TResult Function(_UsernameOnChanged value) usernameOnChanged,
    required TResult Function(_PhoneOnChanged value) phoneOnChanged,
    required TResult Function(_EmailOnChanged value) emailOnChanged,
    required TResult Function(_PasswordOnChanged value) passwordOnChanged,
  }) {
    return phoneOnChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SignUpPressed value)? signUpPressed,
    TResult? Function(_UsernameOnChanged value)? usernameOnChanged,
    TResult? Function(_PhoneOnChanged value)? phoneOnChanged,
    TResult? Function(_EmailOnChanged value)? emailOnChanged,
    TResult? Function(_PasswordOnChanged value)? passwordOnChanged,
  }) {
    return phoneOnChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SignUpPressed value)? signUpPressed,
    TResult Function(_UsernameOnChanged value)? usernameOnChanged,
    TResult Function(_PhoneOnChanged value)? phoneOnChanged,
    TResult Function(_EmailOnChanged value)? emailOnChanged,
    TResult Function(_PasswordOnChanged value)? passwordOnChanged,
    required TResult orElse(),
  }) {
    if (phoneOnChanged != null) {
      return phoneOnChanged(this);
    }
    return orElse();
  }
}

abstract class _PhoneOnChanged implements SignUpFormEvent {
  const factory _PhoneOnChanged(final String phone) = _$_PhoneOnChanged;

  String get phone;
  @JsonKey(ignore: true)
  _$$_PhoneOnChangedCopyWith<_$_PhoneOnChanged> get copyWith =>
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
    required TResult Function(String username) usernameOnChanged,
    required TResult Function(String phone) phoneOnChanged,
    required TResult Function(String email) emailOnChanged,
    required TResult Function(String password) passwordOnChanged,
  }) {
    return emailOnChanged(email);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? signUpPressed,
    TResult? Function(String username)? usernameOnChanged,
    TResult? Function(String phone)? phoneOnChanged,
    TResult? Function(String email)? emailOnChanged,
    TResult? Function(String password)? passwordOnChanged,
  }) {
    return emailOnChanged?.call(email);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? signUpPressed,
    TResult Function(String username)? usernameOnChanged,
    TResult Function(String phone)? phoneOnChanged,
    TResult Function(String email)? emailOnChanged,
    TResult Function(String password)? passwordOnChanged,
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
    required TResult Function(_UsernameOnChanged value) usernameOnChanged,
    required TResult Function(_PhoneOnChanged value) phoneOnChanged,
    required TResult Function(_EmailOnChanged value) emailOnChanged,
    required TResult Function(_PasswordOnChanged value) passwordOnChanged,
  }) {
    return emailOnChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SignUpPressed value)? signUpPressed,
    TResult? Function(_UsernameOnChanged value)? usernameOnChanged,
    TResult? Function(_PhoneOnChanged value)? phoneOnChanged,
    TResult? Function(_EmailOnChanged value)? emailOnChanged,
    TResult? Function(_PasswordOnChanged value)? passwordOnChanged,
  }) {
    return emailOnChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SignUpPressed value)? signUpPressed,
    TResult Function(_UsernameOnChanged value)? usernameOnChanged,
    TResult Function(_PhoneOnChanged value)? phoneOnChanged,
    TResult Function(_EmailOnChanged value)? emailOnChanged,
    TResult Function(_PasswordOnChanged value)? passwordOnChanged,
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
    required TResult Function(String username) usernameOnChanged,
    required TResult Function(String phone) phoneOnChanged,
    required TResult Function(String email) emailOnChanged,
    required TResult Function(String password) passwordOnChanged,
  }) {
    return passwordOnChanged(password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? signUpPressed,
    TResult? Function(String username)? usernameOnChanged,
    TResult? Function(String phone)? phoneOnChanged,
    TResult? Function(String email)? emailOnChanged,
    TResult? Function(String password)? passwordOnChanged,
  }) {
    return passwordOnChanged?.call(password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? signUpPressed,
    TResult Function(String username)? usernameOnChanged,
    TResult Function(String phone)? phoneOnChanged,
    TResult Function(String email)? emailOnChanged,
    TResult Function(String password)? passwordOnChanged,
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
    required TResult Function(_UsernameOnChanged value) usernameOnChanged,
    required TResult Function(_PhoneOnChanged value) phoneOnChanged,
    required TResult Function(_EmailOnChanged value) emailOnChanged,
    required TResult Function(_PasswordOnChanged value) passwordOnChanged,
  }) {
    return passwordOnChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SignUpPressed value)? signUpPressed,
    TResult? Function(_UsernameOnChanged value)? usernameOnChanged,
    TResult? Function(_PhoneOnChanged value)? phoneOnChanged,
    TResult? Function(_EmailOnChanged value)? emailOnChanged,
    TResult? Function(_PasswordOnChanged value)? passwordOnChanged,
  }) {
    return passwordOnChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SignUpPressed value)? signUpPressed,
    TResult Function(_UsernameOnChanged value)? usernameOnChanged,
    TResult Function(_PhoneOnChanged value)? phoneOnChanged,
    TResult Function(_EmailOnChanged value)? emailOnChanged,
    TResult Function(_PasswordOnChanged value)? passwordOnChanged,
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
mixin _$SignUpFormState {
  RequestState get state => throw _privateConstructorUsedError;
  String get username => throw _privateConstructorUsedError;
  String get phone => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  bool get isSubmitting => throw _privateConstructorUsedError;
  bool get showErrorMessages => throw _privateConstructorUsedError;

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
      String username,
      String phone,
      String email,
      String password,
      String message,
      bool isSubmitting,
      bool showErrorMessages});
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
    Object? username = null,
    Object? phone = null,
    Object? email = null,
    Object? password = null,
    Object? message = null,
    Object? isSubmitting = null,
    Object? showErrorMessages = null,
  }) {
    return _then(_value.copyWith(
      state: null == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as RequestState,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
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
      showErrorMessages: null == showErrorMessages
          ? _value.showErrorMessages
          : showErrorMessages // ignore: cast_nullable_to_non_nullable
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
      String username,
      String phone,
      String email,
      String password,
      String message,
      bool isSubmitting,
      bool showErrorMessages});
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
    Object? username = null,
    Object? phone = null,
    Object? email = null,
    Object? password = null,
    Object? message = null,
    Object? isSubmitting = null,
    Object? showErrorMessages = null,
  }) {
    return _then(_$_SignUpFormState(
      state: null == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as RequestState,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
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
      showErrorMessages: null == showErrorMessages
          ? _value.showErrorMessages
          : showErrorMessages // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_SignUpFormState implements _SignUpFormState {
  const _$_SignUpFormState(
      {required this.state,
      required this.username,
      required this.phone,
      required this.email,
      required this.password,
      required this.message,
      required this.isSubmitting,
      required this.showErrorMessages});

  @override
  final RequestState state;
  @override
  final String username;
  @override
  final String phone;
  @override
  final String email;
  @override
  final String password;
  @override
  final String message;
  @override
  final bool isSubmitting;
  @override
  final bool showErrorMessages;

  @override
  String toString() {
    return 'SignUpFormState(state: $state, username: $username, phone: $phone, email: $email, password: $password, message: $message, isSubmitting: $isSubmitting, showErrorMessages: $showErrorMessages)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SignUpFormState &&
            (identical(other.state, state) || other.state == state) &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.isSubmitting, isSubmitting) ||
                other.isSubmitting == isSubmitting) &&
            (identical(other.showErrorMessages, showErrorMessages) ||
                other.showErrorMessages == showErrorMessages));
  }

  @override
  int get hashCode => Object.hash(runtimeType, state, username, phone, email,
      password, message, isSubmitting, showErrorMessages);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SignUpFormStateCopyWith<_$_SignUpFormState> get copyWith =>
      __$$_SignUpFormStateCopyWithImpl<_$_SignUpFormState>(this, _$identity);
}

abstract class _SignUpFormState implements SignUpFormState {
  const factory _SignUpFormState(
      {required final RequestState state,
      required final String username,
      required final String phone,
      required final String email,
      required final String password,
      required final String message,
      required final bool isSubmitting,
      required final bool showErrorMessages}) = _$_SignUpFormState;

  @override
  RequestState get state;
  @override
  String get username;
  @override
  String get phone;
  @override
  String get email;
  @override
  String get password;
  @override
  String get message;
  @override
  bool get isSubmitting;
  @override
  bool get showErrorMessages;
  @override
  @JsonKey(ignore: true)
  _$$_SignUpFormStateCopyWith<_$_SignUpFormState> get copyWith =>
      throw _privateConstructorUsedError;
}
