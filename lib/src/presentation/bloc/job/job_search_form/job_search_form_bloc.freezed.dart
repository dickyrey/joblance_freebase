// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'job_search_form_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$JobSearchFormEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchJobs,
    required TResult Function(String query) searchChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchJobs,
    TResult? Function(String query)? searchChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchJobs,
    TResult Function(String query)? searchChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchJobs value) fetchJobs,
    required TResult Function(_SearchChanged value) searchChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchJobs value)? fetchJobs,
    TResult? Function(_SearchChanged value)? searchChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchJobs value)? fetchJobs,
    TResult Function(_SearchChanged value)? searchChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $JobSearchFormEventCopyWith<$Res> {
  factory $JobSearchFormEventCopyWith(
          JobSearchFormEvent value, $Res Function(JobSearchFormEvent) then) =
      _$JobSearchFormEventCopyWithImpl<$Res, JobSearchFormEvent>;
}

/// @nodoc
class _$JobSearchFormEventCopyWithImpl<$Res, $Val extends JobSearchFormEvent>
    implements $JobSearchFormEventCopyWith<$Res> {
  _$JobSearchFormEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_FetchJobsCopyWith<$Res> {
  factory _$$_FetchJobsCopyWith(
          _$_FetchJobs value, $Res Function(_$_FetchJobs) then) =
      __$$_FetchJobsCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_FetchJobsCopyWithImpl<$Res>
    extends _$JobSearchFormEventCopyWithImpl<$Res, _$_FetchJobs>
    implements _$$_FetchJobsCopyWith<$Res> {
  __$$_FetchJobsCopyWithImpl(
      _$_FetchJobs _value, $Res Function(_$_FetchJobs) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_FetchJobs implements _FetchJobs {
  const _$_FetchJobs();

  @override
  String toString() {
    return 'JobSearchFormEvent.fetchJobs()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_FetchJobs);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchJobs,
    required TResult Function(String query) searchChanged,
  }) {
    return fetchJobs();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchJobs,
    TResult? Function(String query)? searchChanged,
  }) {
    return fetchJobs?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchJobs,
    TResult Function(String query)? searchChanged,
    required TResult orElse(),
  }) {
    if (fetchJobs != null) {
      return fetchJobs();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchJobs value) fetchJobs,
    required TResult Function(_SearchChanged value) searchChanged,
  }) {
    return fetchJobs(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchJobs value)? fetchJobs,
    TResult? Function(_SearchChanged value)? searchChanged,
  }) {
    return fetchJobs?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchJobs value)? fetchJobs,
    TResult Function(_SearchChanged value)? searchChanged,
    required TResult orElse(),
  }) {
    if (fetchJobs != null) {
      return fetchJobs(this);
    }
    return orElse();
  }
}

abstract class _FetchJobs implements JobSearchFormEvent {
  const factory _FetchJobs() = _$_FetchJobs;
}

/// @nodoc
abstract class _$$_SearchChangedCopyWith<$Res> {
  factory _$$_SearchChangedCopyWith(
          _$_SearchChanged value, $Res Function(_$_SearchChanged) then) =
      __$$_SearchChangedCopyWithImpl<$Res>;
  @useResult
  $Res call({String query});
}

/// @nodoc
class __$$_SearchChangedCopyWithImpl<$Res>
    extends _$JobSearchFormEventCopyWithImpl<$Res, _$_SearchChanged>
    implements _$$_SearchChangedCopyWith<$Res> {
  __$$_SearchChangedCopyWithImpl(
      _$_SearchChanged _value, $Res Function(_$_SearchChanged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? query = null,
  }) {
    return _then(_$_SearchChanged(
      null == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_SearchChanged implements _SearchChanged {
  const _$_SearchChanged(this.query);

  @override
  final String query;

  @override
  String toString() {
    return 'JobSearchFormEvent.searchChanged(query: $query)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SearchChanged &&
            (identical(other.query, query) || other.query == query));
  }

  @override
  int get hashCode => Object.hash(runtimeType, query);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SearchChangedCopyWith<_$_SearchChanged> get copyWith =>
      __$$_SearchChangedCopyWithImpl<_$_SearchChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchJobs,
    required TResult Function(String query) searchChanged,
  }) {
    return searchChanged(query);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchJobs,
    TResult? Function(String query)? searchChanged,
  }) {
    return searchChanged?.call(query);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchJobs,
    TResult Function(String query)? searchChanged,
    required TResult orElse(),
  }) {
    if (searchChanged != null) {
      return searchChanged(query);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchJobs value) fetchJobs,
    required TResult Function(_SearchChanged value) searchChanged,
  }) {
    return searchChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchJobs value)? fetchJobs,
    TResult? Function(_SearchChanged value)? searchChanged,
  }) {
    return searchChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchJobs value)? fetchJobs,
    TResult Function(_SearchChanged value)? searchChanged,
    required TResult orElse(),
  }) {
    if (searchChanged != null) {
      return searchChanged(this);
    }
    return orElse();
  }
}

abstract class _SearchChanged implements JobSearchFormEvent {
  const factory _SearchChanged(final String query) = _$_SearchChanged;

  String get query;
  @JsonKey(ignore: true)
  _$$_SearchChangedCopyWith<_$_SearchChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$JobSearchFormState {
  RequestState get state => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  List<Job> get jobs => throw _privateConstructorUsedError;
  List<Job> get searchResult => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $JobSearchFormStateCopyWith<JobSearchFormState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $JobSearchFormStateCopyWith<$Res> {
  factory $JobSearchFormStateCopyWith(
          JobSearchFormState value, $Res Function(JobSearchFormState) then) =
      _$JobSearchFormStateCopyWithImpl<$Res, JobSearchFormState>;
  @useResult
  $Res call(
      {RequestState state,
      String message,
      List<Job> jobs,
      List<Job> searchResult});
}

/// @nodoc
class _$JobSearchFormStateCopyWithImpl<$Res, $Val extends JobSearchFormState>
    implements $JobSearchFormStateCopyWith<$Res> {
  _$JobSearchFormStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? state = null,
    Object? message = null,
    Object? jobs = null,
    Object? searchResult = null,
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
      jobs: null == jobs
          ? _value.jobs
          : jobs // ignore: cast_nullable_to_non_nullable
              as List<Job>,
      searchResult: null == searchResult
          ? _value.searchResult
          : searchResult // ignore: cast_nullable_to_non_nullable
              as List<Job>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_JobSearchFormStateCopyWith<$Res>
    implements $JobSearchFormStateCopyWith<$Res> {
  factory _$$_JobSearchFormStateCopyWith(_$_JobSearchFormState value,
          $Res Function(_$_JobSearchFormState) then) =
      __$$_JobSearchFormStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {RequestState state,
      String message,
      List<Job> jobs,
      List<Job> searchResult});
}

/// @nodoc
class __$$_JobSearchFormStateCopyWithImpl<$Res>
    extends _$JobSearchFormStateCopyWithImpl<$Res, _$_JobSearchFormState>
    implements _$$_JobSearchFormStateCopyWith<$Res> {
  __$$_JobSearchFormStateCopyWithImpl(
      _$_JobSearchFormState _value, $Res Function(_$_JobSearchFormState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? state = null,
    Object? message = null,
    Object? jobs = null,
    Object? searchResult = null,
  }) {
    return _then(_$_JobSearchFormState(
      state: null == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as RequestState,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      jobs: null == jobs
          ? _value._jobs
          : jobs // ignore: cast_nullable_to_non_nullable
              as List<Job>,
      searchResult: null == searchResult
          ? _value._searchResult
          : searchResult // ignore: cast_nullable_to_non_nullable
              as List<Job>,
    ));
  }
}

/// @nodoc

class _$_JobSearchFormState implements _JobSearchFormState {
  const _$_JobSearchFormState(
      {required this.state,
      required this.message,
      required final List<Job> jobs,
      required final List<Job> searchResult})
      : _jobs = jobs,
        _searchResult = searchResult;

  @override
  final RequestState state;
  @override
  final String message;
  final List<Job> _jobs;
  @override
  List<Job> get jobs {
    if (_jobs is EqualUnmodifiableListView) return _jobs;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_jobs);
  }

  final List<Job> _searchResult;
  @override
  List<Job> get searchResult {
    if (_searchResult is EqualUnmodifiableListView) return _searchResult;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_searchResult);
  }

  @override
  String toString() {
    return 'JobSearchFormState(state: $state, message: $message, jobs: $jobs, searchResult: $searchResult)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_JobSearchFormState &&
            (identical(other.state, state) || other.state == state) &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality().equals(other._jobs, _jobs) &&
            const DeepCollectionEquality()
                .equals(other._searchResult, _searchResult));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      state,
      message,
      const DeepCollectionEquality().hash(_jobs),
      const DeepCollectionEquality().hash(_searchResult));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_JobSearchFormStateCopyWith<_$_JobSearchFormState> get copyWith =>
      __$$_JobSearchFormStateCopyWithImpl<_$_JobSearchFormState>(
          this, _$identity);
}

abstract class _JobSearchFormState implements JobSearchFormState {
  const factory _JobSearchFormState(
      {required final RequestState state,
      required final String message,
      required final List<Job> jobs,
      required final List<Job> searchResult}) = _$_JobSearchFormState;

  @override
  RequestState get state;
  @override
  String get message;
  @override
  List<Job> get jobs;
  @override
  List<Job> get searchResult;
  @override
  @JsonKey(ignore: true)
  _$$_JobSearchFormStateCopyWith<_$_JobSearchFormState> get copyWith =>
      throw _privateConstructorUsedError;
}
