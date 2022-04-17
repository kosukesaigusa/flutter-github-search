// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'search_api_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SearchApiResponse _$SearchApiResponseFromJson(Map<String, dynamic> json) {
  return _SearchApiResponse.fromJson(json);
}

/// @nodoc
class _$SearchApiResponseTearOff {
  const _$SearchApiResponseTearOff();

  _SearchApiResponse call(
      {@JsonKey(name: 'total_count')
          int totalCount = 0,
      @JsonKey(name: 'incomplete_results')
          bool incompleteResults = false,
      @SearchApiResponseDataConverter()
          List<GitHubRepository> items = const <GitHubRepository>[]}) {
    return _SearchApiResponse(
      totalCount: totalCount,
      incompleteResults: incompleteResults,
      items: items,
    );
  }

  SearchApiResponse fromJson(Map<String, Object?> json) {
    return SearchApiResponse.fromJson(json);
  }
}

/// @nodoc
const $SearchApiResponse = _$SearchApiResponseTearOff();

/// @nodoc
mixin _$SearchApiResponse {
  @JsonKey(name: 'total_count')
  int get totalCount => throw _privateConstructorUsedError;
  @JsonKey(name: 'incomplete_results')
  bool get incompleteResults => throw _privateConstructorUsedError;
  @SearchApiResponseDataConverter()
  List<GitHubRepository> get items => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SearchApiResponseCopyWith<SearchApiResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchApiResponseCopyWith<$Res> {
  factory $SearchApiResponseCopyWith(
          SearchApiResponse value, $Res Function(SearchApiResponse) then) =
      _$SearchApiResponseCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'total_count') int totalCount,
      @JsonKey(name: 'incomplete_results') bool incompleteResults,
      @SearchApiResponseDataConverter() List<GitHubRepository> items});
}

/// @nodoc
class _$SearchApiResponseCopyWithImpl<$Res>
    implements $SearchApiResponseCopyWith<$Res> {
  _$SearchApiResponseCopyWithImpl(this._value, this._then);

  final SearchApiResponse _value;
  // ignore: unused_field
  final $Res Function(SearchApiResponse) _then;

  @override
  $Res call({
    Object? totalCount = freezed,
    Object? incompleteResults = freezed,
    Object? items = freezed,
  }) {
    return _then(_value.copyWith(
      totalCount: totalCount == freezed
          ? _value.totalCount
          : totalCount // ignore: cast_nullable_to_non_nullable
              as int,
      incompleteResults: incompleteResults == freezed
          ? _value.incompleteResults
          : incompleteResults // ignore: cast_nullable_to_non_nullable
              as bool,
      items: items == freezed
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<GitHubRepository>,
    ));
  }
}

/// @nodoc
abstract class _$SearchApiResponseCopyWith<$Res>
    implements $SearchApiResponseCopyWith<$Res> {
  factory _$SearchApiResponseCopyWith(
          _SearchApiResponse value, $Res Function(_SearchApiResponse) then) =
      __$SearchApiResponseCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'total_count') int totalCount,
      @JsonKey(name: 'incomplete_results') bool incompleteResults,
      @SearchApiResponseDataConverter() List<GitHubRepository> items});
}

/// @nodoc
class __$SearchApiResponseCopyWithImpl<$Res>
    extends _$SearchApiResponseCopyWithImpl<$Res>
    implements _$SearchApiResponseCopyWith<$Res> {
  __$SearchApiResponseCopyWithImpl(
      _SearchApiResponse _value, $Res Function(_SearchApiResponse) _then)
      : super(_value, (v) => _then(v as _SearchApiResponse));

  @override
  _SearchApiResponse get _value => super._value as _SearchApiResponse;

  @override
  $Res call({
    Object? totalCount = freezed,
    Object? incompleteResults = freezed,
    Object? items = freezed,
  }) {
    return _then(_SearchApiResponse(
      totalCount: totalCount == freezed
          ? _value.totalCount
          : totalCount // ignore: cast_nullable_to_non_nullable
              as int,
      incompleteResults: incompleteResults == freezed
          ? _value.incompleteResults
          : incompleteResults // ignore: cast_nullable_to_non_nullable
              as bool,
      items: items == freezed
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<GitHubRepository>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SearchApiResponse implements _SearchApiResponse {
  const _$_SearchApiResponse(
      {@JsonKey(name: 'total_count')
          this.totalCount = 0,
      @JsonKey(name: 'incomplete_results')
          this.incompleteResults = false,
      @SearchApiResponseDataConverter()
          this.items = const <GitHubRepository>[]});

  factory _$_SearchApiResponse.fromJson(Map<String, dynamic> json) =>
      _$$_SearchApiResponseFromJson(json);

  @override
  @JsonKey(name: 'total_count')
  final int totalCount;
  @override
  @JsonKey(name: 'incomplete_results')
  final bool incompleteResults;
  @JsonKey()
  @override
  @SearchApiResponseDataConverter()
  final List<GitHubRepository> items;

  @override
  String toString() {
    return 'SearchApiResponse(totalCount: $totalCount, incompleteResults: $incompleteResults, items: $items)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SearchApiResponse &&
            const DeepCollectionEquality()
                .equals(other.totalCount, totalCount) &&
            const DeepCollectionEquality()
                .equals(other.incompleteResults, incompleteResults) &&
            const DeepCollectionEquality().equals(other.items, items));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(totalCount),
      const DeepCollectionEquality().hash(incompleteResults),
      const DeepCollectionEquality().hash(items));

  @JsonKey(ignore: true)
  @override
  _$SearchApiResponseCopyWith<_SearchApiResponse> get copyWith =>
      __$SearchApiResponseCopyWithImpl<_SearchApiResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SearchApiResponseToJson(this);
  }
}

abstract class _SearchApiResponse implements SearchApiResponse {
  const factory _SearchApiResponse(
          {@JsonKey(name: 'total_count') int totalCount,
          @JsonKey(name: 'incomplete_results') bool incompleteResults,
          @SearchApiResponseDataConverter() List<GitHubRepository> items}) =
      _$_SearchApiResponse;

  factory _SearchApiResponse.fromJson(Map<String, dynamic> json) =
      _$_SearchApiResponse.fromJson;

  @override
  @JsonKey(name: 'total_count')
  int get totalCount;
  @override
  @JsonKey(name: 'incomplete_results')
  bool get incompleteResults;
  @override
  @SearchApiResponseDataConverter()
  List<GitHubRepository> get items;
  @override
  @JsonKey(ignore: true)
  _$SearchApiResponseCopyWith<_SearchApiResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
