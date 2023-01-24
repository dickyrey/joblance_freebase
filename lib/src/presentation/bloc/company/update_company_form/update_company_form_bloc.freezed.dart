// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'update_company_form_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$UpdateCompanyFormEvent {
  ImageSource get source => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ImageSource source) pickImage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ImageSource source)? pickImage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ImageSource source)? pickImage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PickImage value) pickImage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PickImage value)? pickImage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PickImage value)? pickImage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UpdateCompanyFormEventCopyWith<UpdateCompanyFormEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateCompanyFormEventCopyWith<$Res> {
  factory $UpdateCompanyFormEventCopyWith(UpdateCompanyFormEvent value,
          $Res Function(UpdateCompanyFormEvent) then) =
      _$UpdateCompanyFormEventCopyWithImpl<$Res, UpdateCompanyFormEvent>;
  @useResult
  $Res call({ImageSource source});
}

/// @nodoc
class _$UpdateCompanyFormEventCopyWithImpl<$Res,
        $Val extends UpdateCompanyFormEvent>
    implements $UpdateCompanyFormEventCopyWith<$Res> {
  _$UpdateCompanyFormEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? source = null,
  }) {
    return _then(_value.copyWith(
      source: null == source
          ? _value.source
          : source // ignore: cast_nullable_to_non_nullable
              as ImageSource,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PickImageCopyWith<$Res>
    implements $UpdateCompanyFormEventCopyWith<$Res> {
  factory _$$_PickImageCopyWith(
          _$_PickImage value, $Res Function(_$_PickImage) then) =
      __$$_PickImageCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ImageSource source});
}

/// @nodoc
class __$$_PickImageCopyWithImpl<$Res>
    extends _$UpdateCompanyFormEventCopyWithImpl<$Res, _$_PickImage>
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
    return 'UpdateCompanyFormEvent.pickImage(source: $source)';
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
    required TResult Function(ImageSource source) pickImage,
  }) {
    return pickImage(source);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ImageSource source)? pickImage,
  }) {
    return pickImage?.call(source);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ImageSource source)? pickImage,
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
    required TResult Function(_PickImage value) pickImage,
  }) {
    return pickImage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PickImage value)? pickImage,
  }) {
    return pickImage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PickImage value)? pickImage,
    required TResult orElse(),
  }) {
    if (pickImage != null) {
      return pickImage(this);
    }
    return orElse();
  }
}

abstract class _PickImage implements UpdateCompanyFormEvent {
  const factory _PickImage(final ImageSource source) = _$_PickImage;

  @override
  ImageSource get source;
  @override
  @JsonKey(ignore: true)
  _$$_PickImageCopyWith<_$_PickImage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$UpdateCompanyFormState {
  RequestState get state => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  bool get isSubmitting => throw _privateConstructorUsedError;
  File? get imageFile => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UpdateCompanyFormStateCopyWith<UpdateCompanyFormState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateCompanyFormStateCopyWith<$Res> {
  factory $UpdateCompanyFormStateCopyWith(UpdateCompanyFormState value,
          $Res Function(UpdateCompanyFormState) then) =
      _$UpdateCompanyFormStateCopyWithImpl<$Res, UpdateCompanyFormState>;
  @useResult
  $Res call(
      {RequestState state, String message, bool isSubmitting, File? imageFile});
}

/// @nodoc
class _$UpdateCompanyFormStateCopyWithImpl<$Res,
        $Val extends UpdateCompanyFormState>
    implements $UpdateCompanyFormStateCopyWith<$Res> {
  _$UpdateCompanyFormStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? state = null,
    Object? message = null,
    Object? isSubmitting = null,
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
      isSubmitting: null == isSubmitting
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      imageFile: freezed == imageFile
          ? _value.imageFile
          : imageFile // ignore: cast_nullable_to_non_nullable
              as File?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_UpdateCompanyFormStateCopyWith<$Res>
    implements $UpdateCompanyFormStateCopyWith<$Res> {
  factory _$$_UpdateCompanyFormStateCopyWith(_$_UpdateCompanyFormState value,
          $Res Function(_$_UpdateCompanyFormState) then) =
      __$$_UpdateCompanyFormStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {RequestState state, String message, bool isSubmitting, File? imageFile});
}

/// @nodoc
class __$$_UpdateCompanyFormStateCopyWithImpl<$Res>
    extends _$UpdateCompanyFormStateCopyWithImpl<$Res,
        _$_UpdateCompanyFormState>
    implements _$$_UpdateCompanyFormStateCopyWith<$Res> {
  __$$_UpdateCompanyFormStateCopyWithImpl(_$_UpdateCompanyFormState _value,
      $Res Function(_$_UpdateCompanyFormState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? state = null,
    Object? message = null,
    Object? isSubmitting = null,
    Object? imageFile = freezed,
  }) {
    return _then(_$_UpdateCompanyFormState(
      state: null == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as RequestState,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      isSubmitting: null == isSubmitting
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      imageFile: freezed == imageFile
          ? _value.imageFile
          : imageFile // ignore: cast_nullable_to_non_nullable
              as File?,
    ));
  }
}

/// @nodoc

class _$_UpdateCompanyFormState implements _UpdateCompanyFormState {
  const _$_UpdateCompanyFormState(
      {required this.state,
      required this.message,
      required this.isSubmitting,
      required this.imageFile});

  @override
  final RequestState state;
  @override
  final String message;
  @override
  final bool isSubmitting;
  @override
  final File? imageFile;

  @override
  String toString() {
    return 'UpdateCompanyFormState(state: $state, message: $message, isSubmitting: $isSubmitting, imageFile: $imageFile)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UpdateCompanyFormState &&
            (identical(other.state, state) || other.state == state) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.isSubmitting, isSubmitting) ||
                other.isSubmitting == isSubmitting) &&
            (identical(other.imageFile, imageFile) ||
                other.imageFile == imageFile));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, state, message, isSubmitting, imageFile);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UpdateCompanyFormStateCopyWith<_$_UpdateCompanyFormState> get copyWith =>
      __$$_UpdateCompanyFormStateCopyWithImpl<_$_UpdateCompanyFormState>(
          this, _$identity);
}

abstract class _UpdateCompanyFormState implements UpdateCompanyFormState {
  const factory _UpdateCompanyFormState(
      {required final RequestState state,
      required final String message,
      required final bool isSubmitting,
      required final File? imageFile}) = _$_UpdateCompanyFormState;

  @override
  RequestState get state;
  @override
  String get message;
  @override
  bool get isSubmitting;
  @override
  File? get imageFile;
  @override
  @JsonKey(ignore: true)
  _$$_UpdateCompanyFormStateCopyWith<_$_UpdateCompanyFormState> get copyWith =>
      throw _privateConstructorUsedError;
}
