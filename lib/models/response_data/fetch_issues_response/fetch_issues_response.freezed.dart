// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'fetch_issues_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

FetchIssuesResponse _$FetchIssuesResponseFromJson(Map<String, dynamic> json) {
  return _FetchIssuesResponse.fromJson(json);
}

/// @nodoc
mixin _$FetchIssuesResponse {
  bool get success => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  List<Issue> get items => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FetchIssuesResponseCopyWith<FetchIssuesResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FetchIssuesResponseCopyWith<$Res> {
  factory $FetchIssuesResponseCopyWith(
          FetchIssuesResponse value, $Res Function(FetchIssuesResponse) then) =
      _$FetchIssuesResponseCopyWithImpl<$Res>;
  $Res call({bool success, String message, List<Issue> items});
}

/// @nodoc
class _$FetchIssuesResponseCopyWithImpl<$Res>
    implements $FetchIssuesResponseCopyWith<$Res> {
  _$FetchIssuesResponseCopyWithImpl(this._value, this._then);

  final FetchIssuesResponse _value;
  // ignore: unused_field
  final $Res Function(FetchIssuesResponse) _then;

  @override
  $Res call({
    Object? success = freezed,
    Object? message = freezed,
    Object? items = freezed,
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
      items: items == freezed
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<Issue>,
    ));
  }
}

/// @nodoc
abstract class _$FetchIssuesResponseCopyWith<$Res>
    implements $FetchIssuesResponseCopyWith<$Res> {
  factory _$FetchIssuesResponseCopyWith(_FetchIssuesResponse value,
          $Res Function(_FetchIssuesResponse) then) =
      __$FetchIssuesResponseCopyWithImpl<$Res>;
  @override
  $Res call({bool success, String message, List<Issue> items});
}

/// @nodoc
class __$FetchIssuesResponseCopyWithImpl<$Res>
    extends _$FetchIssuesResponseCopyWithImpl<$Res>
    implements _$FetchIssuesResponseCopyWith<$Res> {
  __$FetchIssuesResponseCopyWithImpl(
      _FetchIssuesResponse _value, $Res Function(_FetchIssuesResponse) _then)
      : super(_value, (v) => _then(v as _FetchIssuesResponse));

  @override
  _FetchIssuesResponse get _value => super._value as _FetchIssuesResponse;

  @override
  $Res call({
    Object? success = freezed,
    Object? message = freezed,
    Object? items = freezed,
  }) {
    return _then(_FetchIssuesResponse(
      success: success == freezed
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      items: items == freezed
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<Issue>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_FetchIssuesResponse implements _FetchIssuesResponse {
  const _$_FetchIssuesResponse(
      {this.success = true,
      this.message = '',
      final List<Issue> items = const <Issue>[]})
      : _items = items;

  factory _$_FetchIssuesResponse.fromJson(Map<String, dynamic> json) =>
      _$$_FetchIssuesResponseFromJson(json);

  @override
  @JsonKey()
  final bool success;
  @override
  @JsonKey()
  final String message;
  final List<Issue> _items;
  @override
  @JsonKey()
  List<Issue> get items {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  @override
  String toString() {
    return 'FetchIssuesResponse(success: $success, message: $message, items: $items)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _FetchIssuesResponse &&
            const DeepCollectionEquality().equals(other.success, success) &&
            const DeepCollectionEquality().equals(other.message, message) &&
            const DeepCollectionEquality().equals(other.items, items));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(success),
      const DeepCollectionEquality().hash(message),
      const DeepCollectionEquality().hash(items));

  @JsonKey(ignore: true)
  @override
  _$FetchIssuesResponseCopyWith<_FetchIssuesResponse> get copyWith =>
      __$FetchIssuesResponseCopyWithImpl<_FetchIssuesResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_FetchIssuesResponseToJson(this);
  }
}

abstract class _FetchIssuesResponse implements FetchIssuesResponse {
  const factory _FetchIssuesResponse(
      {final bool success,
      final String message,
      final List<Issue> items}) = _$_FetchIssuesResponse;

  factory _FetchIssuesResponse.fromJson(Map<String, dynamic> json) =
      _$_FetchIssuesResponse.fromJson;

  @override
  bool get success => throw _privateConstructorUsedError;
  @override
  String get message => throw _privateConstructorUsedError;
  @override
  List<Issue> get items => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$FetchIssuesResponseCopyWith<_FetchIssuesResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
