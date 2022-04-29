// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'search_repo_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$RepoSearchState {
  bool get canShowPreviousPage => throw _privateConstructorUsedError;
  bool get canShowNextPage => throw _privateConstructorUsedError;
  String get q => throw _privateConstructorUsedError;
  int get currentPage => throw _privateConstructorUsedError;
  int get perPage => throw _privateConstructorUsedError;
  int get totalCount => throw _privateConstructorUsedError;
  int get maxPage => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RepoSearchStateCopyWith<RepoSearchState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RepoSearchStateCopyWith<$Res> {
  factory $RepoSearchStateCopyWith(
          RepoSearchState value, $Res Function(RepoSearchState) then) =
      _$RepoSearchStateCopyWithImpl<$Res>;
  $Res call(
      {bool canShowPreviousPage,
      bool canShowNextPage,
      String q,
      int currentPage,
      int perPage,
      int totalCount,
      int maxPage});
}

/// @nodoc
class _$RepoSearchStateCopyWithImpl<$Res>
    implements $RepoSearchStateCopyWith<$Res> {
  _$RepoSearchStateCopyWithImpl(this._value, this._then);

  final RepoSearchState _value;
  // ignore: unused_field
  final $Res Function(RepoSearchState) _then;

  @override
  $Res call({
    Object? canShowPreviousPage = freezed,
    Object? canShowNextPage = freezed,
    Object? q = freezed,
    Object? currentPage = freezed,
    Object? perPage = freezed,
    Object? totalCount = freezed,
    Object? maxPage = freezed,
  }) {
    return _then(_value.copyWith(
      canShowPreviousPage: canShowPreviousPage == freezed
          ? _value.canShowPreviousPage
          : canShowPreviousPage // ignore: cast_nullable_to_non_nullable
              as bool,
      canShowNextPage: canShowNextPage == freezed
          ? _value.canShowNextPage
          : canShowNextPage // ignore: cast_nullable_to_non_nullable
              as bool,
      q: q == freezed
          ? _value.q
          : q // ignore: cast_nullable_to_non_nullable
              as String,
      currentPage: currentPage == freezed
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int,
      perPage: perPage == freezed
          ? _value.perPage
          : perPage // ignore: cast_nullable_to_non_nullable
              as int,
      totalCount: totalCount == freezed
          ? _value.totalCount
          : totalCount // ignore: cast_nullable_to_non_nullable
              as int,
      maxPage: maxPage == freezed
          ? _value.maxPage
          : maxPage // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$RepoSearchStateCopyWith<$Res>
    implements $RepoSearchStateCopyWith<$Res> {
  factory _$RepoSearchStateCopyWith(
          _RepoSearchState value, $Res Function(_RepoSearchState) then) =
      __$RepoSearchStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool canShowPreviousPage,
      bool canShowNextPage,
      String q,
      int currentPage,
      int perPage,
      int totalCount,
      int maxPage});
}

/// @nodoc
class __$RepoSearchStateCopyWithImpl<$Res>
    extends _$RepoSearchStateCopyWithImpl<$Res>
    implements _$RepoSearchStateCopyWith<$Res> {
  __$RepoSearchStateCopyWithImpl(
      _RepoSearchState _value, $Res Function(_RepoSearchState) _then)
      : super(_value, (v) => _then(v as _RepoSearchState));

  @override
  _RepoSearchState get _value => super._value as _RepoSearchState;

  @override
  $Res call({
    Object? canShowPreviousPage = freezed,
    Object? canShowNextPage = freezed,
    Object? q = freezed,
    Object? currentPage = freezed,
    Object? perPage = freezed,
    Object? totalCount = freezed,
    Object? maxPage = freezed,
  }) {
    return _then(_RepoSearchState(
      canShowPreviousPage: canShowPreviousPage == freezed
          ? _value.canShowPreviousPage
          : canShowPreviousPage // ignore: cast_nullable_to_non_nullable
              as bool,
      canShowNextPage: canShowNextPage == freezed
          ? _value.canShowNextPage
          : canShowNextPage // ignore: cast_nullable_to_non_nullable
              as bool,
      q: q == freezed
          ? _value.q
          : q // ignore: cast_nullable_to_non_nullable
              as String,
      currentPage: currentPage == freezed
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int,
      perPage: perPage == freezed
          ? _value.perPage
          : perPage // ignore: cast_nullable_to_non_nullable
              as int,
      totalCount: totalCount == freezed
          ? _value.totalCount
          : totalCount // ignore: cast_nullable_to_non_nullable
              as int,
      maxPage: maxPage == freezed
          ? _value.maxPage
          : maxPage // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_RepoSearchState implements _RepoSearchState {
  const _$_RepoSearchState(
      {this.canShowPreviousPage = false,
      this.canShowNextPage = false,
      this.q = '',
      this.currentPage = 1,
      this.perPage = 10,
      this.totalCount = 0,
      this.maxPage = 1});

  @override
  @JsonKey()
  final bool canShowPreviousPage;
  @override
  @JsonKey()
  final bool canShowNextPage;
  @override
  @JsonKey()
  final String q;
  @override
  @JsonKey()
  final int currentPage;
  @override
  @JsonKey()
  final int perPage;
  @override
  @JsonKey()
  final int totalCount;
  @override
  @JsonKey()
  final int maxPage;

  @override
  String toString() {
    return 'RepoSearchState(canShowPreviousPage: $canShowPreviousPage, canShowNextPage: $canShowNextPage, q: $q, currentPage: $currentPage, perPage: $perPage, totalCount: $totalCount, maxPage: $maxPage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _RepoSearchState &&
            const DeepCollectionEquality()
                .equals(other.canShowPreviousPage, canShowPreviousPage) &&
            const DeepCollectionEquality()
                .equals(other.canShowNextPage, canShowNextPage) &&
            const DeepCollectionEquality().equals(other.q, q) &&
            const DeepCollectionEquality()
                .equals(other.currentPage, currentPage) &&
            const DeepCollectionEquality().equals(other.perPage, perPage) &&
            const DeepCollectionEquality()
                .equals(other.totalCount, totalCount) &&
            const DeepCollectionEquality().equals(other.maxPage, maxPage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(canShowPreviousPage),
      const DeepCollectionEquality().hash(canShowNextPage),
      const DeepCollectionEquality().hash(q),
      const DeepCollectionEquality().hash(currentPage),
      const DeepCollectionEquality().hash(perPage),
      const DeepCollectionEquality().hash(totalCount),
      const DeepCollectionEquality().hash(maxPage));

  @JsonKey(ignore: true)
  @override
  _$RepoSearchStateCopyWith<_RepoSearchState> get copyWith =>
      __$RepoSearchStateCopyWithImpl<_RepoSearchState>(this, _$identity);
}

abstract class _RepoSearchState implements RepoSearchState {
  const factory _RepoSearchState(
      {final bool canShowPreviousPage,
      final bool canShowNextPage,
      final String q,
      final int currentPage,
      final int perPage,
      final int totalCount,
      final int maxPage}) = _$_RepoSearchState;

  @override
  bool get canShowPreviousPage => throw _privateConstructorUsedError;
  @override
  bool get canShowNextPage => throw _privateConstructorUsedError;
  @override
  String get q => throw _privateConstructorUsedError;
  @override
  int get currentPage => throw _privateConstructorUsedError;
  @override
  int get perPage => throw _privateConstructorUsedError;
  @override
  int get totalCount => throw _privateConstructorUsedError;
  @override
  int get maxPage => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$RepoSearchStateCopyWith<_RepoSearchState> get copyWith =>
      throw _privateConstructorUsedError;
}
