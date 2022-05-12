// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'fetch_issue_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$FetchIssueState {
  bool get loading => throw _privateConstructorUsedError;
  FetchResponseError get error => throw _privateConstructorUsedError;
  bool get canShowPreviousPage => throw _privateConstructorUsedError;
  bool get canShowNextPage => throw _privateConstructorUsedError;
  int get currentPage => throw _privateConstructorUsedError;
  int get perPage => throw _privateConstructorUsedError;
  List<Issue> get issues => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FetchIssueStateCopyWith<FetchIssueState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FetchIssueStateCopyWith<$Res> {
  factory $FetchIssueStateCopyWith(
          FetchIssueState value, $Res Function(FetchIssueState) then) =
      _$FetchIssueStateCopyWithImpl<$Res>;
  $Res call(
      {bool loading,
      FetchResponseError error,
      bool canShowPreviousPage,
      bool canShowNextPage,
      int currentPage,
      int perPage,
      List<Issue> issues});
}

/// @nodoc
class _$FetchIssueStateCopyWithImpl<$Res>
    implements $FetchIssueStateCopyWith<$Res> {
  _$FetchIssueStateCopyWithImpl(this._value, this._then);

  final FetchIssueState _value;
  // ignore: unused_field
  final $Res Function(FetchIssueState) _then;

  @override
  $Res call({
    Object? loading = freezed,
    Object? error = freezed,
    Object? canShowPreviousPage = freezed,
    Object? canShowNextPage = freezed,
    Object? currentPage = freezed,
    Object? perPage = freezed,
    Object? issues = freezed,
  }) {
    return _then(_value.copyWith(
      loading: loading == freezed
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as FetchResponseError,
      canShowPreviousPage: canShowPreviousPage == freezed
          ? _value.canShowPreviousPage
          : canShowPreviousPage // ignore: cast_nullable_to_non_nullable
              as bool,
      canShowNextPage: canShowNextPage == freezed
          ? _value.canShowNextPage
          : canShowNextPage // ignore: cast_nullable_to_non_nullable
              as bool,
      currentPage: currentPage == freezed
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int,
      perPage: perPage == freezed
          ? _value.perPage
          : perPage // ignore: cast_nullable_to_non_nullable
              as int,
      issues: issues == freezed
          ? _value.issues
          : issues // ignore: cast_nullable_to_non_nullable
              as List<Issue>,
    ));
  }
}

/// @nodoc
abstract class _$$_FetchIssueStateCopyWith<$Res>
    implements $FetchIssueStateCopyWith<$Res> {
  factory _$$_FetchIssueStateCopyWith(
          _$_FetchIssueState value, $Res Function(_$_FetchIssueState) then) =
      __$$_FetchIssueStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool loading,
      FetchResponseError error,
      bool canShowPreviousPage,
      bool canShowNextPage,
      int currentPage,
      int perPage,
      List<Issue> issues});
}

/// @nodoc
class __$$_FetchIssueStateCopyWithImpl<$Res>
    extends _$FetchIssueStateCopyWithImpl<$Res>
    implements _$$_FetchIssueStateCopyWith<$Res> {
  __$$_FetchIssueStateCopyWithImpl(
      _$_FetchIssueState _value, $Res Function(_$_FetchIssueState) _then)
      : super(_value, (v) => _then(v as _$_FetchIssueState));

  @override
  _$_FetchIssueState get _value => super._value as _$_FetchIssueState;

  @override
  $Res call({
    Object? loading = freezed,
    Object? error = freezed,
    Object? canShowPreviousPage = freezed,
    Object? canShowNextPage = freezed,
    Object? currentPage = freezed,
    Object? perPage = freezed,
    Object? issues = freezed,
  }) {
    return _then(_$_FetchIssueState(
      loading: loading == freezed
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as FetchResponseError,
      canShowPreviousPage: canShowPreviousPage == freezed
          ? _value.canShowPreviousPage
          : canShowPreviousPage // ignore: cast_nullable_to_non_nullable
              as bool,
      canShowNextPage: canShowNextPage == freezed
          ? _value.canShowNextPage
          : canShowNextPage // ignore: cast_nullable_to_non_nullable
              as bool,
      currentPage: currentPage == freezed
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int,
      perPage: perPage == freezed
          ? _value.perPage
          : perPage // ignore: cast_nullable_to_non_nullable
              as int,
      issues: issues == freezed
          ? _value._issues
          : issues // ignore: cast_nullable_to_non_nullable
              as List<Issue>,
    ));
  }
}

/// @nodoc

class _$_FetchIssueState implements _FetchIssueState {
  const _$_FetchIssueState(
      {this.loading = false,
      this.error = FetchResponseError.none,
      this.canShowPreviousPage = false,
      this.canShowNextPage = false,
      this.currentPage = 1,
      this.perPage = 10,
      final List<Issue> issues = const <Issue>[]})
      : _issues = issues;

  @override
  @JsonKey()
  final bool loading;
  @override
  @JsonKey()
  final FetchResponseError error;
  @override
  @JsonKey()
  final bool canShowPreviousPage;
  @override
  @JsonKey()
  final bool canShowNextPage;
  @override
  @JsonKey()
  final int currentPage;
  @override
  @JsonKey()
  final int perPage;
  final List<Issue> _issues;
  @override
  @JsonKey()
  List<Issue> get issues {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_issues);
  }

  @override
  String toString() {
    return 'FetchIssueState(loading: $loading, error: $error, canShowPreviousPage: $canShowPreviousPage, canShowNextPage: $canShowNextPage, currentPage: $currentPage, perPage: $perPage, issues: $issues)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FetchIssueState &&
            const DeepCollectionEquality().equals(other.loading, loading) &&
            const DeepCollectionEquality().equals(other.error, error) &&
            const DeepCollectionEquality()
                .equals(other.canShowPreviousPage, canShowPreviousPage) &&
            const DeepCollectionEquality()
                .equals(other.canShowNextPage, canShowNextPage) &&
            const DeepCollectionEquality()
                .equals(other.currentPage, currentPage) &&
            const DeepCollectionEquality().equals(other.perPage, perPage) &&
            const DeepCollectionEquality().equals(other._issues, _issues));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(loading),
      const DeepCollectionEquality().hash(error),
      const DeepCollectionEquality().hash(canShowPreviousPage),
      const DeepCollectionEquality().hash(canShowNextPage),
      const DeepCollectionEquality().hash(currentPage),
      const DeepCollectionEquality().hash(perPage),
      const DeepCollectionEquality().hash(_issues));

  @JsonKey(ignore: true)
  @override
  _$$_FetchIssueStateCopyWith<_$_FetchIssueState> get copyWith =>
      __$$_FetchIssueStateCopyWithImpl<_$_FetchIssueState>(this, _$identity);
}

abstract class _FetchIssueState implements FetchIssueState {
  const factory _FetchIssueState(
      {final bool loading,
      final FetchResponseError error,
      final bool canShowPreviousPage,
      final bool canShowNextPage,
      final int currentPage,
      final int perPage,
      final List<Issue> issues}) = _$_FetchIssueState;

  @override
  bool get loading => throw _privateConstructorUsedError;
  @override
  FetchResponseError get error => throw _privateConstructorUsedError;
  @override
  bool get canShowPreviousPage => throw _privateConstructorUsedError;
  @override
  bool get canShowNextPage => throw _privateConstructorUsedError;
  @override
  int get currentPage => throw _privateConstructorUsedError;
  @override
  int get perPage => throw _privateConstructorUsedError;
  @override
  List<Issue> get issues => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_FetchIssueStateCopyWith<_$_FetchIssueState> get copyWith =>
      throw _privateConstructorUsedError;
}
