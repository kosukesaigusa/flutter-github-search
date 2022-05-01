// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'fetch_issue_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

FetchIssueResponse _$FetchIssueResponseFromJson(Map<String, dynamic> json) {
  return _FetchIssueResponse.fromJson(json);
}

/// @nodoc
mixin _$FetchIssueResponse {
  @JsonKey(name: 'total_count')
  int get totalCount => throw _privateConstructorUsedError;
  @JsonKey(name: 'incomplete_results')
  bool get incompleteResults => throw _privateConstructorUsedError;
  @FetchIssueResponseItemsConverter()
  List<Issue> get items => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FetchIssueResponseCopyWith<FetchIssueResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FetchIssueResponseCopyWith<$Res> {
  factory $FetchIssueResponseCopyWith(
          FetchIssueResponse value, $Res Function(FetchIssueResponse) then) =
      _$FetchIssueResponseCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'total_count') int totalCount,
      @JsonKey(name: 'incomplete_results') bool incompleteResults,
      @FetchIssueResponseItemsConverter() List<Issue> items});
}

/// @nodoc
class _$FetchIssueResponseCopyWithImpl<$Res>
    implements $FetchIssueResponseCopyWith<$Res> {
  _$FetchIssueResponseCopyWithImpl(this._value, this._then);

  final FetchIssueResponse _value;
  // ignore: unused_field
  final $Res Function(FetchIssueResponse) _then;

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
              as List<Issue>,
    ));
  }
}

/// @nodoc
abstract class _$FetchIssueResponseCopyWith<$Res>
    implements $FetchIssueResponseCopyWith<$Res> {
  factory _$FetchIssueResponseCopyWith(
          _FetchIssueResponse value, $Res Function(_FetchIssueResponse) then) =
      __$FetchIssueResponseCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'total_count') int totalCount,
      @JsonKey(name: 'incomplete_results') bool incompleteResults,
      @FetchIssueResponseItemsConverter() List<Issue> items});
}

/// @nodoc
class __$FetchIssueResponseCopyWithImpl<$Res>
    extends _$FetchIssueResponseCopyWithImpl<$Res>
    implements _$FetchIssueResponseCopyWith<$Res> {
  __$FetchIssueResponseCopyWithImpl(
      _FetchIssueResponse _value, $Res Function(_FetchIssueResponse) _then)
      : super(_value, (v) => _then(v as _FetchIssueResponse));

  @override
  _FetchIssueResponse get _value => super._value as _FetchIssueResponse;

  @override
  $Res call({
    Object? totalCount = freezed,
    Object? incompleteResults = freezed,
    Object? items = freezed,
  }) {
    return _then(_FetchIssueResponse(
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
              as List<Issue>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_FetchIssueResponse implements _FetchIssueResponse {
  const _$_FetchIssueResponse(
      {@JsonKey(name: 'total_count')
          this.totalCount = 0,
      @JsonKey(name: 'incomplete_results')
          this.incompleteResults = false,
      @FetchIssueResponseItemsConverter()
          final List<Issue> items = const <Issue>[]})
      : _items = items;

  factory _$_FetchIssueResponse.fromJson(Map<String, dynamic> json) =>
      _$$_FetchIssueResponseFromJson(json);

  @override
  @JsonKey(name: 'total_count')
  final int totalCount;
  @override
  @JsonKey(name: 'incomplete_results')
  final bool incompleteResults;
  @FetchIssueResponseItemsConverter()
  final List<Issue> _items;
  @override
  @JsonKey()
  @FetchIssueResponseItemsConverter()
  List<Issue> get items {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  @override
  String toString() {
    return 'FetchIssueResponse(totalCount: $totalCount, incompleteResults: $incompleteResults, items: $items)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _FetchIssueResponse &&
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
  _$FetchIssueResponseCopyWith<_FetchIssueResponse> get copyWith =>
      __$FetchIssueResponseCopyWithImpl<_FetchIssueResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_FetchIssueResponseToJson(this);
  }
}

abstract class _FetchIssueResponse implements FetchIssueResponse {
  const factory _FetchIssueResponse(
          {@JsonKey(name: 'total_count') final int totalCount,
          @JsonKey(name: 'incomplete_results') final bool incompleteResults,
          @FetchIssueResponseItemsConverter() final List<Issue> items}) =
      _$_FetchIssueResponse;

  factory _FetchIssueResponse.fromJson(Map<String, dynamic> json) =
      _$_FetchIssueResponse.fromJson;

  @override
  @JsonKey(name: 'total_count')
  int get totalCount => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'incomplete_results')
  bool get incompleteResults => throw _privateConstructorUsedError;
  @override
  @FetchIssueResponseItemsConverter()
  List<Issue> get items => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$FetchIssueResponseCopyWith<_FetchIssueResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
