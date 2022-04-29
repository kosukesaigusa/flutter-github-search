// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'search_repository_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SearchRepositoryResponse _$SearchRepositoryResponseFromJson(
    Map<String, dynamic> json) {
  return _SearchRepositoryResponse.fromJson(json);
}

/// @nodoc
mixin _$SearchRepositoryResponse {
  @JsonKey(name: 'total_count')
  int get totalCount => throw _privateConstructorUsedError;
  @JsonKey(name: 'incomplete_results')
  bool get incompleteResults => throw _privateConstructorUsedError;
  @SearchRepositoryResponseDataConverter()
  List<Repo> get items => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SearchRepositoryResponseCopyWith<SearchRepositoryResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchRepositoryResponseCopyWith<$Res> {
  factory $SearchRepositoryResponseCopyWith(SearchRepositoryResponse value,
          $Res Function(SearchRepositoryResponse) then) =
      _$SearchRepositoryResponseCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'total_count') int totalCount,
      @JsonKey(name: 'incomplete_results') bool incompleteResults,
      @SearchRepositoryResponseDataConverter() List<Repo> items});
}

/// @nodoc
class _$SearchRepositoryResponseCopyWithImpl<$Res>
    implements $SearchRepositoryResponseCopyWith<$Res> {
  _$SearchRepositoryResponseCopyWithImpl(this._value, this._then);

  final SearchRepositoryResponse _value;
  // ignore: unused_field
  final $Res Function(SearchRepositoryResponse) _then;

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
              as List<Repo>,
    ));
  }
}

/// @nodoc
abstract class _$SearchRepositoryResponseCopyWith<$Res>
    implements $SearchRepositoryResponseCopyWith<$Res> {
  factory _$SearchRepositoryResponseCopyWith(_SearchRepositoryResponse value,
          $Res Function(_SearchRepositoryResponse) then) =
      __$SearchRepositoryResponseCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'total_count') int totalCount,
      @JsonKey(name: 'incomplete_results') bool incompleteResults,
      @SearchRepositoryResponseDataConverter() List<Repo> items});
}

/// @nodoc
class __$SearchRepositoryResponseCopyWithImpl<$Res>
    extends _$SearchRepositoryResponseCopyWithImpl<$Res>
    implements _$SearchRepositoryResponseCopyWith<$Res> {
  __$SearchRepositoryResponseCopyWithImpl(_SearchRepositoryResponse _value,
      $Res Function(_SearchRepositoryResponse) _then)
      : super(_value, (v) => _then(v as _SearchRepositoryResponse));

  @override
  _SearchRepositoryResponse get _value =>
      super._value as _SearchRepositoryResponse;

  @override
  $Res call({
    Object? totalCount = freezed,
    Object? incompleteResults = freezed,
    Object? items = freezed,
  }) {
    return _then(_SearchRepositoryResponse(
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
              as List<Repo>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SearchRepositoryResponse implements _SearchRepositoryResponse {
  const _$_SearchRepositoryResponse(
      {@JsonKey(name: 'total_count')
          this.totalCount = 0,
      @JsonKey(name: 'incomplete_results')
          this.incompleteResults = false,
      @SearchRepositoryResponseDataConverter()
          final List<Repo> items = const <Repo>[]})
      : _items = items;

  factory _$_SearchRepositoryResponse.fromJson(Map<String, dynamic> json) =>
      _$$_SearchRepositoryResponseFromJson(json);

  @override
  @JsonKey(name: 'total_count')
  final int totalCount;
  @override
  @JsonKey(name: 'incomplete_results')
  final bool incompleteResults;
  @SearchRepositoryResponseDataConverter()
  final List<Repo> _items;
  @override
  @JsonKey()
  @SearchRepositoryResponseDataConverter()
  List<Repo> get items {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  @override
  String toString() {
    return 'SearchRepositoryResponse(totalCount: $totalCount, incompleteResults: $incompleteResults, items: $items)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SearchRepositoryResponse &&
            const DeepCollectionEquality()
                .equals(other.totalCount, totalCount) &&
            const DeepCollectionEquality()
                .equals(other.incompleteResults, incompleteResults) &&
            const DeepCollectionEquality().equals(other.items, items));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(totalCount),
      const DeepCollectionEquality().hash(incompleteResults),
      const DeepCollectionEquality().hash(items));

  @JsonKey(ignore: true)
  @override
  _$SearchRepositoryResponseCopyWith<_SearchRepositoryResponse> get copyWith =>
      __$SearchRepositoryResponseCopyWithImpl<_SearchRepositoryResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SearchRepositoryResponseToJson(this);
  }
}

abstract class _SearchRepositoryResponse implements SearchRepositoryResponse {
  const factory _SearchRepositoryResponse(
          {@JsonKey(name: 'total_count') final int totalCount,
          @JsonKey(name: 'incomplete_results') final bool incompleteResults,
          @SearchRepositoryResponseDataConverter() final List<Repo> items}) =
      _$_SearchRepositoryResponse;

  factory _SearchRepositoryResponse.fromJson(Map<String, dynamic> json) =
      _$_SearchRepositoryResponse.fromJson;

  @override
  @JsonKey(name: 'total_count')
  int get totalCount => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'incomplete_results')
  bool get incompleteResults => throw _privateConstructorUsedError;
  @override
  @SearchRepositoryResponseDataConverter()
  List<Repo> get items => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$SearchRepositoryResponseCopyWith<_SearchRepositoryResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
