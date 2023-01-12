// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'repo_detail_notifier.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$RepoDetailState {
  bool get hasStarredStatusChange => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool hasStarredStatusChange) inital,
    required TResult Function(bool hasStarredStatusChange) loadInProgress,
    required TResult Function(
            Fresh<GithubRepoDetail?> repoDetail, bool hasStarredStatusChange)
        loadSuccess,
    required TResult Function(
            GithubFailure failure, bool hasStarredStatusChange)
        failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool hasStarredStatusChange)? inital,
    TResult? Function(bool hasStarredStatusChange)? loadInProgress,
    TResult? Function(
            Fresh<GithubRepoDetail?> repoDetail, bool hasStarredStatusChange)?
        loadSuccess,
    TResult? Function(GithubFailure failure, bool hasStarredStatusChange)?
        failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool hasStarredStatusChange)? inital,
    TResult Function(bool hasStarredStatusChange)? loadInProgress,
    TResult Function(
            Fresh<GithubRepoDetail?> repoDetail, bool hasStarredStatusChange)?
        loadSuccess,
    TResult Function(GithubFailure failure, bool hasStarredStatusChange)?
        failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) inital,
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_LoadSucess value) loadSuccess,
    required TResult Function(_Failure value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? inital,
    TResult? Function(_LoadInProgress value)? loadInProgress,
    TResult? Function(_LoadSucess value)? loadSuccess,
    TResult? Function(_Failure value)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? inital,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadSucess value)? loadSuccess,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RepoDetailStateCopyWith<RepoDetailState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RepoDetailStateCopyWith<$Res> {
  factory $RepoDetailStateCopyWith(
          RepoDetailState value, $Res Function(RepoDetailState) then) =
      _$RepoDetailStateCopyWithImpl<$Res, RepoDetailState>;
  @useResult
  $Res call({bool hasStarredStatusChange});
}

/// @nodoc
class _$RepoDetailStateCopyWithImpl<$Res, $Val extends RepoDetailState>
    implements $RepoDetailStateCopyWith<$Res> {
  _$RepoDetailStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? hasStarredStatusChange = null,
  }) {
    return _then(_value.copyWith(
      hasStarredStatusChange: null == hasStarredStatusChange
          ? _value.hasStarredStatusChange
          : hasStarredStatusChange // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res>
    implements $RepoDetailStateCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool hasStarredStatusChange});
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res>
    extends _$RepoDetailStateCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? hasStarredStatusChange = null,
  }) {
    return _then(_$_Initial(
      hasStarredStatusChange: null == hasStarredStatusChange
          ? _value.hasStarredStatusChange
          : hasStarredStatusChange // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_Initial extends _Initial {
  const _$_Initial({this.hasStarredStatusChange = false}) : super._();

  @override
  @JsonKey()
  final bool hasStarredStatusChange;

  @override
  String toString() {
    return 'RepoDetailState.inital(hasStarredStatusChange: $hasStarredStatusChange)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Initial &&
            (identical(other.hasStarredStatusChange, hasStarredStatusChange) ||
                other.hasStarredStatusChange == hasStarredStatusChange));
  }

  @override
  int get hashCode => Object.hash(runtimeType, hasStarredStatusChange);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      __$$_InitialCopyWithImpl<_$_Initial>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool hasStarredStatusChange) inital,
    required TResult Function(bool hasStarredStatusChange) loadInProgress,
    required TResult Function(
            Fresh<GithubRepoDetail?> repoDetail, bool hasStarredStatusChange)
        loadSuccess,
    required TResult Function(
            GithubFailure failure, bool hasStarredStatusChange)
        failure,
  }) {
    return inital(hasStarredStatusChange);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool hasStarredStatusChange)? inital,
    TResult? Function(bool hasStarredStatusChange)? loadInProgress,
    TResult? Function(
            Fresh<GithubRepoDetail?> repoDetail, bool hasStarredStatusChange)?
        loadSuccess,
    TResult? Function(GithubFailure failure, bool hasStarredStatusChange)?
        failure,
  }) {
    return inital?.call(hasStarredStatusChange);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool hasStarredStatusChange)? inital,
    TResult Function(bool hasStarredStatusChange)? loadInProgress,
    TResult Function(
            Fresh<GithubRepoDetail?> repoDetail, bool hasStarredStatusChange)?
        loadSuccess,
    TResult Function(GithubFailure failure, bool hasStarredStatusChange)?
        failure,
    required TResult orElse(),
  }) {
    if (inital != null) {
      return inital(hasStarredStatusChange);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) inital,
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_LoadSucess value) loadSuccess,
    required TResult Function(_Failure value) failure,
  }) {
    return inital(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? inital,
    TResult? Function(_LoadInProgress value)? loadInProgress,
    TResult? Function(_LoadSucess value)? loadSuccess,
    TResult? Function(_Failure value)? failure,
  }) {
    return inital?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? inital,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadSucess value)? loadSuccess,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (inital != null) {
      return inital(this);
    }
    return orElse();
  }
}

abstract class _Initial extends RepoDetailState {
  const factory _Initial({final bool hasStarredStatusChange}) = _$_Initial;
  const _Initial._() : super._();

  @override
  bool get hasStarredStatusChange;
  @override
  @JsonKey(ignore: true)
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_LoadInProgressCopyWith<$Res>
    implements $RepoDetailStateCopyWith<$Res> {
  factory _$$_LoadInProgressCopyWith(
          _$_LoadInProgress value, $Res Function(_$_LoadInProgress) then) =
      __$$_LoadInProgressCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool hasStarredStatusChange});
}

/// @nodoc
class __$$_LoadInProgressCopyWithImpl<$Res>
    extends _$RepoDetailStateCopyWithImpl<$Res, _$_LoadInProgress>
    implements _$$_LoadInProgressCopyWith<$Res> {
  __$$_LoadInProgressCopyWithImpl(
      _$_LoadInProgress _value, $Res Function(_$_LoadInProgress) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? hasStarredStatusChange = null,
  }) {
    return _then(_$_LoadInProgress(
      hasStarredStatusChange: null == hasStarredStatusChange
          ? _value.hasStarredStatusChange
          : hasStarredStatusChange // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_LoadInProgress extends _LoadInProgress {
  const _$_LoadInProgress({this.hasStarredStatusChange = false}) : super._();

  @override
  @JsonKey()
  final bool hasStarredStatusChange;

  @override
  String toString() {
    return 'RepoDetailState.loadInProgress(hasStarredStatusChange: $hasStarredStatusChange)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoadInProgress &&
            (identical(other.hasStarredStatusChange, hasStarredStatusChange) ||
                other.hasStarredStatusChange == hasStarredStatusChange));
  }

  @override
  int get hashCode => Object.hash(runtimeType, hasStarredStatusChange);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LoadInProgressCopyWith<_$_LoadInProgress> get copyWith =>
      __$$_LoadInProgressCopyWithImpl<_$_LoadInProgress>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool hasStarredStatusChange) inital,
    required TResult Function(bool hasStarredStatusChange) loadInProgress,
    required TResult Function(
            Fresh<GithubRepoDetail?> repoDetail, bool hasStarredStatusChange)
        loadSuccess,
    required TResult Function(
            GithubFailure failure, bool hasStarredStatusChange)
        failure,
  }) {
    return loadInProgress(hasStarredStatusChange);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool hasStarredStatusChange)? inital,
    TResult? Function(bool hasStarredStatusChange)? loadInProgress,
    TResult? Function(
            Fresh<GithubRepoDetail?> repoDetail, bool hasStarredStatusChange)?
        loadSuccess,
    TResult? Function(GithubFailure failure, bool hasStarredStatusChange)?
        failure,
  }) {
    return loadInProgress?.call(hasStarredStatusChange);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool hasStarredStatusChange)? inital,
    TResult Function(bool hasStarredStatusChange)? loadInProgress,
    TResult Function(
            Fresh<GithubRepoDetail?> repoDetail, bool hasStarredStatusChange)?
        loadSuccess,
    TResult Function(GithubFailure failure, bool hasStarredStatusChange)?
        failure,
    required TResult orElse(),
  }) {
    if (loadInProgress != null) {
      return loadInProgress(hasStarredStatusChange);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) inital,
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_LoadSucess value) loadSuccess,
    required TResult Function(_Failure value) failure,
  }) {
    return loadInProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? inital,
    TResult? Function(_LoadInProgress value)? loadInProgress,
    TResult? Function(_LoadSucess value)? loadSuccess,
    TResult? Function(_Failure value)? failure,
  }) {
    return loadInProgress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? inital,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadSucess value)? loadSuccess,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (loadInProgress != null) {
      return loadInProgress(this);
    }
    return orElse();
  }
}

abstract class _LoadInProgress extends RepoDetailState {
  const factory _LoadInProgress({final bool hasStarredStatusChange}) =
      _$_LoadInProgress;
  const _LoadInProgress._() : super._();

  @override
  bool get hasStarredStatusChange;
  @override
  @JsonKey(ignore: true)
  _$$_LoadInProgressCopyWith<_$_LoadInProgress> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_LoadSucessCopyWith<$Res>
    implements $RepoDetailStateCopyWith<$Res> {
  factory _$$_LoadSucessCopyWith(
          _$_LoadSucess value, $Res Function(_$_LoadSucess) then) =
      __$$_LoadSucessCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Fresh<GithubRepoDetail?> repoDetail, bool hasStarredStatusChange});

  $FreshCopyWith<GithubRepoDetail?, $Res> get repoDetail;
}

/// @nodoc
class __$$_LoadSucessCopyWithImpl<$Res>
    extends _$RepoDetailStateCopyWithImpl<$Res, _$_LoadSucess>
    implements _$$_LoadSucessCopyWith<$Res> {
  __$$_LoadSucessCopyWithImpl(
      _$_LoadSucess _value, $Res Function(_$_LoadSucess) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? repoDetail = null,
    Object? hasStarredStatusChange = null,
  }) {
    return _then(_$_LoadSucess(
      null == repoDetail
          ? _value.repoDetail
          : repoDetail // ignore: cast_nullable_to_non_nullable
              as Fresh<GithubRepoDetail?>,
      hasStarredStatusChange: null == hasStarredStatusChange
          ? _value.hasStarredStatusChange
          : hasStarredStatusChange // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $FreshCopyWith<GithubRepoDetail?, $Res> get repoDetail {
    return $FreshCopyWith<GithubRepoDetail?, $Res>(_value.repoDetail, (value) {
      return _then(_value.copyWith(repoDetail: value));
    });
  }
}

/// @nodoc

class _$_LoadSucess extends _LoadSucess {
  const _$_LoadSucess(this.repoDetail, {this.hasStarredStatusChange = false})
      : super._();

  @override
  final Fresh<GithubRepoDetail?> repoDetail;
  @override
  @JsonKey()
  final bool hasStarredStatusChange;

  @override
  String toString() {
    return 'RepoDetailState.loadSuccess(repoDetail: $repoDetail, hasStarredStatusChange: $hasStarredStatusChange)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoadSucess &&
            (identical(other.repoDetail, repoDetail) ||
                other.repoDetail == repoDetail) &&
            (identical(other.hasStarredStatusChange, hasStarredStatusChange) ||
                other.hasStarredStatusChange == hasStarredStatusChange));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, repoDetail, hasStarredStatusChange);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LoadSucessCopyWith<_$_LoadSucess> get copyWith =>
      __$$_LoadSucessCopyWithImpl<_$_LoadSucess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool hasStarredStatusChange) inital,
    required TResult Function(bool hasStarredStatusChange) loadInProgress,
    required TResult Function(
            Fresh<GithubRepoDetail?> repoDetail, bool hasStarredStatusChange)
        loadSuccess,
    required TResult Function(
            GithubFailure failure, bool hasStarredStatusChange)
        failure,
  }) {
    return loadSuccess(repoDetail, hasStarredStatusChange);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool hasStarredStatusChange)? inital,
    TResult? Function(bool hasStarredStatusChange)? loadInProgress,
    TResult? Function(
            Fresh<GithubRepoDetail?> repoDetail, bool hasStarredStatusChange)?
        loadSuccess,
    TResult? Function(GithubFailure failure, bool hasStarredStatusChange)?
        failure,
  }) {
    return loadSuccess?.call(repoDetail, hasStarredStatusChange);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool hasStarredStatusChange)? inital,
    TResult Function(bool hasStarredStatusChange)? loadInProgress,
    TResult Function(
            Fresh<GithubRepoDetail?> repoDetail, bool hasStarredStatusChange)?
        loadSuccess,
    TResult Function(GithubFailure failure, bool hasStarredStatusChange)?
        failure,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(repoDetail, hasStarredStatusChange);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) inital,
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_LoadSucess value) loadSuccess,
    required TResult Function(_Failure value) failure,
  }) {
    return loadSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? inital,
    TResult? Function(_LoadInProgress value)? loadInProgress,
    TResult? Function(_LoadSucess value)? loadSuccess,
    TResult? Function(_Failure value)? failure,
  }) {
    return loadSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? inital,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadSucess value)? loadSuccess,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(this);
    }
    return orElse();
  }
}

abstract class _LoadSucess extends RepoDetailState {
  const factory _LoadSucess(final Fresh<GithubRepoDetail?> repoDetail,
      {final bool hasStarredStatusChange}) = _$_LoadSucess;
  const _LoadSucess._() : super._();

  Fresh<GithubRepoDetail?> get repoDetail;
  @override
  bool get hasStarredStatusChange;
  @override
  @JsonKey(ignore: true)
  _$$_LoadSucessCopyWith<_$_LoadSucess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_FailureCopyWith<$Res>
    implements $RepoDetailStateCopyWith<$Res> {
  factory _$$_FailureCopyWith(
          _$_Failure value, $Res Function(_$_Failure) then) =
      __$$_FailureCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({GithubFailure failure, bool hasStarredStatusChange});

  $GithubFailureCopyWith<$Res> get failure;
}

/// @nodoc
class __$$_FailureCopyWithImpl<$Res>
    extends _$RepoDetailStateCopyWithImpl<$Res, _$_Failure>
    implements _$$_FailureCopyWith<$Res> {
  __$$_FailureCopyWithImpl(_$_Failure _value, $Res Function(_$_Failure) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failure = null,
    Object? hasStarredStatusChange = null,
  }) {
    return _then(_$_Failure(
      null == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as GithubFailure,
      hasStarredStatusChange: null == hasStarredStatusChange
          ? _value.hasStarredStatusChange
          : hasStarredStatusChange // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $GithubFailureCopyWith<$Res> get failure {
    return $GithubFailureCopyWith<$Res>(_value.failure, (value) {
      return _then(_value.copyWith(failure: value));
    });
  }
}

/// @nodoc

class _$_Failure extends _Failure {
  const _$_Failure(this.failure, {this.hasStarredStatusChange = false})
      : super._();

  @override
  final GithubFailure failure;
  @override
  @JsonKey()
  final bool hasStarredStatusChange;

  @override
  String toString() {
    return 'RepoDetailState.failure(failure: $failure, hasStarredStatusChange: $hasStarredStatusChange)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Failure &&
            (identical(other.failure, failure) || other.failure == failure) &&
            (identical(other.hasStarredStatusChange, hasStarredStatusChange) ||
                other.hasStarredStatusChange == hasStarredStatusChange));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failure, hasStarredStatusChange);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FailureCopyWith<_$_Failure> get copyWith =>
      __$$_FailureCopyWithImpl<_$_Failure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool hasStarredStatusChange) inital,
    required TResult Function(bool hasStarredStatusChange) loadInProgress,
    required TResult Function(
            Fresh<GithubRepoDetail?> repoDetail, bool hasStarredStatusChange)
        loadSuccess,
    required TResult Function(
            GithubFailure failure, bool hasStarredStatusChange)
        failure,
  }) {
    return failure(this.failure, hasStarredStatusChange);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool hasStarredStatusChange)? inital,
    TResult? Function(bool hasStarredStatusChange)? loadInProgress,
    TResult? Function(
            Fresh<GithubRepoDetail?> repoDetail, bool hasStarredStatusChange)?
        loadSuccess,
    TResult? Function(GithubFailure failure, bool hasStarredStatusChange)?
        failure,
  }) {
    return failure?.call(this.failure, hasStarredStatusChange);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool hasStarredStatusChange)? inital,
    TResult Function(bool hasStarredStatusChange)? loadInProgress,
    TResult Function(
            Fresh<GithubRepoDetail?> repoDetail, bool hasStarredStatusChange)?
        loadSuccess,
    TResult Function(GithubFailure failure, bool hasStarredStatusChange)?
        failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this.failure, hasStarredStatusChange);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) inital,
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_LoadSucess value) loadSuccess,
    required TResult Function(_Failure value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? inital,
    TResult? Function(_LoadInProgress value)? loadInProgress,
    TResult? Function(_LoadSucess value)? loadSuccess,
    TResult? Function(_Failure value)? failure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? inital,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadSucess value)? loadSuccess,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class _Failure extends RepoDetailState {
  const factory _Failure(final GithubFailure failure,
      {final bool hasStarredStatusChange}) = _$_Failure;
  const _Failure._() : super._();

  GithubFailure get failure;
  @override
  bool get hasStarredStatusChange;
  @override
  @JsonKey(ignore: true)
  _$$_FailureCopyWith<_$_Failure> get copyWith =>
      throw _privateConstructorUsedError;
}
