// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'profile_form_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ProfileFormEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Profile profile) initialized,
    required TResult Function(Profile profile) saveChangesPressed,
    required TResult Function(String value) fullNameOnChanged,
    required TResult Function(String value) addressOnChanged,
    required TResult Function(String value) positionOnChanged,
    required TResult Function(String value) companyOnChanged,
    required TResult Function(String value) locationOnChanged,
    required TResult Function(String value) phoneNumberOnChanged,
    required TResult Function(String value) aboutOnChanged,
    required TResult Function(Timestamp value) birthdayOnChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Profile profile)? initialized,
    TResult? Function(Profile profile)? saveChangesPressed,
    TResult? Function(String value)? fullNameOnChanged,
    TResult? Function(String value)? addressOnChanged,
    TResult? Function(String value)? positionOnChanged,
    TResult? Function(String value)? companyOnChanged,
    TResult? Function(String value)? locationOnChanged,
    TResult? Function(String value)? phoneNumberOnChanged,
    TResult? Function(String value)? aboutOnChanged,
    TResult? Function(Timestamp value)? birthdayOnChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Profile profile)? initialized,
    TResult Function(Profile profile)? saveChangesPressed,
    TResult Function(String value)? fullNameOnChanged,
    TResult Function(String value)? addressOnChanged,
    TResult Function(String value)? positionOnChanged,
    TResult Function(String value)? companyOnChanged,
    TResult Function(String value)? locationOnChanged,
    TResult Function(String value)? phoneNumberOnChanged,
    TResult Function(String value)? aboutOnChanged,
    TResult Function(Timestamp value)? birthdayOnChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_SaveChangesPressed value) saveChangesPressed,
    required TResult Function(_FullNameOnChanged value) fullNameOnChanged,
    required TResult Function(_AddressOnChanged value) addressOnChanged,
    required TResult Function(_PositionOnChanged value) positionOnChanged,
    required TResult Function(_CompanyOnChanged value) companyOnChanged,
    required TResult Function(_LocationOnChanged value) locationOnChanged,
    required TResult Function(_PhoneNumberOnChanged value) phoneNumberOnChanged,
    required TResult Function(_AboutOnChanged value) aboutOnChanged,
    required TResult Function(_BirthdayOnChanged value) birthdayOnChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialized value)? initialized,
    TResult? Function(_SaveChangesPressed value)? saveChangesPressed,
    TResult? Function(_FullNameOnChanged value)? fullNameOnChanged,
    TResult? Function(_AddressOnChanged value)? addressOnChanged,
    TResult? Function(_PositionOnChanged value)? positionOnChanged,
    TResult? Function(_CompanyOnChanged value)? companyOnChanged,
    TResult? Function(_LocationOnChanged value)? locationOnChanged,
    TResult? Function(_PhoneNumberOnChanged value)? phoneNumberOnChanged,
    TResult? Function(_AboutOnChanged value)? aboutOnChanged,
    TResult? Function(_BirthdayOnChanged value)? birthdayOnChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_SaveChangesPressed value)? saveChangesPressed,
    TResult Function(_FullNameOnChanged value)? fullNameOnChanged,
    TResult Function(_AddressOnChanged value)? addressOnChanged,
    TResult Function(_PositionOnChanged value)? positionOnChanged,
    TResult Function(_CompanyOnChanged value)? companyOnChanged,
    TResult Function(_LocationOnChanged value)? locationOnChanged,
    TResult Function(_PhoneNumberOnChanged value)? phoneNumberOnChanged,
    TResult Function(_AboutOnChanged value)? aboutOnChanged,
    TResult Function(_BirthdayOnChanged value)? birthdayOnChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileFormEventCopyWith<$Res> {
  factory $ProfileFormEventCopyWith(
          ProfileFormEvent value, $Res Function(ProfileFormEvent) then) =
      _$ProfileFormEventCopyWithImpl<$Res, ProfileFormEvent>;
}

/// @nodoc
class _$ProfileFormEventCopyWithImpl<$Res, $Val extends ProfileFormEvent>
    implements $ProfileFormEventCopyWith<$Res> {
  _$ProfileFormEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_InitializedCopyWith<$Res> {
  factory _$$_InitializedCopyWith(
          _$_Initialized value, $Res Function(_$_Initialized) then) =
      __$$_InitializedCopyWithImpl<$Res>;
  @useResult
  $Res call({Profile profile});
}

/// @nodoc
class __$$_InitializedCopyWithImpl<$Res>
    extends _$ProfileFormEventCopyWithImpl<$Res, _$_Initialized>
    implements _$$_InitializedCopyWith<$Res> {
  __$$_InitializedCopyWithImpl(
      _$_Initialized _value, $Res Function(_$_Initialized) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? profile = null,
  }) {
    return _then(_$_Initialized(
      null == profile
          ? _value.profile
          : profile // ignore: cast_nullable_to_non_nullable
              as Profile,
    ));
  }
}

/// @nodoc

class _$_Initialized implements _Initialized {
  const _$_Initialized(this.profile);

  @override
  final Profile profile;

  @override
  String toString() {
    return 'ProfileFormEvent.initialized(profile: $profile)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Initialized &&
            (identical(other.profile, profile) || other.profile == profile));
  }

  @override
  int get hashCode => Object.hash(runtimeType, profile);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InitializedCopyWith<_$_Initialized> get copyWith =>
      __$$_InitializedCopyWithImpl<_$_Initialized>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Profile profile) initialized,
    required TResult Function(Profile profile) saveChangesPressed,
    required TResult Function(String value) fullNameOnChanged,
    required TResult Function(String value) addressOnChanged,
    required TResult Function(String value) positionOnChanged,
    required TResult Function(String value) companyOnChanged,
    required TResult Function(String value) locationOnChanged,
    required TResult Function(String value) phoneNumberOnChanged,
    required TResult Function(String value) aboutOnChanged,
    required TResult Function(Timestamp value) birthdayOnChanged,
  }) {
    return initialized(profile);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Profile profile)? initialized,
    TResult? Function(Profile profile)? saveChangesPressed,
    TResult? Function(String value)? fullNameOnChanged,
    TResult? Function(String value)? addressOnChanged,
    TResult? Function(String value)? positionOnChanged,
    TResult? Function(String value)? companyOnChanged,
    TResult? Function(String value)? locationOnChanged,
    TResult? Function(String value)? phoneNumberOnChanged,
    TResult? Function(String value)? aboutOnChanged,
    TResult? Function(Timestamp value)? birthdayOnChanged,
  }) {
    return initialized?.call(profile);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Profile profile)? initialized,
    TResult Function(Profile profile)? saveChangesPressed,
    TResult Function(String value)? fullNameOnChanged,
    TResult Function(String value)? addressOnChanged,
    TResult Function(String value)? positionOnChanged,
    TResult Function(String value)? companyOnChanged,
    TResult Function(String value)? locationOnChanged,
    TResult Function(String value)? phoneNumberOnChanged,
    TResult Function(String value)? aboutOnChanged,
    TResult Function(Timestamp value)? birthdayOnChanged,
    required TResult orElse(),
  }) {
    if (initialized != null) {
      return initialized(profile);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_SaveChangesPressed value) saveChangesPressed,
    required TResult Function(_FullNameOnChanged value) fullNameOnChanged,
    required TResult Function(_AddressOnChanged value) addressOnChanged,
    required TResult Function(_PositionOnChanged value) positionOnChanged,
    required TResult Function(_CompanyOnChanged value) companyOnChanged,
    required TResult Function(_LocationOnChanged value) locationOnChanged,
    required TResult Function(_PhoneNumberOnChanged value) phoneNumberOnChanged,
    required TResult Function(_AboutOnChanged value) aboutOnChanged,
    required TResult Function(_BirthdayOnChanged value) birthdayOnChanged,
  }) {
    return initialized(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialized value)? initialized,
    TResult? Function(_SaveChangesPressed value)? saveChangesPressed,
    TResult? Function(_FullNameOnChanged value)? fullNameOnChanged,
    TResult? Function(_AddressOnChanged value)? addressOnChanged,
    TResult? Function(_PositionOnChanged value)? positionOnChanged,
    TResult? Function(_CompanyOnChanged value)? companyOnChanged,
    TResult? Function(_LocationOnChanged value)? locationOnChanged,
    TResult? Function(_PhoneNumberOnChanged value)? phoneNumberOnChanged,
    TResult? Function(_AboutOnChanged value)? aboutOnChanged,
    TResult? Function(_BirthdayOnChanged value)? birthdayOnChanged,
  }) {
    return initialized?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_SaveChangesPressed value)? saveChangesPressed,
    TResult Function(_FullNameOnChanged value)? fullNameOnChanged,
    TResult Function(_AddressOnChanged value)? addressOnChanged,
    TResult Function(_PositionOnChanged value)? positionOnChanged,
    TResult Function(_CompanyOnChanged value)? companyOnChanged,
    TResult Function(_LocationOnChanged value)? locationOnChanged,
    TResult Function(_PhoneNumberOnChanged value)? phoneNumberOnChanged,
    TResult Function(_AboutOnChanged value)? aboutOnChanged,
    TResult Function(_BirthdayOnChanged value)? birthdayOnChanged,
    required TResult orElse(),
  }) {
    if (initialized != null) {
      return initialized(this);
    }
    return orElse();
  }
}

abstract class _Initialized implements ProfileFormEvent {
  const factory _Initialized(final Profile profile) = _$_Initialized;

  Profile get profile;
  @JsonKey(ignore: true)
  _$$_InitializedCopyWith<_$_Initialized> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SaveChangesPressedCopyWith<$Res> {
  factory _$$_SaveChangesPressedCopyWith(_$_SaveChangesPressed value,
          $Res Function(_$_SaveChangesPressed) then) =
      __$$_SaveChangesPressedCopyWithImpl<$Res>;
  @useResult
  $Res call({Profile profile});
}

/// @nodoc
class __$$_SaveChangesPressedCopyWithImpl<$Res>
    extends _$ProfileFormEventCopyWithImpl<$Res, _$_SaveChangesPressed>
    implements _$$_SaveChangesPressedCopyWith<$Res> {
  __$$_SaveChangesPressedCopyWithImpl(
      _$_SaveChangesPressed _value, $Res Function(_$_SaveChangesPressed) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? profile = null,
  }) {
    return _then(_$_SaveChangesPressed(
      null == profile
          ? _value.profile
          : profile // ignore: cast_nullable_to_non_nullable
              as Profile,
    ));
  }
}

/// @nodoc

class _$_SaveChangesPressed implements _SaveChangesPressed {
  const _$_SaveChangesPressed(this.profile);

  @override
  final Profile profile;

  @override
  String toString() {
    return 'ProfileFormEvent.saveChangesPressed(profile: $profile)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SaveChangesPressed &&
            (identical(other.profile, profile) || other.profile == profile));
  }

  @override
  int get hashCode => Object.hash(runtimeType, profile);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SaveChangesPressedCopyWith<_$_SaveChangesPressed> get copyWith =>
      __$$_SaveChangesPressedCopyWithImpl<_$_SaveChangesPressed>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Profile profile) initialized,
    required TResult Function(Profile profile) saveChangesPressed,
    required TResult Function(String value) fullNameOnChanged,
    required TResult Function(String value) addressOnChanged,
    required TResult Function(String value) positionOnChanged,
    required TResult Function(String value) companyOnChanged,
    required TResult Function(String value) locationOnChanged,
    required TResult Function(String value) phoneNumberOnChanged,
    required TResult Function(String value) aboutOnChanged,
    required TResult Function(Timestamp value) birthdayOnChanged,
  }) {
    return saveChangesPressed(profile);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Profile profile)? initialized,
    TResult? Function(Profile profile)? saveChangesPressed,
    TResult? Function(String value)? fullNameOnChanged,
    TResult? Function(String value)? addressOnChanged,
    TResult? Function(String value)? positionOnChanged,
    TResult? Function(String value)? companyOnChanged,
    TResult? Function(String value)? locationOnChanged,
    TResult? Function(String value)? phoneNumberOnChanged,
    TResult? Function(String value)? aboutOnChanged,
    TResult? Function(Timestamp value)? birthdayOnChanged,
  }) {
    return saveChangesPressed?.call(profile);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Profile profile)? initialized,
    TResult Function(Profile profile)? saveChangesPressed,
    TResult Function(String value)? fullNameOnChanged,
    TResult Function(String value)? addressOnChanged,
    TResult Function(String value)? positionOnChanged,
    TResult Function(String value)? companyOnChanged,
    TResult Function(String value)? locationOnChanged,
    TResult Function(String value)? phoneNumberOnChanged,
    TResult Function(String value)? aboutOnChanged,
    TResult Function(Timestamp value)? birthdayOnChanged,
    required TResult orElse(),
  }) {
    if (saveChangesPressed != null) {
      return saveChangesPressed(profile);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_SaveChangesPressed value) saveChangesPressed,
    required TResult Function(_FullNameOnChanged value) fullNameOnChanged,
    required TResult Function(_AddressOnChanged value) addressOnChanged,
    required TResult Function(_PositionOnChanged value) positionOnChanged,
    required TResult Function(_CompanyOnChanged value) companyOnChanged,
    required TResult Function(_LocationOnChanged value) locationOnChanged,
    required TResult Function(_PhoneNumberOnChanged value) phoneNumberOnChanged,
    required TResult Function(_AboutOnChanged value) aboutOnChanged,
    required TResult Function(_BirthdayOnChanged value) birthdayOnChanged,
  }) {
    return saveChangesPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialized value)? initialized,
    TResult? Function(_SaveChangesPressed value)? saveChangesPressed,
    TResult? Function(_FullNameOnChanged value)? fullNameOnChanged,
    TResult? Function(_AddressOnChanged value)? addressOnChanged,
    TResult? Function(_PositionOnChanged value)? positionOnChanged,
    TResult? Function(_CompanyOnChanged value)? companyOnChanged,
    TResult? Function(_LocationOnChanged value)? locationOnChanged,
    TResult? Function(_PhoneNumberOnChanged value)? phoneNumberOnChanged,
    TResult? Function(_AboutOnChanged value)? aboutOnChanged,
    TResult? Function(_BirthdayOnChanged value)? birthdayOnChanged,
  }) {
    return saveChangesPressed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_SaveChangesPressed value)? saveChangesPressed,
    TResult Function(_FullNameOnChanged value)? fullNameOnChanged,
    TResult Function(_AddressOnChanged value)? addressOnChanged,
    TResult Function(_PositionOnChanged value)? positionOnChanged,
    TResult Function(_CompanyOnChanged value)? companyOnChanged,
    TResult Function(_LocationOnChanged value)? locationOnChanged,
    TResult Function(_PhoneNumberOnChanged value)? phoneNumberOnChanged,
    TResult Function(_AboutOnChanged value)? aboutOnChanged,
    TResult Function(_BirthdayOnChanged value)? birthdayOnChanged,
    required TResult orElse(),
  }) {
    if (saveChangesPressed != null) {
      return saveChangesPressed(this);
    }
    return orElse();
  }
}

abstract class _SaveChangesPressed implements ProfileFormEvent {
  const factory _SaveChangesPressed(final Profile profile) =
      _$_SaveChangesPressed;

  Profile get profile;
  @JsonKey(ignore: true)
  _$$_SaveChangesPressedCopyWith<_$_SaveChangesPressed> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_FullNameOnChangedCopyWith<$Res> {
  factory _$$_FullNameOnChangedCopyWith(_$_FullNameOnChanged value,
          $Res Function(_$_FullNameOnChanged) then) =
      __$$_FullNameOnChangedCopyWithImpl<$Res>;
  @useResult
  $Res call({String value});
}

/// @nodoc
class __$$_FullNameOnChangedCopyWithImpl<$Res>
    extends _$ProfileFormEventCopyWithImpl<$Res, _$_FullNameOnChanged>
    implements _$$_FullNameOnChangedCopyWith<$Res> {
  __$$_FullNameOnChangedCopyWithImpl(
      _$_FullNameOnChanged _value, $Res Function(_$_FullNameOnChanged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_$_FullNameOnChanged(
      null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_FullNameOnChanged implements _FullNameOnChanged {
  const _$_FullNameOnChanged(this.value);

  @override
  final String value;

  @override
  String toString() {
    return 'ProfileFormEvent.fullNameOnChanged(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FullNameOnChanged &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FullNameOnChangedCopyWith<_$_FullNameOnChanged> get copyWith =>
      __$$_FullNameOnChangedCopyWithImpl<_$_FullNameOnChanged>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Profile profile) initialized,
    required TResult Function(Profile profile) saveChangesPressed,
    required TResult Function(String value) fullNameOnChanged,
    required TResult Function(String value) addressOnChanged,
    required TResult Function(String value) positionOnChanged,
    required TResult Function(String value) companyOnChanged,
    required TResult Function(String value) locationOnChanged,
    required TResult Function(String value) phoneNumberOnChanged,
    required TResult Function(String value) aboutOnChanged,
    required TResult Function(Timestamp value) birthdayOnChanged,
  }) {
    return fullNameOnChanged(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Profile profile)? initialized,
    TResult? Function(Profile profile)? saveChangesPressed,
    TResult? Function(String value)? fullNameOnChanged,
    TResult? Function(String value)? addressOnChanged,
    TResult? Function(String value)? positionOnChanged,
    TResult? Function(String value)? companyOnChanged,
    TResult? Function(String value)? locationOnChanged,
    TResult? Function(String value)? phoneNumberOnChanged,
    TResult? Function(String value)? aboutOnChanged,
    TResult? Function(Timestamp value)? birthdayOnChanged,
  }) {
    return fullNameOnChanged?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Profile profile)? initialized,
    TResult Function(Profile profile)? saveChangesPressed,
    TResult Function(String value)? fullNameOnChanged,
    TResult Function(String value)? addressOnChanged,
    TResult Function(String value)? positionOnChanged,
    TResult Function(String value)? companyOnChanged,
    TResult Function(String value)? locationOnChanged,
    TResult Function(String value)? phoneNumberOnChanged,
    TResult Function(String value)? aboutOnChanged,
    TResult Function(Timestamp value)? birthdayOnChanged,
    required TResult orElse(),
  }) {
    if (fullNameOnChanged != null) {
      return fullNameOnChanged(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_SaveChangesPressed value) saveChangesPressed,
    required TResult Function(_FullNameOnChanged value) fullNameOnChanged,
    required TResult Function(_AddressOnChanged value) addressOnChanged,
    required TResult Function(_PositionOnChanged value) positionOnChanged,
    required TResult Function(_CompanyOnChanged value) companyOnChanged,
    required TResult Function(_LocationOnChanged value) locationOnChanged,
    required TResult Function(_PhoneNumberOnChanged value) phoneNumberOnChanged,
    required TResult Function(_AboutOnChanged value) aboutOnChanged,
    required TResult Function(_BirthdayOnChanged value) birthdayOnChanged,
  }) {
    return fullNameOnChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialized value)? initialized,
    TResult? Function(_SaveChangesPressed value)? saveChangesPressed,
    TResult? Function(_FullNameOnChanged value)? fullNameOnChanged,
    TResult? Function(_AddressOnChanged value)? addressOnChanged,
    TResult? Function(_PositionOnChanged value)? positionOnChanged,
    TResult? Function(_CompanyOnChanged value)? companyOnChanged,
    TResult? Function(_LocationOnChanged value)? locationOnChanged,
    TResult? Function(_PhoneNumberOnChanged value)? phoneNumberOnChanged,
    TResult? Function(_AboutOnChanged value)? aboutOnChanged,
    TResult? Function(_BirthdayOnChanged value)? birthdayOnChanged,
  }) {
    return fullNameOnChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_SaveChangesPressed value)? saveChangesPressed,
    TResult Function(_FullNameOnChanged value)? fullNameOnChanged,
    TResult Function(_AddressOnChanged value)? addressOnChanged,
    TResult Function(_PositionOnChanged value)? positionOnChanged,
    TResult Function(_CompanyOnChanged value)? companyOnChanged,
    TResult Function(_LocationOnChanged value)? locationOnChanged,
    TResult Function(_PhoneNumberOnChanged value)? phoneNumberOnChanged,
    TResult Function(_AboutOnChanged value)? aboutOnChanged,
    TResult Function(_BirthdayOnChanged value)? birthdayOnChanged,
    required TResult orElse(),
  }) {
    if (fullNameOnChanged != null) {
      return fullNameOnChanged(this);
    }
    return orElse();
  }
}

abstract class _FullNameOnChanged implements ProfileFormEvent {
  const factory _FullNameOnChanged(final String value) = _$_FullNameOnChanged;

  String get value;
  @JsonKey(ignore: true)
  _$$_FullNameOnChangedCopyWith<_$_FullNameOnChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_AddressOnChangedCopyWith<$Res> {
  factory _$$_AddressOnChangedCopyWith(
          _$_AddressOnChanged value, $Res Function(_$_AddressOnChanged) then) =
      __$$_AddressOnChangedCopyWithImpl<$Res>;
  @useResult
  $Res call({String value});
}

/// @nodoc
class __$$_AddressOnChangedCopyWithImpl<$Res>
    extends _$ProfileFormEventCopyWithImpl<$Res, _$_AddressOnChanged>
    implements _$$_AddressOnChangedCopyWith<$Res> {
  __$$_AddressOnChangedCopyWithImpl(
      _$_AddressOnChanged _value, $Res Function(_$_AddressOnChanged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_$_AddressOnChanged(
      null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_AddressOnChanged implements _AddressOnChanged {
  const _$_AddressOnChanged(this.value);

  @override
  final String value;

  @override
  String toString() {
    return 'ProfileFormEvent.addressOnChanged(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AddressOnChanged &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AddressOnChangedCopyWith<_$_AddressOnChanged> get copyWith =>
      __$$_AddressOnChangedCopyWithImpl<_$_AddressOnChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Profile profile) initialized,
    required TResult Function(Profile profile) saveChangesPressed,
    required TResult Function(String value) fullNameOnChanged,
    required TResult Function(String value) addressOnChanged,
    required TResult Function(String value) positionOnChanged,
    required TResult Function(String value) companyOnChanged,
    required TResult Function(String value) locationOnChanged,
    required TResult Function(String value) phoneNumberOnChanged,
    required TResult Function(String value) aboutOnChanged,
    required TResult Function(Timestamp value) birthdayOnChanged,
  }) {
    return addressOnChanged(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Profile profile)? initialized,
    TResult? Function(Profile profile)? saveChangesPressed,
    TResult? Function(String value)? fullNameOnChanged,
    TResult? Function(String value)? addressOnChanged,
    TResult? Function(String value)? positionOnChanged,
    TResult? Function(String value)? companyOnChanged,
    TResult? Function(String value)? locationOnChanged,
    TResult? Function(String value)? phoneNumberOnChanged,
    TResult? Function(String value)? aboutOnChanged,
    TResult? Function(Timestamp value)? birthdayOnChanged,
  }) {
    return addressOnChanged?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Profile profile)? initialized,
    TResult Function(Profile profile)? saveChangesPressed,
    TResult Function(String value)? fullNameOnChanged,
    TResult Function(String value)? addressOnChanged,
    TResult Function(String value)? positionOnChanged,
    TResult Function(String value)? companyOnChanged,
    TResult Function(String value)? locationOnChanged,
    TResult Function(String value)? phoneNumberOnChanged,
    TResult Function(String value)? aboutOnChanged,
    TResult Function(Timestamp value)? birthdayOnChanged,
    required TResult orElse(),
  }) {
    if (addressOnChanged != null) {
      return addressOnChanged(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_SaveChangesPressed value) saveChangesPressed,
    required TResult Function(_FullNameOnChanged value) fullNameOnChanged,
    required TResult Function(_AddressOnChanged value) addressOnChanged,
    required TResult Function(_PositionOnChanged value) positionOnChanged,
    required TResult Function(_CompanyOnChanged value) companyOnChanged,
    required TResult Function(_LocationOnChanged value) locationOnChanged,
    required TResult Function(_PhoneNumberOnChanged value) phoneNumberOnChanged,
    required TResult Function(_AboutOnChanged value) aboutOnChanged,
    required TResult Function(_BirthdayOnChanged value) birthdayOnChanged,
  }) {
    return addressOnChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialized value)? initialized,
    TResult? Function(_SaveChangesPressed value)? saveChangesPressed,
    TResult? Function(_FullNameOnChanged value)? fullNameOnChanged,
    TResult? Function(_AddressOnChanged value)? addressOnChanged,
    TResult? Function(_PositionOnChanged value)? positionOnChanged,
    TResult? Function(_CompanyOnChanged value)? companyOnChanged,
    TResult? Function(_LocationOnChanged value)? locationOnChanged,
    TResult? Function(_PhoneNumberOnChanged value)? phoneNumberOnChanged,
    TResult? Function(_AboutOnChanged value)? aboutOnChanged,
    TResult? Function(_BirthdayOnChanged value)? birthdayOnChanged,
  }) {
    return addressOnChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_SaveChangesPressed value)? saveChangesPressed,
    TResult Function(_FullNameOnChanged value)? fullNameOnChanged,
    TResult Function(_AddressOnChanged value)? addressOnChanged,
    TResult Function(_PositionOnChanged value)? positionOnChanged,
    TResult Function(_CompanyOnChanged value)? companyOnChanged,
    TResult Function(_LocationOnChanged value)? locationOnChanged,
    TResult Function(_PhoneNumberOnChanged value)? phoneNumberOnChanged,
    TResult Function(_AboutOnChanged value)? aboutOnChanged,
    TResult Function(_BirthdayOnChanged value)? birthdayOnChanged,
    required TResult orElse(),
  }) {
    if (addressOnChanged != null) {
      return addressOnChanged(this);
    }
    return orElse();
  }
}

abstract class _AddressOnChanged implements ProfileFormEvent {
  const factory _AddressOnChanged(final String value) = _$_AddressOnChanged;

  String get value;
  @JsonKey(ignore: true)
  _$$_AddressOnChangedCopyWith<_$_AddressOnChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_PositionOnChangedCopyWith<$Res> {
  factory _$$_PositionOnChangedCopyWith(_$_PositionOnChanged value,
          $Res Function(_$_PositionOnChanged) then) =
      __$$_PositionOnChangedCopyWithImpl<$Res>;
  @useResult
  $Res call({String value});
}

/// @nodoc
class __$$_PositionOnChangedCopyWithImpl<$Res>
    extends _$ProfileFormEventCopyWithImpl<$Res, _$_PositionOnChanged>
    implements _$$_PositionOnChangedCopyWith<$Res> {
  __$$_PositionOnChangedCopyWithImpl(
      _$_PositionOnChanged _value, $Res Function(_$_PositionOnChanged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_$_PositionOnChanged(
      null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_PositionOnChanged implements _PositionOnChanged {
  const _$_PositionOnChanged(this.value);

  @override
  final String value;

  @override
  String toString() {
    return 'ProfileFormEvent.positionOnChanged(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PositionOnChanged &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PositionOnChangedCopyWith<_$_PositionOnChanged> get copyWith =>
      __$$_PositionOnChangedCopyWithImpl<_$_PositionOnChanged>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Profile profile) initialized,
    required TResult Function(Profile profile) saveChangesPressed,
    required TResult Function(String value) fullNameOnChanged,
    required TResult Function(String value) addressOnChanged,
    required TResult Function(String value) positionOnChanged,
    required TResult Function(String value) companyOnChanged,
    required TResult Function(String value) locationOnChanged,
    required TResult Function(String value) phoneNumberOnChanged,
    required TResult Function(String value) aboutOnChanged,
    required TResult Function(Timestamp value) birthdayOnChanged,
  }) {
    return positionOnChanged(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Profile profile)? initialized,
    TResult? Function(Profile profile)? saveChangesPressed,
    TResult? Function(String value)? fullNameOnChanged,
    TResult? Function(String value)? addressOnChanged,
    TResult? Function(String value)? positionOnChanged,
    TResult? Function(String value)? companyOnChanged,
    TResult? Function(String value)? locationOnChanged,
    TResult? Function(String value)? phoneNumberOnChanged,
    TResult? Function(String value)? aboutOnChanged,
    TResult? Function(Timestamp value)? birthdayOnChanged,
  }) {
    return positionOnChanged?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Profile profile)? initialized,
    TResult Function(Profile profile)? saveChangesPressed,
    TResult Function(String value)? fullNameOnChanged,
    TResult Function(String value)? addressOnChanged,
    TResult Function(String value)? positionOnChanged,
    TResult Function(String value)? companyOnChanged,
    TResult Function(String value)? locationOnChanged,
    TResult Function(String value)? phoneNumberOnChanged,
    TResult Function(String value)? aboutOnChanged,
    TResult Function(Timestamp value)? birthdayOnChanged,
    required TResult orElse(),
  }) {
    if (positionOnChanged != null) {
      return positionOnChanged(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_SaveChangesPressed value) saveChangesPressed,
    required TResult Function(_FullNameOnChanged value) fullNameOnChanged,
    required TResult Function(_AddressOnChanged value) addressOnChanged,
    required TResult Function(_PositionOnChanged value) positionOnChanged,
    required TResult Function(_CompanyOnChanged value) companyOnChanged,
    required TResult Function(_LocationOnChanged value) locationOnChanged,
    required TResult Function(_PhoneNumberOnChanged value) phoneNumberOnChanged,
    required TResult Function(_AboutOnChanged value) aboutOnChanged,
    required TResult Function(_BirthdayOnChanged value) birthdayOnChanged,
  }) {
    return positionOnChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialized value)? initialized,
    TResult? Function(_SaveChangesPressed value)? saveChangesPressed,
    TResult? Function(_FullNameOnChanged value)? fullNameOnChanged,
    TResult? Function(_AddressOnChanged value)? addressOnChanged,
    TResult? Function(_PositionOnChanged value)? positionOnChanged,
    TResult? Function(_CompanyOnChanged value)? companyOnChanged,
    TResult? Function(_LocationOnChanged value)? locationOnChanged,
    TResult? Function(_PhoneNumberOnChanged value)? phoneNumberOnChanged,
    TResult? Function(_AboutOnChanged value)? aboutOnChanged,
    TResult? Function(_BirthdayOnChanged value)? birthdayOnChanged,
  }) {
    return positionOnChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_SaveChangesPressed value)? saveChangesPressed,
    TResult Function(_FullNameOnChanged value)? fullNameOnChanged,
    TResult Function(_AddressOnChanged value)? addressOnChanged,
    TResult Function(_PositionOnChanged value)? positionOnChanged,
    TResult Function(_CompanyOnChanged value)? companyOnChanged,
    TResult Function(_LocationOnChanged value)? locationOnChanged,
    TResult Function(_PhoneNumberOnChanged value)? phoneNumberOnChanged,
    TResult Function(_AboutOnChanged value)? aboutOnChanged,
    TResult Function(_BirthdayOnChanged value)? birthdayOnChanged,
    required TResult orElse(),
  }) {
    if (positionOnChanged != null) {
      return positionOnChanged(this);
    }
    return orElse();
  }
}

abstract class _PositionOnChanged implements ProfileFormEvent {
  const factory _PositionOnChanged(final String value) = _$_PositionOnChanged;

  String get value;
  @JsonKey(ignore: true)
  _$$_PositionOnChangedCopyWith<_$_PositionOnChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_CompanyOnChangedCopyWith<$Res> {
  factory _$$_CompanyOnChangedCopyWith(
          _$_CompanyOnChanged value, $Res Function(_$_CompanyOnChanged) then) =
      __$$_CompanyOnChangedCopyWithImpl<$Res>;
  @useResult
  $Res call({String value});
}

/// @nodoc
class __$$_CompanyOnChangedCopyWithImpl<$Res>
    extends _$ProfileFormEventCopyWithImpl<$Res, _$_CompanyOnChanged>
    implements _$$_CompanyOnChangedCopyWith<$Res> {
  __$$_CompanyOnChangedCopyWithImpl(
      _$_CompanyOnChanged _value, $Res Function(_$_CompanyOnChanged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_$_CompanyOnChanged(
      null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_CompanyOnChanged implements _CompanyOnChanged {
  const _$_CompanyOnChanged(this.value);

  @override
  final String value;

  @override
  String toString() {
    return 'ProfileFormEvent.companyOnChanged(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CompanyOnChanged &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CompanyOnChangedCopyWith<_$_CompanyOnChanged> get copyWith =>
      __$$_CompanyOnChangedCopyWithImpl<_$_CompanyOnChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Profile profile) initialized,
    required TResult Function(Profile profile) saveChangesPressed,
    required TResult Function(String value) fullNameOnChanged,
    required TResult Function(String value) addressOnChanged,
    required TResult Function(String value) positionOnChanged,
    required TResult Function(String value) companyOnChanged,
    required TResult Function(String value) locationOnChanged,
    required TResult Function(String value) phoneNumberOnChanged,
    required TResult Function(String value) aboutOnChanged,
    required TResult Function(Timestamp value) birthdayOnChanged,
  }) {
    return companyOnChanged(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Profile profile)? initialized,
    TResult? Function(Profile profile)? saveChangesPressed,
    TResult? Function(String value)? fullNameOnChanged,
    TResult? Function(String value)? addressOnChanged,
    TResult? Function(String value)? positionOnChanged,
    TResult? Function(String value)? companyOnChanged,
    TResult? Function(String value)? locationOnChanged,
    TResult? Function(String value)? phoneNumberOnChanged,
    TResult? Function(String value)? aboutOnChanged,
    TResult? Function(Timestamp value)? birthdayOnChanged,
  }) {
    return companyOnChanged?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Profile profile)? initialized,
    TResult Function(Profile profile)? saveChangesPressed,
    TResult Function(String value)? fullNameOnChanged,
    TResult Function(String value)? addressOnChanged,
    TResult Function(String value)? positionOnChanged,
    TResult Function(String value)? companyOnChanged,
    TResult Function(String value)? locationOnChanged,
    TResult Function(String value)? phoneNumberOnChanged,
    TResult Function(String value)? aboutOnChanged,
    TResult Function(Timestamp value)? birthdayOnChanged,
    required TResult orElse(),
  }) {
    if (companyOnChanged != null) {
      return companyOnChanged(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_SaveChangesPressed value) saveChangesPressed,
    required TResult Function(_FullNameOnChanged value) fullNameOnChanged,
    required TResult Function(_AddressOnChanged value) addressOnChanged,
    required TResult Function(_PositionOnChanged value) positionOnChanged,
    required TResult Function(_CompanyOnChanged value) companyOnChanged,
    required TResult Function(_LocationOnChanged value) locationOnChanged,
    required TResult Function(_PhoneNumberOnChanged value) phoneNumberOnChanged,
    required TResult Function(_AboutOnChanged value) aboutOnChanged,
    required TResult Function(_BirthdayOnChanged value) birthdayOnChanged,
  }) {
    return companyOnChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialized value)? initialized,
    TResult? Function(_SaveChangesPressed value)? saveChangesPressed,
    TResult? Function(_FullNameOnChanged value)? fullNameOnChanged,
    TResult? Function(_AddressOnChanged value)? addressOnChanged,
    TResult? Function(_PositionOnChanged value)? positionOnChanged,
    TResult? Function(_CompanyOnChanged value)? companyOnChanged,
    TResult? Function(_LocationOnChanged value)? locationOnChanged,
    TResult? Function(_PhoneNumberOnChanged value)? phoneNumberOnChanged,
    TResult? Function(_AboutOnChanged value)? aboutOnChanged,
    TResult? Function(_BirthdayOnChanged value)? birthdayOnChanged,
  }) {
    return companyOnChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_SaveChangesPressed value)? saveChangesPressed,
    TResult Function(_FullNameOnChanged value)? fullNameOnChanged,
    TResult Function(_AddressOnChanged value)? addressOnChanged,
    TResult Function(_PositionOnChanged value)? positionOnChanged,
    TResult Function(_CompanyOnChanged value)? companyOnChanged,
    TResult Function(_LocationOnChanged value)? locationOnChanged,
    TResult Function(_PhoneNumberOnChanged value)? phoneNumberOnChanged,
    TResult Function(_AboutOnChanged value)? aboutOnChanged,
    TResult Function(_BirthdayOnChanged value)? birthdayOnChanged,
    required TResult orElse(),
  }) {
    if (companyOnChanged != null) {
      return companyOnChanged(this);
    }
    return orElse();
  }
}

abstract class _CompanyOnChanged implements ProfileFormEvent {
  const factory _CompanyOnChanged(final String value) = _$_CompanyOnChanged;

  String get value;
  @JsonKey(ignore: true)
  _$$_CompanyOnChangedCopyWith<_$_CompanyOnChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_LocationOnChangedCopyWith<$Res> {
  factory _$$_LocationOnChangedCopyWith(_$_LocationOnChanged value,
          $Res Function(_$_LocationOnChanged) then) =
      __$$_LocationOnChangedCopyWithImpl<$Res>;
  @useResult
  $Res call({String value});
}

/// @nodoc
class __$$_LocationOnChangedCopyWithImpl<$Res>
    extends _$ProfileFormEventCopyWithImpl<$Res, _$_LocationOnChanged>
    implements _$$_LocationOnChangedCopyWith<$Res> {
  __$$_LocationOnChangedCopyWithImpl(
      _$_LocationOnChanged _value, $Res Function(_$_LocationOnChanged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_$_LocationOnChanged(
      null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_LocationOnChanged implements _LocationOnChanged {
  const _$_LocationOnChanged(this.value);

  @override
  final String value;

  @override
  String toString() {
    return 'ProfileFormEvent.locationOnChanged(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LocationOnChanged &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LocationOnChangedCopyWith<_$_LocationOnChanged> get copyWith =>
      __$$_LocationOnChangedCopyWithImpl<_$_LocationOnChanged>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Profile profile) initialized,
    required TResult Function(Profile profile) saveChangesPressed,
    required TResult Function(String value) fullNameOnChanged,
    required TResult Function(String value) addressOnChanged,
    required TResult Function(String value) positionOnChanged,
    required TResult Function(String value) companyOnChanged,
    required TResult Function(String value) locationOnChanged,
    required TResult Function(String value) phoneNumberOnChanged,
    required TResult Function(String value) aboutOnChanged,
    required TResult Function(Timestamp value) birthdayOnChanged,
  }) {
    return locationOnChanged(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Profile profile)? initialized,
    TResult? Function(Profile profile)? saveChangesPressed,
    TResult? Function(String value)? fullNameOnChanged,
    TResult? Function(String value)? addressOnChanged,
    TResult? Function(String value)? positionOnChanged,
    TResult? Function(String value)? companyOnChanged,
    TResult? Function(String value)? locationOnChanged,
    TResult? Function(String value)? phoneNumberOnChanged,
    TResult? Function(String value)? aboutOnChanged,
    TResult? Function(Timestamp value)? birthdayOnChanged,
  }) {
    return locationOnChanged?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Profile profile)? initialized,
    TResult Function(Profile profile)? saveChangesPressed,
    TResult Function(String value)? fullNameOnChanged,
    TResult Function(String value)? addressOnChanged,
    TResult Function(String value)? positionOnChanged,
    TResult Function(String value)? companyOnChanged,
    TResult Function(String value)? locationOnChanged,
    TResult Function(String value)? phoneNumberOnChanged,
    TResult Function(String value)? aboutOnChanged,
    TResult Function(Timestamp value)? birthdayOnChanged,
    required TResult orElse(),
  }) {
    if (locationOnChanged != null) {
      return locationOnChanged(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_SaveChangesPressed value) saveChangesPressed,
    required TResult Function(_FullNameOnChanged value) fullNameOnChanged,
    required TResult Function(_AddressOnChanged value) addressOnChanged,
    required TResult Function(_PositionOnChanged value) positionOnChanged,
    required TResult Function(_CompanyOnChanged value) companyOnChanged,
    required TResult Function(_LocationOnChanged value) locationOnChanged,
    required TResult Function(_PhoneNumberOnChanged value) phoneNumberOnChanged,
    required TResult Function(_AboutOnChanged value) aboutOnChanged,
    required TResult Function(_BirthdayOnChanged value) birthdayOnChanged,
  }) {
    return locationOnChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialized value)? initialized,
    TResult? Function(_SaveChangesPressed value)? saveChangesPressed,
    TResult? Function(_FullNameOnChanged value)? fullNameOnChanged,
    TResult? Function(_AddressOnChanged value)? addressOnChanged,
    TResult? Function(_PositionOnChanged value)? positionOnChanged,
    TResult? Function(_CompanyOnChanged value)? companyOnChanged,
    TResult? Function(_LocationOnChanged value)? locationOnChanged,
    TResult? Function(_PhoneNumberOnChanged value)? phoneNumberOnChanged,
    TResult? Function(_AboutOnChanged value)? aboutOnChanged,
    TResult? Function(_BirthdayOnChanged value)? birthdayOnChanged,
  }) {
    return locationOnChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_SaveChangesPressed value)? saveChangesPressed,
    TResult Function(_FullNameOnChanged value)? fullNameOnChanged,
    TResult Function(_AddressOnChanged value)? addressOnChanged,
    TResult Function(_PositionOnChanged value)? positionOnChanged,
    TResult Function(_CompanyOnChanged value)? companyOnChanged,
    TResult Function(_LocationOnChanged value)? locationOnChanged,
    TResult Function(_PhoneNumberOnChanged value)? phoneNumberOnChanged,
    TResult Function(_AboutOnChanged value)? aboutOnChanged,
    TResult Function(_BirthdayOnChanged value)? birthdayOnChanged,
    required TResult orElse(),
  }) {
    if (locationOnChanged != null) {
      return locationOnChanged(this);
    }
    return orElse();
  }
}

abstract class _LocationOnChanged implements ProfileFormEvent {
  const factory _LocationOnChanged(final String value) = _$_LocationOnChanged;

  String get value;
  @JsonKey(ignore: true)
  _$$_LocationOnChangedCopyWith<_$_LocationOnChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_PhoneNumberOnChangedCopyWith<$Res> {
  factory _$$_PhoneNumberOnChangedCopyWith(_$_PhoneNumberOnChanged value,
          $Res Function(_$_PhoneNumberOnChanged) then) =
      __$$_PhoneNumberOnChangedCopyWithImpl<$Res>;
  @useResult
  $Res call({String value});
}

/// @nodoc
class __$$_PhoneNumberOnChangedCopyWithImpl<$Res>
    extends _$ProfileFormEventCopyWithImpl<$Res, _$_PhoneNumberOnChanged>
    implements _$$_PhoneNumberOnChangedCopyWith<$Res> {
  __$$_PhoneNumberOnChangedCopyWithImpl(_$_PhoneNumberOnChanged _value,
      $Res Function(_$_PhoneNumberOnChanged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_$_PhoneNumberOnChanged(
      null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_PhoneNumberOnChanged implements _PhoneNumberOnChanged {
  const _$_PhoneNumberOnChanged(this.value);

  @override
  final String value;

  @override
  String toString() {
    return 'ProfileFormEvent.phoneNumberOnChanged(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PhoneNumberOnChanged &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PhoneNumberOnChangedCopyWith<_$_PhoneNumberOnChanged> get copyWith =>
      __$$_PhoneNumberOnChangedCopyWithImpl<_$_PhoneNumberOnChanged>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Profile profile) initialized,
    required TResult Function(Profile profile) saveChangesPressed,
    required TResult Function(String value) fullNameOnChanged,
    required TResult Function(String value) addressOnChanged,
    required TResult Function(String value) positionOnChanged,
    required TResult Function(String value) companyOnChanged,
    required TResult Function(String value) locationOnChanged,
    required TResult Function(String value) phoneNumberOnChanged,
    required TResult Function(String value) aboutOnChanged,
    required TResult Function(Timestamp value) birthdayOnChanged,
  }) {
    return phoneNumberOnChanged(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Profile profile)? initialized,
    TResult? Function(Profile profile)? saveChangesPressed,
    TResult? Function(String value)? fullNameOnChanged,
    TResult? Function(String value)? addressOnChanged,
    TResult? Function(String value)? positionOnChanged,
    TResult? Function(String value)? companyOnChanged,
    TResult? Function(String value)? locationOnChanged,
    TResult? Function(String value)? phoneNumberOnChanged,
    TResult? Function(String value)? aboutOnChanged,
    TResult? Function(Timestamp value)? birthdayOnChanged,
  }) {
    return phoneNumberOnChanged?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Profile profile)? initialized,
    TResult Function(Profile profile)? saveChangesPressed,
    TResult Function(String value)? fullNameOnChanged,
    TResult Function(String value)? addressOnChanged,
    TResult Function(String value)? positionOnChanged,
    TResult Function(String value)? companyOnChanged,
    TResult Function(String value)? locationOnChanged,
    TResult Function(String value)? phoneNumberOnChanged,
    TResult Function(String value)? aboutOnChanged,
    TResult Function(Timestamp value)? birthdayOnChanged,
    required TResult orElse(),
  }) {
    if (phoneNumberOnChanged != null) {
      return phoneNumberOnChanged(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_SaveChangesPressed value) saveChangesPressed,
    required TResult Function(_FullNameOnChanged value) fullNameOnChanged,
    required TResult Function(_AddressOnChanged value) addressOnChanged,
    required TResult Function(_PositionOnChanged value) positionOnChanged,
    required TResult Function(_CompanyOnChanged value) companyOnChanged,
    required TResult Function(_LocationOnChanged value) locationOnChanged,
    required TResult Function(_PhoneNumberOnChanged value) phoneNumberOnChanged,
    required TResult Function(_AboutOnChanged value) aboutOnChanged,
    required TResult Function(_BirthdayOnChanged value) birthdayOnChanged,
  }) {
    return phoneNumberOnChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialized value)? initialized,
    TResult? Function(_SaveChangesPressed value)? saveChangesPressed,
    TResult? Function(_FullNameOnChanged value)? fullNameOnChanged,
    TResult? Function(_AddressOnChanged value)? addressOnChanged,
    TResult? Function(_PositionOnChanged value)? positionOnChanged,
    TResult? Function(_CompanyOnChanged value)? companyOnChanged,
    TResult? Function(_LocationOnChanged value)? locationOnChanged,
    TResult? Function(_PhoneNumberOnChanged value)? phoneNumberOnChanged,
    TResult? Function(_AboutOnChanged value)? aboutOnChanged,
    TResult? Function(_BirthdayOnChanged value)? birthdayOnChanged,
  }) {
    return phoneNumberOnChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_SaveChangesPressed value)? saveChangesPressed,
    TResult Function(_FullNameOnChanged value)? fullNameOnChanged,
    TResult Function(_AddressOnChanged value)? addressOnChanged,
    TResult Function(_PositionOnChanged value)? positionOnChanged,
    TResult Function(_CompanyOnChanged value)? companyOnChanged,
    TResult Function(_LocationOnChanged value)? locationOnChanged,
    TResult Function(_PhoneNumberOnChanged value)? phoneNumberOnChanged,
    TResult Function(_AboutOnChanged value)? aboutOnChanged,
    TResult Function(_BirthdayOnChanged value)? birthdayOnChanged,
    required TResult orElse(),
  }) {
    if (phoneNumberOnChanged != null) {
      return phoneNumberOnChanged(this);
    }
    return orElse();
  }
}

abstract class _PhoneNumberOnChanged implements ProfileFormEvent {
  const factory _PhoneNumberOnChanged(final String value) =
      _$_PhoneNumberOnChanged;

  String get value;
  @JsonKey(ignore: true)
  _$$_PhoneNumberOnChangedCopyWith<_$_PhoneNumberOnChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_AboutOnChangedCopyWith<$Res> {
  factory _$$_AboutOnChangedCopyWith(
          _$_AboutOnChanged value, $Res Function(_$_AboutOnChanged) then) =
      __$$_AboutOnChangedCopyWithImpl<$Res>;
  @useResult
  $Res call({String value});
}

/// @nodoc
class __$$_AboutOnChangedCopyWithImpl<$Res>
    extends _$ProfileFormEventCopyWithImpl<$Res, _$_AboutOnChanged>
    implements _$$_AboutOnChangedCopyWith<$Res> {
  __$$_AboutOnChangedCopyWithImpl(
      _$_AboutOnChanged _value, $Res Function(_$_AboutOnChanged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_$_AboutOnChanged(
      null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_AboutOnChanged implements _AboutOnChanged {
  const _$_AboutOnChanged(this.value);

  @override
  final String value;

  @override
  String toString() {
    return 'ProfileFormEvent.aboutOnChanged(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AboutOnChanged &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AboutOnChangedCopyWith<_$_AboutOnChanged> get copyWith =>
      __$$_AboutOnChangedCopyWithImpl<_$_AboutOnChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Profile profile) initialized,
    required TResult Function(Profile profile) saveChangesPressed,
    required TResult Function(String value) fullNameOnChanged,
    required TResult Function(String value) addressOnChanged,
    required TResult Function(String value) positionOnChanged,
    required TResult Function(String value) companyOnChanged,
    required TResult Function(String value) locationOnChanged,
    required TResult Function(String value) phoneNumberOnChanged,
    required TResult Function(String value) aboutOnChanged,
    required TResult Function(Timestamp value) birthdayOnChanged,
  }) {
    return aboutOnChanged(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Profile profile)? initialized,
    TResult? Function(Profile profile)? saveChangesPressed,
    TResult? Function(String value)? fullNameOnChanged,
    TResult? Function(String value)? addressOnChanged,
    TResult? Function(String value)? positionOnChanged,
    TResult? Function(String value)? companyOnChanged,
    TResult? Function(String value)? locationOnChanged,
    TResult? Function(String value)? phoneNumberOnChanged,
    TResult? Function(String value)? aboutOnChanged,
    TResult? Function(Timestamp value)? birthdayOnChanged,
  }) {
    return aboutOnChanged?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Profile profile)? initialized,
    TResult Function(Profile profile)? saveChangesPressed,
    TResult Function(String value)? fullNameOnChanged,
    TResult Function(String value)? addressOnChanged,
    TResult Function(String value)? positionOnChanged,
    TResult Function(String value)? companyOnChanged,
    TResult Function(String value)? locationOnChanged,
    TResult Function(String value)? phoneNumberOnChanged,
    TResult Function(String value)? aboutOnChanged,
    TResult Function(Timestamp value)? birthdayOnChanged,
    required TResult orElse(),
  }) {
    if (aboutOnChanged != null) {
      return aboutOnChanged(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_SaveChangesPressed value) saveChangesPressed,
    required TResult Function(_FullNameOnChanged value) fullNameOnChanged,
    required TResult Function(_AddressOnChanged value) addressOnChanged,
    required TResult Function(_PositionOnChanged value) positionOnChanged,
    required TResult Function(_CompanyOnChanged value) companyOnChanged,
    required TResult Function(_LocationOnChanged value) locationOnChanged,
    required TResult Function(_PhoneNumberOnChanged value) phoneNumberOnChanged,
    required TResult Function(_AboutOnChanged value) aboutOnChanged,
    required TResult Function(_BirthdayOnChanged value) birthdayOnChanged,
  }) {
    return aboutOnChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialized value)? initialized,
    TResult? Function(_SaveChangesPressed value)? saveChangesPressed,
    TResult? Function(_FullNameOnChanged value)? fullNameOnChanged,
    TResult? Function(_AddressOnChanged value)? addressOnChanged,
    TResult? Function(_PositionOnChanged value)? positionOnChanged,
    TResult? Function(_CompanyOnChanged value)? companyOnChanged,
    TResult? Function(_LocationOnChanged value)? locationOnChanged,
    TResult? Function(_PhoneNumberOnChanged value)? phoneNumberOnChanged,
    TResult? Function(_AboutOnChanged value)? aboutOnChanged,
    TResult? Function(_BirthdayOnChanged value)? birthdayOnChanged,
  }) {
    return aboutOnChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_SaveChangesPressed value)? saveChangesPressed,
    TResult Function(_FullNameOnChanged value)? fullNameOnChanged,
    TResult Function(_AddressOnChanged value)? addressOnChanged,
    TResult Function(_PositionOnChanged value)? positionOnChanged,
    TResult Function(_CompanyOnChanged value)? companyOnChanged,
    TResult Function(_LocationOnChanged value)? locationOnChanged,
    TResult Function(_PhoneNumberOnChanged value)? phoneNumberOnChanged,
    TResult Function(_AboutOnChanged value)? aboutOnChanged,
    TResult Function(_BirthdayOnChanged value)? birthdayOnChanged,
    required TResult orElse(),
  }) {
    if (aboutOnChanged != null) {
      return aboutOnChanged(this);
    }
    return orElse();
  }
}

abstract class _AboutOnChanged implements ProfileFormEvent {
  const factory _AboutOnChanged(final String value) = _$_AboutOnChanged;

  String get value;
  @JsonKey(ignore: true)
  _$$_AboutOnChangedCopyWith<_$_AboutOnChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_BirthdayOnChangedCopyWith<$Res> {
  factory _$$_BirthdayOnChangedCopyWith(_$_BirthdayOnChanged value,
          $Res Function(_$_BirthdayOnChanged) then) =
      __$$_BirthdayOnChangedCopyWithImpl<$Res>;
  @useResult
  $Res call({Timestamp value});
}

/// @nodoc
class __$$_BirthdayOnChangedCopyWithImpl<$Res>
    extends _$ProfileFormEventCopyWithImpl<$Res, _$_BirthdayOnChanged>
    implements _$$_BirthdayOnChangedCopyWith<$Res> {
  __$$_BirthdayOnChangedCopyWithImpl(
      _$_BirthdayOnChanged _value, $Res Function(_$_BirthdayOnChanged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_$_BirthdayOnChanged(
      null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as Timestamp,
    ));
  }
}

/// @nodoc

class _$_BirthdayOnChanged implements _BirthdayOnChanged {
  const _$_BirthdayOnChanged(this.value);

  @override
  final Timestamp value;

  @override
  String toString() {
    return 'ProfileFormEvent.birthdayOnChanged(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BirthdayOnChanged &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_BirthdayOnChangedCopyWith<_$_BirthdayOnChanged> get copyWith =>
      __$$_BirthdayOnChangedCopyWithImpl<_$_BirthdayOnChanged>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Profile profile) initialized,
    required TResult Function(Profile profile) saveChangesPressed,
    required TResult Function(String value) fullNameOnChanged,
    required TResult Function(String value) addressOnChanged,
    required TResult Function(String value) positionOnChanged,
    required TResult Function(String value) companyOnChanged,
    required TResult Function(String value) locationOnChanged,
    required TResult Function(String value) phoneNumberOnChanged,
    required TResult Function(String value) aboutOnChanged,
    required TResult Function(Timestamp value) birthdayOnChanged,
  }) {
    return birthdayOnChanged(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Profile profile)? initialized,
    TResult? Function(Profile profile)? saveChangesPressed,
    TResult? Function(String value)? fullNameOnChanged,
    TResult? Function(String value)? addressOnChanged,
    TResult? Function(String value)? positionOnChanged,
    TResult? Function(String value)? companyOnChanged,
    TResult? Function(String value)? locationOnChanged,
    TResult? Function(String value)? phoneNumberOnChanged,
    TResult? Function(String value)? aboutOnChanged,
    TResult? Function(Timestamp value)? birthdayOnChanged,
  }) {
    return birthdayOnChanged?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Profile profile)? initialized,
    TResult Function(Profile profile)? saveChangesPressed,
    TResult Function(String value)? fullNameOnChanged,
    TResult Function(String value)? addressOnChanged,
    TResult Function(String value)? positionOnChanged,
    TResult Function(String value)? companyOnChanged,
    TResult Function(String value)? locationOnChanged,
    TResult Function(String value)? phoneNumberOnChanged,
    TResult Function(String value)? aboutOnChanged,
    TResult Function(Timestamp value)? birthdayOnChanged,
    required TResult orElse(),
  }) {
    if (birthdayOnChanged != null) {
      return birthdayOnChanged(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_SaveChangesPressed value) saveChangesPressed,
    required TResult Function(_FullNameOnChanged value) fullNameOnChanged,
    required TResult Function(_AddressOnChanged value) addressOnChanged,
    required TResult Function(_PositionOnChanged value) positionOnChanged,
    required TResult Function(_CompanyOnChanged value) companyOnChanged,
    required TResult Function(_LocationOnChanged value) locationOnChanged,
    required TResult Function(_PhoneNumberOnChanged value) phoneNumberOnChanged,
    required TResult Function(_AboutOnChanged value) aboutOnChanged,
    required TResult Function(_BirthdayOnChanged value) birthdayOnChanged,
  }) {
    return birthdayOnChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialized value)? initialized,
    TResult? Function(_SaveChangesPressed value)? saveChangesPressed,
    TResult? Function(_FullNameOnChanged value)? fullNameOnChanged,
    TResult? Function(_AddressOnChanged value)? addressOnChanged,
    TResult? Function(_PositionOnChanged value)? positionOnChanged,
    TResult? Function(_CompanyOnChanged value)? companyOnChanged,
    TResult? Function(_LocationOnChanged value)? locationOnChanged,
    TResult? Function(_PhoneNumberOnChanged value)? phoneNumberOnChanged,
    TResult? Function(_AboutOnChanged value)? aboutOnChanged,
    TResult? Function(_BirthdayOnChanged value)? birthdayOnChanged,
  }) {
    return birthdayOnChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_SaveChangesPressed value)? saveChangesPressed,
    TResult Function(_FullNameOnChanged value)? fullNameOnChanged,
    TResult Function(_AddressOnChanged value)? addressOnChanged,
    TResult Function(_PositionOnChanged value)? positionOnChanged,
    TResult Function(_CompanyOnChanged value)? companyOnChanged,
    TResult Function(_LocationOnChanged value)? locationOnChanged,
    TResult Function(_PhoneNumberOnChanged value)? phoneNumberOnChanged,
    TResult Function(_AboutOnChanged value)? aboutOnChanged,
    TResult Function(_BirthdayOnChanged value)? birthdayOnChanged,
    required TResult orElse(),
  }) {
    if (birthdayOnChanged != null) {
      return birthdayOnChanged(this);
    }
    return orElse();
  }
}

abstract class _BirthdayOnChanged implements ProfileFormEvent {
  const factory _BirthdayOnChanged(final Timestamp value) =
      _$_BirthdayOnChanged;

  Timestamp get value;
  @JsonKey(ignore: true)
  _$$_BirthdayOnChangedCopyWith<_$_BirthdayOnChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ProfileFormState {
  RequestState get state => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  String get fullName => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  File? get imageFile => throw _privateConstructorUsedError;
  String get phoneNumber => throw _privateConstructorUsedError;
  String get position => throw _privateConstructorUsedError;
  String get company => throw _privateConstructorUsedError;
  String get location => throw _privateConstructorUsedError;
  String get about => throw _privateConstructorUsedError;
  String get address => throw _privateConstructorUsedError;
  Timestamp? get birthday => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ProfileFormStateCopyWith<ProfileFormState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileFormStateCopyWith<$Res> {
  factory $ProfileFormStateCopyWith(
          ProfileFormState value, $Res Function(ProfileFormState) then) =
      _$ProfileFormStateCopyWithImpl<$Res, ProfileFormState>;
  @useResult
  $Res call(
      {RequestState state,
      String message,
      String fullName,
      String email,
      File? imageFile,
      String phoneNumber,
      String position,
      String company,
      String location,
      String about,
      String address,
      Timestamp? birthday});
}

/// @nodoc
class _$ProfileFormStateCopyWithImpl<$Res, $Val extends ProfileFormState>
    implements $ProfileFormStateCopyWith<$Res> {
  _$ProfileFormStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? state = null,
    Object? message = null,
    Object? fullName = null,
    Object? email = null,
    Object? imageFile = freezed,
    Object? phoneNumber = null,
    Object? position = null,
    Object? company = null,
    Object? location = null,
    Object? about = null,
    Object? address = null,
    Object? birthday = freezed,
  }) {
    return _then(_value.copyWith(
      state: null == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as RequestState,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      fullName: null == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      imageFile: freezed == imageFile
          ? _value.imageFile
          : imageFile // ignore: cast_nullable_to_non_nullable
              as File?,
      phoneNumber: null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      position: null == position
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as String,
      company: null == company
          ? _value.company
          : company // ignore: cast_nullable_to_non_nullable
              as String,
      location: null == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String,
      about: null == about
          ? _value.about
          : about // ignore: cast_nullable_to_non_nullable
              as String,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      birthday: freezed == birthday
          ? _value.birthday
          : birthday // ignore: cast_nullable_to_non_nullable
              as Timestamp?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ProfileFormStateCopyWith<$Res>
    implements $ProfileFormStateCopyWith<$Res> {
  factory _$$_ProfileFormStateCopyWith(
          _$_ProfileFormState value, $Res Function(_$_ProfileFormState) then) =
      __$$_ProfileFormStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {RequestState state,
      String message,
      String fullName,
      String email,
      File? imageFile,
      String phoneNumber,
      String position,
      String company,
      String location,
      String about,
      String address,
      Timestamp? birthday});
}

/// @nodoc
class __$$_ProfileFormStateCopyWithImpl<$Res>
    extends _$ProfileFormStateCopyWithImpl<$Res, _$_ProfileFormState>
    implements _$$_ProfileFormStateCopyWith<$Res> {
  __$$_ProfileFormStateCopyWithImpl(
      _$_ProfileFormState _value, $Res Function(_$_ProfileFormState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? state = null,
    Object? message = null,
    Object? fullName = null,
    Object? email = null,
    Object? imageFile = freezed,
    Object? phoneNumber = null,
    Object? position = null,
    Object? company = null,
    Object? location = null,
    Object? about = null,
    Object? address = null,
    Object? birthday = freezed,
  }) {
    return _then(_$_ProfileFormState(
      state: null == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as RequestState,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      fullName: null == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      imageFile: freezed == imageFile
          ? _value.imageFile
          : imageFile // ignore: cast_nullable_to_non_nullable
              as File?,
      phoneNumber: null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      position: null == position
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as String,
      company: null == company
          ? _value.company
          : company // ignore: cast_nullable_to_non_nullable
              as String,
      location: null == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String,
      about: null == about
          ? _value.about
          : about // ignore: cast_nullable_to_non_nullable
              as String,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      birthday: freezed == birthday
          ? _value.birthday
          : birthday // ignore: cast_nullable_to_non_nullable
              as Timestamp?,
    ));
  }
}

/// @nodoc

class _$_ProfileFormState implements _ProfileFormState {
  const _$_ProfileFormState(
      {required this.state,
      required this.message,
      required this.fullName,
      required this.email,
      required this.imageFile,
      required this.phoneNumber,
      required this.position,
      required this.company,
      required this.location,
      required this.about,
      required this.address,
      required this.birthday});

  @override
  final RequestState state;
  @override
  final String message;
  @override
  final String fullName;
  @override
  final String email;
  @override
  final File? imageFile;
  @override
  final String phoneNumber;
  @override
  final String position;
  @override
  final String company;
  @override
  final String location;
  @override
  final String about;
  @override
  final String address;
  @override
  final Timestamp? birthday;

  @override
  String toString() {
    return 'ProfileFormState(state: $state, message: $message, fullName: $fullName, email: $email, imageFile: $imageFile, phoneNumber: $phoneNumber, position: $position, company: $company, location: $location, about: $about, address: $address, birthday: $birthday)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ProfileFormState &&
            (identical(other.state, state) || other.state == state) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.fullName, fullName) ||
                other.fullName == fullName) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.imageFile, imageFile) ||
                other.imageFile == imageFile) &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(other.position, position) ||
                other.position == position) &&
            (identical(other.company, company) || other.company == company) &&
            (identical(other.location, location) ||
                other.location == location) &&
            (identical(other.about, about) || other.about == about) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.birthday, birthday) ||
                other.birthday == birthday));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      state,
      message,
      fullName,
      email,
      imageFile,
      phoneNumber,
      position,
      company,
      location,
      about,
      address,
      birthday);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ProfileFormStateCopyWith<_$_ProfileFormState> get copyWith =>
      __$$_ProfileFormStateCopyWithImpl<_$_ProfileFormState>(this, _$identity);
}

abstract class _ProfileFormState implements ProfileFormState {
  const factory _ProfileFormState(
      {required final RequestState state,
      required final String message,
      required final String fullName,
      required final String email,
      required final File? imageFile,
      required final String phoneNumber,
      required final String position,
      required final String company,
      required final String location,
      required final String about,
      required final String address,
      required final Timestamp? birthday}) = _$_ProfileFormState;

  @override
  RequestState get state;
  @override
  String get message;
  @override
  String get fullName;
  @override
  String get email;
  @override
  File? get imageFile;
  @override
  String get phoneNumber;
  @override
  String get position;
  @override
  String get company;
  @override
  String get location;
  @override
  String get about;
  @override
  String get address;
  @override
  Timestamp? get birthday;
  @override
  @JsonKey(ignore: true)
  _$$_ProfileFormStateCopyWith<_$_ProfileFormState> get copyWith =>
      throw _privateConstructorUsedError;
}
