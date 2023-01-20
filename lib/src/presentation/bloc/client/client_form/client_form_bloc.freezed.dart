// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'client_form_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ClientFormEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Client client) init,
    required TResult Function(String name) nameOnChanged,
    required TResult Function(String position) positionOnChanged,
    required TResult Function(String address) addressOnChanged,
    required TResult Function(String phone) phoneOnChanged,
    required TResult Function(BuildContext context) birthdayOnChanged,
    required TResult Function(ImageSource source) pickImage,
    required TResult Function() saveChanges,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Client client)? init,
    TResult? Function(String name)? nameOnChanged,
    TResult? Function(String position)? positionOnChanged,
    TResult? Function(String address)? addressOnChanged,
    TResult? Function(String phone)? phoneOnChanged,
    TResult? Function(BuildContext context)? birthdayOnChanged,
    TResult? Function(ImageSource source)? pickImage,
    TResult? Function()? saveChanges,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Client client)? init,
    TResult Function(String name)? nameOnChanged,
    TResult Function(String position)? positionOnChanged,
    TResult Function(String address)? addressOnChanged,
    TResult Function(String phone)? phoneOnChanged,
    TResult Function(BuildContext context)? birthdayOnChanged,
    TResult Function(ImageSource source)? pickImage,
    TResult Function()? saveChanges,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) init,
    required TResult Function(_NameOnChanged value) nameOnChanged,
    required TResult Function(_PositionOnChanged value) positionOnChanged,
    required TResult Function(_AddressOnChanged value) addressOnChanged,
    required TResult Function(_PhoneOnChanged value) phoneOnChanged,
    required TResult Function(_BirthdayOnChanged value) birthdayOnChanged,
    required TResult Function(_PickImage value) pickImage,
    required TResult Function(_SaveChanges value) saveChanges,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init value)? init,
    TResult? Function(_NameOnChanged value)? nameOnChanged,
    TResult? Function(_PositionOnChanged value)? positionOnChanged,
    TResult? Function(_AddressOnChanged value)? addressOnChanged,
    TResult? Function(_PhoneOnChanged value)? phoneOnChanged,
    TResult? Function(_BirthdayOnChanged value)? birthdayOnChanged,
    TResult? Function(_PickImage value)? pickImage,
    TResult? Function(_SaveChanges value)? saveChanges,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_NameOnChanged value)? nameOnChanged,
    TResult Function(_PositionOnChanged value)? positionOnChanged,
    TResult Function(_AddressOnChanged value)? addressOnChanged,
    TResult Function(_PhoneOnChanged value)? phoneOnChanged,
    TResult Function(_BirthdayOnChanged value)? birthdayOnChanged,
    TResult Function(_PickImage value)? pickImage,
    TResult Function(_SaveChanges value)? saveChanges,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClientFormEventCopyWith<$Res> {
  factory $ClientFormEventCopyWith(
          ClientFormEvent value, $Res Function(ClientFormEvent) then) =
      _$ClientFormEventCopyWithImpl<$Res, ClientFormEvent>;
}

/// @nodoc
class _$ClientFormEventCopyWithImpl<$Res, $Val extends ClientFormEvent>
    implements $ClientFormEventCopyWith<$Res> {
  _$ClientFormEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_InitCopyWith<$Res> {
  factory _$$_InitCopyWith(_$_Init value, $Res Function(_$_Init) then) =
      __$$_InitCopyWithImpl<$Res>;
  @useResult
  $Res call({Client client});
}

/// @nodoc
class __$$_InitCopyWithImpl<$Res>
    extends _$ClientFormEventCopyWithImpl<$Res, _$_Init>
    implements _$$_InitCopyWith<$Res> {
  __$$_InitCopyWithImpl(_$_Init _value, $Res Function(_$_Init) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? client = null,
  }) {
    return _then(_$_Init(
      null == client
          ? _value.client
          : client // ignore: cast_nullable_to_non_nullable
              as Client,
    ));
  }
}

/// @nodoc

class _$_Init implements _Init {
  const _$_Init(this.client);

  @override
  final Client client;

  @override
  String toString() {
    return 'ClientFormEvent.init(client: $client)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Init &&
            (identical(other.client, client) || other.client == client));
  }

  @override
  int get hashCode => Object.hash(runtimeType, client);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InitCopyWith<_$_Init> get copyWith =>
      __$$_InitCopyWithImpl<_$_Init>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Client client) init,
    required TResult Function(String name) nameOnChanged,
    required TResult Function(String position) positionOnChanged,
    required TResult Function(String address) addressOnChanged,
    required TResult Function(String phone) phoneOnChanged,
    required TResult Function(BuildContext context) birthdayOnChanged,
    required TResult Function(ImageSource source) pickImage,
    required TResult Function() saveChanges,
  }) {
    return init(client);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Client client)? init,
    TResult? Function(String name)? nameOnChanged,
    TResult? Function(String position)? positionOnChanged,
    TResult? Function(String address)? addressOnChanged,
    TResult? Function(String phone)? phoneOnChanged,
    TResult? Function(BuildContext context)? birthdayOnChanged,
    TResult? Function(ImageSource source)? pickImage,
    TResult? Function()? saveChanges,
  }) {
    return init?.call(client);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Client client)? init,
    TResult Function(String name)? nameOnChanged,
    TResult Function(String position)? positionOnChanged,
    TResult Function(String address)? addressOnChanged,
    TResult Function(String phone)? phoneOnChanged,
    TResult Function(BuildContext context)? birthdayOnChanged,
    TResult Function(ImageSource source)? pickImage,
    TResult Function()? saveChanges,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(client);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) init,
    required TResult Function(_NameOnChanged value) nameOnChanged,
    required TResult Function(_PositionOnChanged value) positionOnChanged,
    required TResult Function(_AddressOnChanged value) addressOnChanged,
    required TResult Function(_PhoneOnChanged value) phoneOnChanged,
    required TResult Function(_BirthdayOnChanged value) birthdayOnChanged,
    required TResult Function(_PickImage value) pickImage,
    required TResult Function(_SaveChanges value) saveChanges,
  }) {
    return init(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init value)? init,
    TResult? Function(_NameOnChanged value)? nameOnChanged,
    TResult? Function(_PositionOnChanged value)? positionOnChanged,
    TResult? Function(_AddressOnChanged value)? addressOnChanged,
    TResult? Function(_PhoneOnChanged value)? phoneOnChanged,
    TResult? Function(_BirthdayOnChanged value)? birthdayOnChanged,
    TResult? Function(_PickImage value)? pickImage,
    TResult? Function(_SaveChanges value)? saveChanges,
  }) {
    return init?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_NameOnChanged value)? nameOnChanged,
    TResult Function(_PositionOnChanged value)? positionOnChanged,
    TResult Function(_AddressOnChanged value)? addressOnChanged,
    TResult Function(_PhoneOnChanged value)? phoneOnChanged,
    TResult Function(_BirthdayOnChanged value)? birthdayOnChanged,
    TResult Function(_PickImage value)? pickImage,
    TResult Function(_SaveChanges value)? saveChanges,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class _Init implements ClientFormEvent {
  const factory _Init(final Client client) = _$_Init;

  Client get client;
  @JsonKey(ignore: true)
  _$$_InitCopyWith<_$_Init> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_NameOnChangedCopyWith<$Res> {
  factory _$$_NameOnChangedCopyWith(
          _$_NameOnChanged value, $Res Function(_$_NameOnChanged) then) =
      __$$_NameOnChangedCopyWithImpl<$Res>;
  @useResult
  $Res call({String name});
}

/// @nodoc
class __$$_NameOnChangedCopyWithImpl<$Res>
    extends _$ClientFormEventCopyWithImpl<$Res, _$_NameOnChanged>
    implements _$$_NameOnChangedCopyWith<$Res> {
  __$$_NameOnChangedCopyWithImpl(
      _$_NameOnChanged _value, $Res Function(_$_NameOnChanged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
  }) {
    return _then(_$_NameOnChanged(
      null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_NameOnChanged implements _NameOnChanged {
  const _$_NameOnChanged(this.name);

  @override
  final String name;

  @override
  String toString() {
    return 'ClientFormEvent.nameOnChanged(name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_NameOnChanged &&
            (identical(other.name, name) || other.name == name));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_NameOnChangedCopyWith<_$_NameOnChanged> get copyWith =>
      __$$_NameOnChangedCopyWithImpl<_$_NameOnChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Client client) init,
    required TResult Function(String name) nameOnChanged,
    required TResult Function(String position) positionOnChanged,
    required TResult Function(String address) addressOnChanged,
    required TResult Function(String phone) phoneOnChanged,
    required TResult Function(BuildContext context) birthdayOnChanged,
    required TResult Function(ImageSource source) pickImage,
    required TResult Function() saveChanges,
  }) {
    return nameOnChanged(name);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Client client)? init,
    TResult? Function(String name)? nameOnChanged,
    TResult? Function(String position)? positionOnChanged,
    TResult? Function(String address)? addressOnChanged,
    TResult? Function(String phone)? phoneOnChanged,
    TResult? Function(BuildContext context)? birthdayOnChanged,
    TResult? Function(ImageSource source)? pickImage,
    TResult? Function()? saveChanges,
  }) {
    return nameOnChanged?.call(name);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Client client)? init,
    TResult Function(String name)? nameOnChanged,
    TResult Function(String position)? positionOnChanged,
    TResult Function(String address)? addressOnChanged,
    TResult Function(String phone)? phoneOnChanged,
    TResult Function(BuildContext context)? birthdayOnChanged,
    TResult Function(ImageSource source)? pickImage,
    TResult Function()? saveChanges,
    required TResult orElse(),
  }) {
    if (nameOnChanged != null) {
      return nameOnChanged(name);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) init,
    required TResult Function(_NameOnChanged value) nameOnChanged,
    required TResult Function(_PositionOnChanged value) positionOnChanged,
    required TResult Function(_AddressOnChanged value) addressOnChanged,
    required TResult Function(_PhoneOnChanged value) phoneOnChanged,
    required TResult Function(_BirthdayOnChanged value) birthdayOnChanged,
    required TResult Function(_PickImage value) pickImage,
    required TResult Function(_SaveChanges value) saveChanges,
  }) {
    return nameOnChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init value)? init,
    TResult? Function(_NameOnChanged value)? nameOnChanged,
    TResult? Function(_PositionOnChanged value)? positionOnChanged,
    TResult? Function(_AddressOnChanged value)? addressOnChanged,
    TResult? Function(_PhoneOnChanged value)? phoneOnChanged,
    TResult? Function(_BirthdayOnChanged value)? birthdayOnChanged,
    TResult? Function(_PickImage value)? pickImage,
    TResult? Function(_SaveChanges value)? saveChanges,
  }) {
    return nameOnChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_NameOnChanged value)? nameOnChanged,
    TResult Function(_PositionOnChanged value)? positionOnChanged,
    TResult Function(_AddressOnChanged value)? addressOnChanged,
    TResult Function(_PhoneOnChanged value)? phoneOnChanged,
    TResult Function(_BirthdayOnChanged value)? birthdayOnChanged,
    TResult Function(_PickImage value)? pickImage,
    TResult Function(_SaveChanges value)? saveChanges,
    required TResult orElse(),
  }) {
    if (nameOnChanged != null) {
      return nameOnChanged(this);
    }
    return orElse();
  }
}

abstract class _NameOnChanged implements ClientFormEvent {
  const factory _NameOnChanged(final String name) = _$_NameOnChanged;

  String get name;
  @JsonKey(ignore: true)
  _$$_NameOnChangedCopyWith<_$_NameOnChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_PositionOnChangedCopyWith<$Res> {
  factory _$$_PositionOnChangedCopyWith(_$_PositionOnChanged value,
          $Res Function(_$_PositionOnChanged) then) =
      __$$_PositionOnChangedCopyWithImpl<$Res>;
  @useResult
  $Res call({String position});
}

/// @nodoc
class __$$_PositionOnChangedCopyWithImpl<$Res>
    extends _$ClientFormEventCopyWithImpl<$Res, _$_PositionOnChanged>
    implements _$$_PositionOnChangedCopyWith<$Res> {
  __$$_PositionOnChangedCopyWithImpl(
      _$_PositionOnChanged _value, $Res Function(_$_PositionOnChanged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? position = null,
  }) {
    return _then(_$_PositionOnChanged(
      null == position
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_PositionOnChanged implements _PositionOnChanged {
  const _$_PositionOnChanged(this.position);

  @override
  final String position;

  @override
  String toString() {
    return 'ClientFormEvent.positionOnChanged(position: $position)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PositionOnChanged &&
            (identical(other.position, position) ||
                other.position == position));
  }

  @override
  int get hashCode => Object.hash(runtimeType, position);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PositionOnChangedCopyWith<_$_PositionOnChanged> get copyWith =>
      __$$_PositionOnChangedCopyWithImpl<_$_PositionOnChanged>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Client client) init,
    required TResult Function(String name) nameOnChanged,
    required TResult Function(String position) positionOnChanged,
    required TResult Function(String address) addressOnChanged,
    required TResult Function(String phone) phoneOnChanged,
    required TResult Function(BuildContext context) birthdayOnChanged,
    required TResult Function(ImageSource source) pickImage,
    required TResult Function() saveChanges,
  }) {
    return positionOnChanged(position);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Client client)? init,
    TResult? Function(String name)? nameOnChanged,
    TResult? Function(String position)? positionOnChanged,
    TResult? Function(String address)? addressOnChanged,
    TResult? Function(String phone)? phoneOnChanged,
    TResult? Function(BuildContext context)? birthdayOnChanged,
    TResult? Function(ImageSource source)? pickImage,
    TResult? Function()? saveChanges,
  }) {
    return positionOnChanged?.call(position);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Client client)? init,
    TResult Function(String name)? nameOnChanged,
    TResult Function(String position)? positionOnChanged,
    TResult Function(String address)? addressOnChanged,
    TResult Function(String phone)? phoneOnChanged,
    TResult Function(BuildContext context)? birthdayOnChanged,
    TResult Function(ImageSource source)? pickImage,
    TResult Function()? saveChanges,
    required TResult orElse(),
  }) {
    if (positionOnChanged != null) {
      return positionOnChanged(position);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) init,
    required TResult Function(_NameOnChanged value) nameOnChanged,
    required TResult Function(_PositionOnChanged value) positionOnChanged,
    required TResult Function(_AddressOnChanged value) addressOnChanged,
    required TResult Function(_PhoneOnChanged value) phoneOnChanged,
    required TResult Function(_BirthdayOnChanged value) birthdayOnChanged,
    required TResult Function(_PickImage value) pickImage,
    required TResult Function(_SaveChanges value) saveChanges,
  }) {
    return positionOnChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init value)? init,
    TResult? Function(_NameOnChanged value)? nameOnChanged,
    TResult? Function(_PositionOnChanged value)? positionOnChanged,
    TResult? Function(_AddressOnChanged value)? addressOnChanged,
    TResult? Function(_PhoneOnChanged value)? phoneOnChanged,
    TResult? Function(_BirthdayOnChanged value)? birthdayOnChanged,
    TResult? Function(_PickImage value)? pickImage,
    TResult? Function(_SaveChanges value)? saveChanges,
  }) {
    return positionOnChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_NameOnChanged value)? nameOnChanged,
    TResult Function(_PositionOnChanged value)? positionOnChanged,
    TResult Function(_AddressOnChanged value)? addressOnChanged,
    TResult Function(_PhoneOnChanged value)? phoneOnChanged,
    TResult Function(_BirthdayOnChanged value)? birthdayOnChanged,
    TResult Function(_PickImage value)? pickImage,
    TResult Function(_SaveChanges value)? saveChanges,
    required TResult orElse(),
  }) {
    if (positionOnChanged != null) {
      return positionOnChanged(this);
    }
    return orElse();
  }
}

abstract class _PositionOnChanged implements ClientFormEvent {
  const factory _PositionOnChanged(final String position) =
      _$_PositionOnChanged;

  String get position;
  @JsonKey(ignore: true)
  _$$_PositionOnChangedCopyWith<_$_PositionOnChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_AddressOnChangedCopyWith<$Res> {
  factory _$$_AddressOnChangedCopyWith(
          _$_AddressOnChanged value, $Res Function(_$_AddressOnChanged) then) =
      __$$_AddressOnChangedCopyWithImpl<$Res>;
  @useResult
  $Res call({String address});
}

/// @nodoc
class __$$_AddressOnChangedCopyWithImpl<$Res>
    extends _$ClientFormEventCopyWithImpl<$Res, _$_AddressOnChanged>
    implements _$$_AddressOnChangedCopyWith<$Res> {
  __$$_AddressOnChangedCopyWithImpl(
      _$_AddressOnChanged _value, $Res Function(_$_AddressOnChanged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? address = null,
  }) {
    return _then(_$_AddressOnChanged(
      null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_AddressOnChanged implements _AddressOnChanged {
  const _$_AddressOnChanged(this.address);

  @override
  final String address;

  @override
  String toString() {
    return 'ClientFormEvent.addressOnChanged(address: $address)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AddressOnChanged &&
            (identical(other.address, address) || other.address == address));
  }

  @override
  int get hashCode => Object.hash(runtimeType, address);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AddressOnChangedCopyWith<_$_AddressOnChanged> get copyWith =>
      __$$_AddressOnChangedCopyWithImpl<_$_AddressOnChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Client client) init,
    required TResult Function(String name) nameOnChanged,
    required TResult Function(String position) positionOnChanged,
    required TResult Function(String address) addressOnChanged,
    required TResult Function(String phone) phoneOnChanged,
    required TResult Function(BuildContext context) birthdayOnChanged,
    required TResult Function(ImageSource source) pickImage,
    required TResult Function() saveChanges,
  }) {
    return addressOnChanged(address);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Client client)? init,
    TResult? Function(String name)? nameOnChanged,
    TResult? Function(String position)? positionOnChanged,
    TResult? Function(String address)? addressOnChanged,
    TResult? Function(String phone)? phoneOnChanged,
    TResult? Function(BuildContext context)? birthdayOnChanged,
    TResult? Function(ImageSource source)? pickImage,
    TResult? Function()? saveChanges,
  }) {
    return addressOnChanged?.call(address);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Client client)? init,
    TResult Function(String name)? nameOnChanged,
    TResult Function(String position)? positionOnChanged,
    TResult Function(String address)? addressOnChanged,
    TResult Function(String phone)? phoneOnChanged,
    TResult Function(BuildContext context)? birthdayOnChanged,
    TResult Function(ImageSource source)? pickImage,
    TResult Function()? saveChanges,
    required TResult orElse(),
  }) {
    if (addressOnChanged != null) {
      return addressOnChanged(address);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) init,
    required TResult Function(_NameOnChanged value) nameOnChanged,
    required TResult Function(_PositionOnChanged value) positionOnChanged,
    required TResult Function(_AddressOnChanged value) addressOnChanged,
    required TResult Function(_PhoneOnChanged value) phoneOnChanged,
    required TResult Function(_BirthdayOnChanged value) birthdayOnChanged,
    required TResult Function(_PickImage value) pickImage,
    required TResult Function(_SaveChanges value) saveChanges,
  }) {
    return addressOnChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init value)? init,
    TResult? Function(_NameOnChanged value)? nameOnChanged,
    TResult? Function(_PositionOnChanged value)? positionOnChanged,
    TResult? Function(_AddressOnChanged value)? addressOnChanged,
    TResult? Function(_PhoneOnChanged value)? phoneOnChanged,
    TResult? Function(_BirthdayOnChanged value)? birthdayOnChanged,
    TResult? Function(_PickImage value)? pickImage,
    TResult? Function(_SaveChanges value)? saveChanges,
  }) {
    return addressOnChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_NameOnChanged value)? nameOnChanged,
    TResult Function(_PositionOnChanged value)? positionOnChanged,
    TResult Function(_AddressOnChanged value)? addressOnChanged,
    TResult Function(_PhoneOnChanged value)? phoneOnChanged,
    TResult Function(_BirthdayOnChanged value)? birthdayOnChanged,
    TResult Function(_PickImage value)? pickImage,
    TResult Function(_SaveChanges value)? saveChanges,
    required TResult orElse(),
  }) {
    if (addressOnChanged != null) {
      return addressOnChanged(this);
    }
    return orElse();
  }
}

abstract class _AddressOnChanged implements ClientFormEvent {
  const factory _AddressOnChanged(final String address) = _$_AddressOnChanged;

  String get address;
  @JsonKey(ignore: true)
  _$$_AddressOnChangedCopyWith<_$_AddressOnChanged> get copyWith =>
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
    extends _$ClientFormEventCopyWithImpl<$Res, _$_PhoneOnChanged>
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
    return 'ClientFormEvent.phoneOnChanged(phone: $phone)';
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
    required TResult Function(Client client) init,
    required TResult Function(String name) nameOnChanged,
    required TResult Function(String position) positionOnChanged,
    required TResult Function(String address) addressOnChanged,
    required TResult Function(String phone) phoneOnChanged,
    required TResult Function(BuildContext context) birthdayOnChanged,
    required TResult Function(ImageSource source) pickImage,
    required TResult Function() saveChanges,
  }) {
    return phoneOnChanged(phone);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Client client)? init,
    TResult? Function(String name)? nameOnChanged,
    TResult? Function(String position)? positionOnChanged,
    TResult? Function(String address)? addressOnChanged,
    TResult? Function(String phone)? phoneOnChanged,
    TResult? Function(BuildContext context)? birthdayOnChanged,
    TResult? Function(ImageSource source)? pickImage,
    TResult? Function()? saveChanges,
  }) {
    return phoneOnChanged?.call(phone);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Client client)? init,
    TResult Function(String name)? nameOnChanged,
    TResult Function(String position)? positionOnChanged,
    TResult Function(String address)? addressOnChanged,
    TResult Function(String phone)? phoneOnChanged,
    TResult Function(BuildContext context)? birthdayOnChanged,
    TResult Function(ImageSource source)? pickImage,
    TResult Function()? saveChanges,
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
    required TResult Function(_Init value) init,
    required TResult Function(_NameOnChanged value) nameOnChanged,
    required TResult Function(_PositionOnChanged value) positionOnChanged,
    required TResult Function(_AddressOnChanged value) addressOnChanged,
    required TResult Function(_PhoneOnChanged value) phoneOnChanged,
    required TResult Function(_BirthdayOnChanged value) birthdayOnChanged,
    required TResult Function(_PickImage value) pickImage,
    required TResult Function(_SaveChanges value) saveChanges,
  }) {
    return phoneOnChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init value)? init,
    TResult? Function(_NameOnChanged value)? nameOnChanged,
    TResult? Function(_PositionOnChanged value)? positionOnChanged,
    TResult? Function(_AddressOnChanged value)? addressOnChanged,
    TResult? Function(_PhoneOnChanged value)? phoneOnChanged,
    TResult? Function(_BirthdayOnChanged value)? birthdayOnChanged,
    TResult? Function(_PickImage value)? pickImage,
    TResult? Function(_SaveChanges value)? saveChanges,
  }) {
    return phoneOnChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_NameOnChanged value)? nameOnChanged,
    TResult Function(_PositionOnChanged value)? positionOnChanged,
    TResult Function(_AddressOnChanged value)? addressOnChanged,
    TResult Function(_PhoneOnChanged value)? phoneOnChanged,
    TResult Function(_BirthdayOnChanged value)? birthdayOnChanged,
    TResult Function(_PickImage value)? pickImage,
    TResult Function(_SaveChanges value)? saveChanges,
    required TResult orElse(),
  }) {
    if (phoneOnChanged != null) {
      return phoneOnChanged(this);
    }
    return orElse();
  }
}

abstract class _PhoneOnChanged implements ClientFormEvent {
  const factory _PhoneOnChanged(final String phone) = _$_PhoneOnChanged;

  String get phone;
  @JsonKey(ignore: true)
  _$$_PhoneOnChangedCopyWith<_$_PhoneOnChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_BirthdayOnChangedCopyWith<$Res> {
  factory _$$_BirthdayOnChangedCopyWith(_$_BirthdayOnChanged value,
          $Res Function(_$_BirthdayOnChanged) then) =
      __$$_BirthdayOnChangedCopyWithImpl<$Res>;
  @useResult
  $Res call({BuildContext context});
}

/// @nodoc
class __$$_BirthdayOnChangedCopyWithImpl<$Res>
    extends _$ClientFormEventCopyWithImpl<$Res, _$_BirthdayOnChanged>
    implements _$$_BirthdayOnChangedCopyWith<$Res> {
  __$$_BirthdayOnChangedCopyWithImpl(
      _$_BirthdayOnChanged _value, $Res Function(_$_BirthdayOnChanged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? context = null,
  }) {
    return _then(_$_BirthdayOnChanged(
      null == context
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as BuildContext,
    ));
  }
}

/// @nodoc

class _$_BirthdayOnChanged implements _BirthdayOnChanged {
  const _$_BirthdayOnChanged(this.context);

  @override
  final BuildContext context;

  @override
  String toString() {
    return 'ClientFormEvent.birthdayOnChanged(context: $context)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BirthdayOnChanged &&
            (identical(other.context, context) || other.context == context));
  }

  @override
  int get hashCode => Object.hash(runtimeType, context);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_BirthdayOnChangedCopyWith<_$_BirthdayOnChanged> get copyWith =>
      __$$_BirthdayOnChangedCopyWithImpl<_$_BirthdayOnChanged>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Client client) init,
    required TResult Function(String name) nameOnChanged,
    required TResult Function(String position) positionOnChanged,
    required TResult Function(String address) addressOnChanged,
    required TResult Function(String phone) phoneOnChanged,
    required TResult Function(BuildContext context) birthdayOnChanged,
    required TResult Function(ImageSource source) pickImage,
    required TResult Function() saveChanges,
  }) {
    return birthdayOnChanged(context);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Client client)? init,
    TResult? Function(String name)? nameOnChanged,
    TResult? Function(String position)? positionOnChanged,
    TResult? Function(String address)? addressOnChanged,
    TResult? Function(String phone)? phoneOnChanged,
    TResult? Function(BuildContext context)? birthdayOnChanged,
    TResult? Function(ImageSource source)? pickImage,
    TResult? Function()? saveChanges,
  }) {
    return birthdayOnChanged?.call(context);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Client client)? init,
    TResult Function(String name)? nameOnChanged,
    TResult Function(String position)? positionOnChanged,
    TResult Function(String address)? addressOnChanged,
    TResult Function(String phone)? phoneOnChanged,
    TResult Function(BuildContext context)? birthdayOnChanged,
    TResult Function(ImageSource source)? pickImage,
    TResult Function()? saveChanges,
    required TResult orElse(),
  }) {
    if (birthdayOnChanged != null) {
      return birthdayOnChanged(context);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) init,
    required TResult Function(_NameOnChanged value) nameOnChanged,
    required TResult Function(_PositionOnChanged value) positionOnChanged,
    required TResult Function(_AddressOnChanged value) addressOnChanged,
    required TResult Function(_PhoneOnChanged value) phoneOnChanged,
    required TResult Function(_BirthdayOnChanged value) birthdayOnChanged,
    required TResult Function(_PickImage value) pickImage,
    required TResult Function(_SaveChanges value) saveChanges,
  }) {
    return birthdayOnChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init value)? init,
    TResult? Function(_NameOnChanged value)? nameOnChanged,
    TResult? Function(_PositionOnChanged value)? positionOnChanged,
    TResult? Function(_AddressOnChanged value)? addressOnChanged,
    TResult? Function(_PhoneOnChanged value)? phoneOnChanged,
    TResult? Function(_BirthdayOnChanged value)? birthdayOnChanged,
    TResult? Function(_PickImage value)? pickImage,
    TResult? Function(_SaveChanges value)? saveChanges,
  }) {
    return birthdayOnChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_NameOnChanged value)? nameOnChanged,
    TResult Function(_PositionOnChanged value)? positionOnChanged,
    TResult Function(_AddressOnChanged value)? addressOnChanged,
    TResult Function(_PhoneOnChanged value)? phoneOnChanged,
    TResult Function(_BirthdayOnChanged value)? birthdayOnChanged,
    TResult Function(_PickImage value)? pickImage,
    TResult Function(_SaveChanges value)? saveChanges,
    required TResult orElse(),
  }) {
    if (birthdayOnChanged != null) {
      return birthdayOnChanged(this);
    }
    return orElse();
  }
}

abstract class _BirthdayOnChanged implements ClientFormEvent {
  const factory _BirthdayOnChanged(final BuildContext context) =
      _$_BirthdayOnChanged;

  BuildContext get context;
  @JsonKey(ignore: true)
  _$$_BirthdayOnChangedCopyWith<_$_BirthdayOnChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_PickImageCopyWith<$Res> {
  factory _$$_PickImageCopyWith(
          _$_PickImage value, $Res Function(_$_PickImage) then) =
      __$$_PickImageCopyWithImpl<$Res>;
  @useResult
  $Res call({ImageSource source});
}

/// @nodoc
class __$$_PickImageCopyWithImpl<$Res>
    extends _$ClientFormEventCopyWithImpl<$Res, _$_PickImage>
    implements _$$_PickImageCopyWith<$Res> {
  __$$_PickImageCopyWithImpl(
      _$_PickImage _value, $Res Function(_$_PickImage) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? source = null,
  }) {
    return _then(_$_PickImage(
      null == source
          ? _value.source
          : source // ignore: cast_nullable_to_non_nullable
              as ImageSource,
    ));
  }
}

/// @nodoc

class _$_PickImage implements _PickImage {
  const _$_PickImage(this.source);

  @override
  final ImageSource source;

  @override
  String toString() {
    return 'ClientFormEvent.pickImage(source: $source)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PickImage &&
            (identical(other.source, source) || other.source == source));
  }

  @override
  int get hashCode => Object.hash(runtimeType, source);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PickImageCopyWith<_$_PickImage> get copyWith =>
      __$$_PickImageCopyWithImpl<_$_PickImage>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Client client) init,
    required TResult Function(String name) nameOnChanged,
    required TResult Function(String position) positionOnChanged,
    required TResult Function(String address) addressOnChanged,
    required TResult Function(String phone) phoneOnChanged,
    required TResult Function(BuildContext context) birthdayOnChanged,
    required TResult Function(ImageSource source) pickImage,
    required TResult Function() saveChanges,
  }) {
    return pickImage(source);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Client client)? init,
    TResult? Function(String name)? nameOnChanged,
    TResult? Function(String position)? positionOnChanged,
    TResult? Function(String address)? addressOnChanged,
    TResult? Function(String phone)? phoneOnChanged,
    TResult? Function(BuildContext context)? birthdayOnChanged,
    TResult? Function(ImageSource source)? pickImage,
    TResult? Function()? saveChanges,
  }) {
    return pickImage?.call(source);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Client client)? init,
    TResult Function(String name)? nameOnChanged,
    TResult Function(String position)? positionOnChanged,
    TResult Function(String address)? addressOnChanged,
    TResult Function(String phone)? phoneOnChanged,
    TResult Function(BuildContext context)? birthdayOnChanged,
    TResult Function(ImageSource source)? pickImage,
    TResult Function()? saveChanges,
    required TResult orElse(),
  }) {
    if (pickImage != null) {
      return pickImage(source);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) init,
    required TResult Function(_NameOnChanged value) nameOnChanged,
    required TResult Function(_PositionOnChanged value) positionOnChanged,
    required TResult Function(_AddressOnChanged value) addressOnChanged,
    required TResult Function(_PhoneOnChanged value) phoneOnChanged,
    required TResult Function(_BirthdayOnChanged value) birthdayOnChanged,
    required TResult Function(_PickImage value) pickImage,
    required TResult Function(_SaveChanges value) saveChanges,
  }) {
    return pickImage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init value)? init,
    TResult? Function(_NameOnChanged value)? nameOnChanged,
    TResult? Function(_PositionOnChanged value)? positionOnChanged,
    TResult? Function(_AddressOnChanged value)? addressOnChanged,
    TResult? Function(_PhoneOnChanged value)? phoneOnChanged,
    TResult? Function(_BirthdayOnChanged value)? birthdayOnChanged,
    TResult? Function(_PickImage value)? pickImage,
    TResult? Function(_SaveChanges value)? saveChanges,
  }) {
    return pickImage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_NameOnChanged value)? nameOnChanged,
    TResult Function(_PositionOnChanged value)? positionOnChanged,
    TResult Function(_AddressOnChanged value)? addressOnChanged,
    TResult Function(_PhoneOnChanged value)? phoneOnChanged,
    TResult Function(_BirthdayOnChanged value)? birthdayOnChanged,
    TResult Function(_PickImage value)? pickImage,
    TResult Function(_SaveChanges value)? saveChanges,
    required TResult orElse(),
  }) {
    if (pickImage != null) {
      return pickImage(this);
    }
    return orElse();
  }
}

abstract class _PickImage implements ClientFormEvent {
  const factory _PickImage(final ImageSource source) = _$_PickImage;

  ImageSource get source;
  @JsonKey(ignore: true)
  _$$_PickImageCopyWith<_$_PickImage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SaveChangesCopyWith<$Res> {
  factory _$$_SaveChangesCopyWith(
          _$_SaveChanges value, $Res Function(_$_SaveChanges) then) =
      __$$_SaveChangesCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_SaveChangesCopyWithImpl<$Res>
    extends _$ClientFormEventCopyWithImpl<$Res, _$_SaveChanges>
    implements _$$_SaveChangesCopyWith<$Res> {
  __$$_SaveChangesCopyWithImpl(
      _$_SaveChanges _value, $Res Function(_$_SaveChanges) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_SaveChanges implements _SaveChanges {
  const _$_SaveChanges();

  @override
  String toString() {
    return 'ClientFormEvent.saveChanges()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_SaveChanges);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Client client) init,
    required TResult Function(String name) nameOnChanged,
    required TResult Function(String position) positionOnChanged,
    required TResult Function(String address) addressOnChanged,
    required TResult Function(String phone) phoneOnChanged,
    required TResult Function(BuildContext context) birthdayOnChanged,
    required TResult Function(ImageSource source) pickImage,
    required TResult Function() saveChanges,
  }) {
    return saveChanges();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Client client)? init,
    TResult? Function(String name)? nameOnChanged,
    TResult? Function(String position)? positionOnChanged,
    TResult? Function(String address)? addressOnChanged,
    TResult? Function(String phone)? phoneOnChanged,
    TResult? Function(BuildContext context)? birthdayOnChanged,
    TResult? Function(ImageSource source)? pickImage,
    TResult? Function()? saveChanges,
  }) {
    return saveChanges?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Client client)? init,
    TResult Function(String name)? nameOnChanged,
    TResult Function(String position)? positionOnChanged,
    TResult Function(String address)? addressOnChanged,
    TResult Function(String phone)? phoneOnChanged,
    TResult Function(BuildContext context)? birthdayOnChanged,
    TResult Function(ImageSource source)? pickImage,
    TResult Function()? saveChanges,
    required TResult orElse(),
  }) {
    if (saveChanges != null) {
      return saveChanges();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) init,
    required TResult Function(_NameOnChanged value) nameOnChanged,
    required TResult Function(_PositionOnChanged value) positionOnChanged,
    required TResult Function(_AddressOnChanged value) addressOnChanged,
    required TResult Function(_PhoneOnChanged value) phoneOnChanged,
    required TResult Function(_BirthdayOnChanged value) birthdayOnChanged,
    required TResult Function(_PickImage value) pickImage,
    required TResult Function(_SaveChanges value) saveChanges,
  }) {
    return saveChanges(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init value)? init,
    TResult? Function(_NameOnChanged value)? nameOnChanged,
    TResult? Function(_PositionOnChanged value)? positionOnChanged,
    TResult? Function(_AddressOnChanged value)? addressOnChanged,
    TResult? Function(_PhoneOnChanged value)? phoneOnChanged,
    TResult? Function(_BirthdayOnChanged value)? birthdayOnChanged,
    TResult? Function(_PickImage value)? pickImage,
    TResult? Function(_SaveChanges value)? saveChanges,
  }) {
    return saveChanges?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_NameOnChanged value)? nameOnChanged,
    TResult Function(_PositionOnChanged value)? positionOnChanged,
    TResult Function(_AddressOnChanged value)? addressOnChanged,
    TResult Function(_PhoneOnChanged value)? phoneOnChanged,
    TResult Function(_BirthdayOnChanged value)? birthdayOnChanged,
    TResult Function(_PickImage value)? pickImage,
    TResult Function(_SaveChanges value)? saveChanges,
    required TResult orElse(),
  }) {
    if (saveChanges != null) {
      return saveChanges(this);
    }
    return orElse();
  }
}

abstract class _SaveChanges implements ClientFormEvent {
  const factory _SaveChanges() = _$_SaveChanges;
}

/// @nodoc
mixin _$ClientFormState {
  RequestState get state => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get position => throw _privateConstructorUsedError;
  String get address => throw _privateConstructorUsedError;
  String get birthdate => throw _privateConstructorUsedError;
  String get phone => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  File? get imageFile => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ClientFormStateCopyWith<ClientFormState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClientFormStateCopyWith<$Res> {
  factory $ClientFormStateCopyWith(
          ClientFormState value, $Res Function(ClientFormState) then) =
      _$ClientFormStateCopyWithImpl<$Res, ClientFormState>;
  @useResult
  $Res call(
      {RequestState state,
      String message,
      String name,
      String position,
      String address,
      String birthdate,
      String phone,
      String email,
      File? imageFile});
}

/// @nodoc
class _$ClientFormStateCopyWithImpl<$Res, $Val extends ClientFormState>
    implements $ClientFormStateCopyWith<$Res> {
  _$ClientFormStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? state = null,
    Object? message = null,
    Object? name = null,
    Object? position = null,
    Object? address = null,
    Object? birthdate = null,
    Object? phone = null,
    Object? email = null,
    Object? imageFile = freezed,
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
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      position: null == position
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as String,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      birthdate: null == birthdate
          ? _value.birthdate
          : birthdate // ignore: cast_nullable_to_non_nullable
              as String,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      imageFile: freezed == imageFile
          ? _value.imageFile
          : imageFile // ignore: cast_nullable_to_non_nullable
              as File?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ClientFormStateCopyWith<$Res>
    implements $ClientFormStateCopyWith<$Res> {
  factory _$$_ClientFormStateCopyWith(
          _$_ClientFormState value, $Res Function(_$_ClientFormState) then) =
      __$$_ClientFormStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {RequestState state,
      String message,
      String name,
      String position,
      String address,
      String birthdate,
      String phone,
      String email,
      File? imageFile});
}

/// @nodoc
class __$$_ClientFormStateCopyWithImpl<$Res>
    extends _$ClientFormStateCopyWithImpl<$Res, _$_ClientFormState>
    implements _$$_ClientFormStateCopyWith<$Res> {
  __$$_ClientFormStateCopyWithImpl(
      _$_ClientFormState _value, $Res Function(_$_ClientFormState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? state = null,
    Object? message = null,
    Object? name = null,
    Object? position = null,
    Object? address = null,
    Object? birthdate = null,
    Object? phone = null,
    Object? email = null,
    Object? imageFile = freezed,
  }) {
    return _then(_$_ClientFormState(
      state: null == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as RequestState,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      position: null == position
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as String,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      birthdate: null == birthdate
          ? _value.birthdate
          : birthdate // ignore: cast_nullable_to_non_nullable
              as String,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      imageFile: freezed == imageFile
          ? _value.imageFile
          : imageFile // ignore: cast_nullable_to_non_nullable
              as File?,
    ));
  }
}

/// @nodoc

class _$_ClientFormState implements _ClientFormState {
  const _$_ClientFormState(
      {required this.state,
      required this.message,
      required this.name,
      required this.position,
      required this.address,
      required this.birthdate,
      required this.phone,
      required this.email,
      required this.imageFile});

  @override
  final RequestState state;
  @override
  final String message;
  @override
  final String name;
  @override
  final String position;
  @override
  final String address;
  @override
  final String birthdate;
  @override
  final String phone;
  @override
  final String email;
  @override
  final File? imageFile;

  @override
  String toString() {
    return 'ClientFormState(state: $state, message: $message, name: $name, position: $position, address: $address, birthdate: $birthdate, phone: $phone, email: $email, imageFile: $imageFile)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ClientFormState &&
            (identical(other.state, state) || other.state == state) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.position, position) ||
                other.position == position) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.birthdate, birthdate) ||
                other.birthdate == birthdate) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.imageFile, imageFile) ||
                other.imageFile == imageFile));
  }

  @override
  int get hashCode => Object.hash(runtimeType, state, message, name, position,
      address, birthdate, phone, email, imageFile);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ClientFormStateCopyWith<_$_ClientFormState> get copyWith =>
      __$$_ClientFormStateCopyWithImpl<_$_ClientFormState>(this, _$identity);
}

abstract class _ClientFormState implements ClientFormState {
  const factory _ClientFormState(
      {required final RequestState state,
      required final String message,
      required final String name,
      required final String position,
      required final String address,
      required final String birthdate,
      required final String phone,
      required final String email,
      required final File? imageFile}) = _$_ClientFormState;

  @override
  RequestState get state;
  @override
  String get message;
  @override
  String get name;
  @override
  String get position;
  @override
  String get address;
  @override
  String get birthdate;
  @override
  String get phone;
  @override
  String get email;
  @override
  File? get imageFile;
  @override
  @JsonKey(ignore: true)
  _$$_ClientFormStateCopyWith<_$_ClientFormState> get copyWith =>
      throw _privateConstructorUsedError;
}
