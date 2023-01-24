// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'company_watcher_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CompanyWatcherEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchCompany,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchCompany,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchCompany,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchCompany value) fetchCompany,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchCompany value)? fetchCompany,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchCompany value)? fetchCompany,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CompanyWatcherEventCopyWith<$Res> {
  factory $CompanyWatcherEventCopyWith(
          CompanyWatcherEvent value, $Res Function(CompanyWatcherEvent) then) =
      _$CompanyWatcherEventCopyWithImpl<$Res, CompanyWatcherEvent>;
}

/// @nodoc
class _$CompanyWatcherEventCopyWithImpl<$Res, $Val extends CompanyWatcherEvent>
    implements $CompanyWatcherEventCopyWith<$Res> {
  _$CompanyWatcherEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_FetchCompanyCopyWith<$Res> {
  factory _$$_FetchCompanyCopyWith(
          _$_FetchCompany value, $Res Function(_$_FetchCompany) then) =
      __$$_FetchCompanyCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_FetchCompanyCopyWithImpl<$Res>
    extends _$CompanyWatcherEventCopyWithImpl<$Res, _$_FetchCompany>
    implements _$$_FetchCompanyCopyWith<$Res> {
  __$$_FetchCompanyCopyWithImpl(
      _$_FetchCompany _value, $Res Function(_$_FetchCompany) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_FetchCompany implements _FetchCompany {
  const _$_FetchCompany();

  @override
  String toString() {
    return 'CompanyWatcherEvent.fetchCompany()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_FetchCompany);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchCompany,
  }) {
    return fetchCompany();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchCompany,
  }) {
    return fetchCompany?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchCompany,
    required TResult orElse(),
  }) {
    if (fetchCompany != null) {
      return fetchCompany();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchCompany value) fetchCompany,
  }) {
    return fetchCompany(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchCompany value)? fetchCompany,
  }) {
    return fetchCompany?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchCompany value)? fetchCompany,
    required TResult orElse(),
  }) {
    if (fetchCompany != null) {
      return fetchCompany(this);
    }
    return orElse();
  }
}

abstract class _FetchCompany implements CompanyWatcherEvent {
  const factory _FetchCompany() = _$_FetchCompany;
}

/// @nodoc
mixin _$CompanyWatcherState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(String msg) loadInFailure,
    required TResult Function(Company company) loadInSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadInProgress,
    TResult? Function(String msg)? loadInFailure,
    TResult? Function(Company company)? loadInSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(String msg)? loadInFailure,
    TResult Function(Company company)? loadInSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_LoadInFailure value) loadInFailure,
    required TResult Function(_LoadInSuccess value) loadInSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoadInProgress value)? loadInProgress,
    TResult? Function(_LoadInFailure value)? loadInFailure,
    TResult? Function(_LoadInSuccess value)? loadInSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadInFailure value)? loadInFailure,
    TResult Function(_LoadInSuccess value)? loadInSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CompanyWatcherStateCopyWith<$Res> {
  factory $CompanyWatcherStateCopyWith(
          CompanyWatcherState value, $Res Function(CompanyWatcherState) then) =
      _$CompanyWatcherStateCopyWithImpl<$Res, CompanyWatcherState>;
}

/// @nodoc
class _$CompanyWatcherStateCopyWithImpl<$Res, $Val extends CompanyWatcherState>
    implements $CompanyWatcherStateCopyWith<$Res> {
  _$CompanyWatcherStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res>
    extends _$CompanyWatcherStateCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'CompanyWatcherState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(String msg) loadInFailure,
    required TResult Function(Company company) loadInSuccess,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadInProgress,
    TResult? Function(String msg)? loadInFailure,
    TResult? Function(Company company)? loadInSuccess,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(String msg)? loadInFailure,
    TResult Function(Company company)? loadInSuccess,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_LoadInFailure value) loadInFailure,
    required TResult Function(_LoadInSuccess value) loadInSuccess,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoadInProgress value)? loadInProgress,
    TResult? Function(_LoadInFailure value)? loadInFailure,
    TResult? Function(_LoadInSuccess value)? loadInSuccess,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadInFailure value)? loadInFailure,
    TResult Function(_LoadInSuccess value)? loadInSuccess,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements CompanyWatcherState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$$_LoadInProgressCopyWith<$Res> {
  factory _$$_LoadInProgressCopyWith(
          _$_LoadInProgress value, $Res Function(_$_LoadInProgress) then) =
      __$$_LoadInProgressCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_LoadInProgressCopyWithImpl<$Res>
    extends _$CompanyWatcherStateCopyWithImpl<$Res, _$_LoadInProgress>
    implements _$$_LoadInProgressCopyWith<$Res> {
  __$$_LoadInProgressCopyWithImpl(
      _$_LoadInProgress _value, $Res Function(_$_LoadInProgress) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_LoadInProgress implements _LoadInProgress {
  const _$_LoadInProgress();

  @override
  String toString() {
    return 'CompanyWatcherState.loadInProgress()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_LoadInProgress);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(String msg) loadInFailure,
    required TResult Function(Company company) loadInSuccess,
  }) {
    return loadInProgress();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadInProgress,
    TResult? Function(String msg)? loadInFailure,
    TResult? Function(Company company)? loadInSuccess,
  }) {
    return loadInProgress?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(String msg)? loadInFailure,
    TResult Function(Company company)? loadInSuccess,
    required TResult orElse(),
  }) {
    if (loadInProgress != null) {
      return loadInProgress();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_LoadInFailure value) loadInFailure,
    required TResult Function(_LoadInSuccess value) loadInSuccess,
  }) {
    return loadInProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoadInProgress value)? loadInProgress,
    TResult? Function(_LoadInFailure value)? loadInFailure,
    TResult? Function(_LoadInSuccess value)? loadInSuccess,
  }) {
    return loadInProgress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadInFailure value)? loadInFailure,
    TResult Function(_LoadInSuccess value)? loadInSuccess,
    required TResult orElse(),
  }) {
    if (loadInProgress != null) {
      return loadInProgress(this);
    }
    return orElse();
  }
}

abstract class _LoadInProgress implements CompanyWatcherState {
  const factory _LoadInProgress() = _$_LoadInProgress;
}

/// @nodoc
abstract class _$$_LoadInFailureCopyWith<$Res> {
  factory _$$_LoadInFailureCopyWith(
          _$_LoadInFailure value, $Res Function(_$_LoadInFailure) then) =
      __$$_LoadInFailureCopyWithImpl<$Res>;
  @useResult
  $Res call({String msg});
}

/// @nodoc
class __$$_LoadInFailureCopyWithImpl<$Res>
    extends _$CompanyWatcherStateCopyWithImpl<$Res, _$_LoadInFailure>
    implements _$$_LoadInFailureCopyWith<$Res> {
  __$$_LoadInFailureCopyWithImpl(
      _$_LoadInFailure _value, $Res Function(_$_LoadInFailure) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? msg = null,
  }) {
    return _then(_$_LoadInFailure(
      null == msg
          ? _value.msg
          : msg // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_LoadInFailure implements _LoadInFailure {
  const _$_LoadInFailure(this.msg);

  @override
  final String msg;

  @override
  String toString() {
    return 'CompanyWatcherState.loadInFailure(msg: $msg)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoadInFailure &&
            (identical(other.msg, msg) || other.msg == msg));
  }

  @override
  int get hashCode => Object.hash(runtimeType, msg);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LoadInFailureCopyWith<_$_LoadInFailure> get copyWith =>
      __$$_LoadInFailureCopyWithImpl<_$_LoadInFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(String msg) loadInFailure,
    required TResult Function(Company company) loadInSuccess,
  }) {
    return loadInFailure(msg);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadInProgress,
    TResult? Function(String msg)? loadInFailure,
    TResult? Function(Company company)? loadInSuccess,
  }) {
    return loadInFailure?.call(msg);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(String msg)? loadInFailure,
    TResult Function(Company company)? loadInSuccess,
    required TResult orElse(),
  }) {
    if (loadInFailure != null) {
      return loadInFailure(msg);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_LoadInFailure value) loadInFailure,
    required TResult Function(_LoadInSuccess value) loadInSuccess,
  }) {
    return loadInFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoadInProgress value)? loadInProgress,
    TResult? Function(_LoadInFailure value)? loadInFailure,
    TResult? Function(_LoadInSuccess value)? loadInSuccess,
  }) {
    return loadInFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadInFailure value)? loadInFailure,
    TResult Function(_LoadInSuccess value)? loadInSuccess,
    required TResult orElse(),
  }) {
    if (loadInFailure != null) {
      return loadInFailure(this);
    }
    return orElse();
  }
}

abstract class _LoadInFailure implements CompanyWatcherState {
  const factory _LoadInFailure(final String msg) = _$_LoadInFailure;

  String get msg;
  @JsonKey(ignore: true)
  _$$_LoadInFailureCopyWith<_$_LoadInFailure> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_LoadInSuccessCopyWith<$Res> {
  factory _$$_LoadInSuccessCopyWith(
          _$_LoadInSuccess value, $Res Function(_$_LoadInSuccess) then) =
      __$$_LoadInSuccessCopyWithImpl<$Res>;
  @useResult
  $Res call({Company company});
}

/// @nodoc
class __$$_LoadInSuccessCopyWithImpl<$Res>
    extends _$CompanyWatcherStateCopyWithImpl<$Res, _$_LoadInSuccess>
    implements _$$_LoadInSuccessCopyWith<$Res> {
  __$$_LoadInSuccessCopyWithImpl(
      _$_LoadInSuccess _value, $Res Function(_$_LoadInSuccess) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? company = null,
  }) {
    return _then(_$_LoadInSuccess(
      null == company
          ? _value.company
          : company // ignore: cast_nullable_to_non_nullable
              as Company,
    ));
  }
}

/// @nodoc

class _$_LoadInSuccess implements _LoadInSuccess {
  const _$_LoadInSuccess(this.company);

  @override
  final Company company;

  @override
  String toString() {
    return 'CompanyWatcherState.loadInSuccess(company: $company)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoadInSuccess &&
            (identical(other.company, company) || other.company == company));
  }

  @override
  int get hashCode => Object.hash(runtimeType, company);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LoadInSuccessCopyWith<_$_LoadInSuccess> get copyWith =>
      __$$_LoadInSuccessCopyWithImpl<_$_LoadInSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(String msg) loadInFailure,
    required TResult Function(Company company) loadInSuccess,
  }) {
    return loadInSuccess(company);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadInProgress,
    TResult? Function(String msg)? loadInFailure,
    TResult? Function(Company company)? loadInSuccess,
  }) {
    return loadInSuccess?.call(company);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(String msg)? loadInFailure,
    TResult Function(Company company)? loadInSuccess,
    required TResult orElse(),
  }) {
    if (loadInSuccess != null) {
      return loadInSuccess(company);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_LoadInFailure value) loadInFailure,
    required TResult Function(_LoadInSuccess value) loadInSuccess,
  }) {
    return loadInSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoadInProgress value)? loadInProgress,
    TResult? Function(_LoadInFailure value)? loadInFailure,
    TResult? Function(_LoadInSuccess value)? loadInSuccess,
  }) {
    return loadInSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadInFailure value)? loadInFailure,
    TResult Function(_LoadInSuccess value)? loadInSuccess,
    required TResult orElse(),
  }) {
    if (loadInSuccess != null) {
      return loadInSuccess(this);
    }
    return orElse();
  }
}

abstract class _LoadInSuccess implements CompanyWatcherState {
  const factory _LoadInSuccess(final Company company) = _$_LoadInSuccess;

  Company get company;
  @JsonKey(ignore: true)
  _$$_LoadInSuccessCopyWith<_$_LoadInSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}
