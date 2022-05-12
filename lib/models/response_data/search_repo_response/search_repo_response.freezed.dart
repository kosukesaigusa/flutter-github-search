// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'search_repo_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SearchRepoResponse _$SearchRepoResponseFromJson(Map<String, dynamic> json) {
  return _SearchRepoResponse.fromJson(json);
}

/// @nodoc
mixin _$SearchRepoResponse {
  bool get success => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  @JsonKey(name: 'total_count')
  int get totalCount => throw _privateConstructorUsedError;
  @JsonKey(name: 'incomplete_results')
  bool get incompleteResults => throw _privateConstructorUsedError;
  @JsonKey(name: 'items')
  List<Repo> get repos => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SearchRepoResponseCopyWith<SearchRepoResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchRepoResponseCopyWith<$Res> {
  factory $SearchRepoResponseCopyWith(
          SearchRepoResponse value, $Res Function(SearchRepoResponse) then) =
      _$SearchRepoResponseCopyWithImpl<$Res>;
  $Res call(
      {bool success,
      String message,
      @JsonKey(name: 'total_count') int totalCount,
      @JsonKey(name: 'incomplete_results') bool incompleteResults,
      @JsonKey(name: 'items') List<Repo> repos});
}

/// @nodoc
class _$SearchRepoResponseCopyWithImpl<$Res>
    implements $SearchRepoResponseCopyWith<$Res> {
  _$SearchRepoResponseCopyWithImpl(this._value, this._then);

  final SearchRepoResponse _value;
  // ignore: unused_field
  final $Res Function(SearchRepoResponse) _then;

  @override
  $Res call({
    Object? success = freezed,
    Object? message = freezed,
    Object? totalCount = freezed,
    Object? incompleteResults = freezed,
    Object? repos = freezed,
  }) {
    return _then(_value.copyWith(
      success: success == freezed
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      totalCount: totalCount == freezed
          ? _value.totalCount
          : totalCount // ignore: cast_nullable_to_non_nullable
              as int,
      incompleteResults: incompleteResults == freezed
          ? _value.incompleteResults
          : incompleteResults // ignore: cast_nullable_to_non_nullable
              as bool,
      repos: repos == freezed
          ? _value.repos
          : repos // ignore: cast_nullable_to_non_nullable
              as List<Repo>,
    ));
  }
}

/// @nodoc
abstract class _$$_SearchRepoResponseCopyWith<$Res>
    implements $SearchRepoResponseCopyWith<$Res> {
  factory _$$_SearchRepoResponseCopyWith(_$_SearchRepoResponse value,
          $Res Function(_$_SearchRepoResponse) then) =
      __$$_SearchRepoResponseCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool success,
      String message,
      @JsonKey(name: 'total_count') int totalCount,
      @JsonKey(name: 'incomplete_results') bool incompleteResults,
      @JsonKey(name: 'items') List<Repo> repos});
}

/// @nodoc
class __$$_SearchRepoResponseCopyWithImpl<$Res>
    extends _$SearchRepoResponseCopyWithImpl<$Res>
    implements _$$_SearchRepoResponseCopyWith<$Res> {
  __$$_SearchRepoResponseCopyWithImpl(
      _$_SearchRepoResponse _value, $Res Function(_$_SearchRepoResponse) _then)
      : super(_value, (v) => _then(v as _$_SearchRepoResponse));

  @override
  _$_SearchRepoResponse get _value => super._value as _$_SearchRepoResponse;

  @override
  $Res call({
    Object? success = freezed,
    Object? message = freezed,
    Object? totalCount = freezed,
    Object? incompleteResults = freezed,
    Object? repos = freezed,
  }) {
    return _then(_$_SearchRepoResponse(
      success: success == freezed
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      totalCount: totalCount == freezed
          ? _value.totalCount
          : totalCount // ignore: cast_nullable_to_non_nullable
              as int,
      incompleteResults: incompleteResults == freezed
          ? _value.incompleteResults
          : incompleteResults // ignore: cast_nullable_to_non_nullable
              as bool,
      repos: repos == freezed
          ? _value._repos
          : repos // ignore: cast_nullable_to_non_nullable
              as List<Repo>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SearchRepoResponse implements _SearchRepoResponse {
  const _$_SearchRepoResponse(
      {this.success = true,
      this.message = '',
      @JsonKey(name: 'total_count') this.totalCount = 0,
      @JsonKey(name: 'incomplete_results') this.incompleteResults = false,
      @JsonKey(name: 'items') final List<Repo> repos = const <Repo>[]})
      : _repos = repos;

  factory _$_SearchRepoResponse.fromJson(Map<String, dynamic> json) =>
      _$$_SearchRepoResponseFromJson(json);

  @override
  @JsonKey()
  final bool success;
  @override
  @JsonKey()
  final String message;
  @override
  @JsonKey(name: 'total_count')
  final int totalCount;
  @override
  @JsonKey(name: 'incomplete_results')
  final bool incompleteResults;
  final List<Repo> _repos;
  @override
  @JsonKey(name: 'items')
  List<Repo> get repos {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_repos);
  }

  @override
  String toString() {
    return 'SearchRepoResponse(success: $success, message: $message, totalCount: $totalCount, incompleteResults: $incompleteResults, repos: $repos)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SearchRepoResponse &&
            const DeepCollectionEquality().equals(other.success, success) &&
            const DeepCollectionEquality().equals(other.message, message) &&
            const DeepCollectionEquality()
                .equals(other.totalCount, totalCount) &&
            const DeepCollectionEquality()
                .equals(other.incompleteResults, incompleteResults) &&
            const DeepCollectionEquality().equals(other._repos, _repos));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(success),
      const DeepCollectionEquality().hash(message),
      const DeepCollectionEquality().hash(totalCount),
      const DeepCollectionEquality().hash(incompleteResults),
      const DeepCollectionEquality().hash(_repos));

  @JsonKey(ignore: true)
  @override
  _$$_SearchRepoResponseCopyWith<_$_SearchRepoResponse> get copyWith =>
      __$$_SearchRepoResponseCopyWithImpl<_$_SearchRepoResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SearchRepoResponseToJson(this);
  }
}

abstract class _SearchRepoResponse implements SearchRepoResponse {
  const factory _SearchRepoResponse(
      {final bool success,
      final String message,
      @JsonKey(name: 'total_count') final int totalCount,
      @JsonKey(name: 'incomplete_results') final bool incompleteResults,
      @JsonKey(name: 'items') final List<Repo> repos}) = _$_SearchRepoResponse;

  factory _SearchRepoResponse.fromJson(Map<String, dynamic> json) =
      _$_SearchRepoResponse.fromJson;

  @override
  bool get success => throw _privateConstructorUsedError;
  @override
  String get message => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'total_count')
  int get totalCount => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'incomplete_results')
  bool get incompleteResults => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'items')
  List<Repo> get repos => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_SearchRepoResponseCopyWith<_$_SearchRepoResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
