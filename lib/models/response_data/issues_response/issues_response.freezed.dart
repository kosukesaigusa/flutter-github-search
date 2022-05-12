// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'issues_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

IssuesResponse _$IssuesResponseFromJson(Map<String, dynamic> json) {
  return _IssuesResponse.fromJson(json);
}

/// @nodoc
mixin _$IssuesResponse {
  bool get success => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  @JsonKey(name: 'items')
  List<Issue> get issues => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $IssuesResponseCopyWith<IssuesResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IssuesResponseCopyWith<$Res> {
  factory $IssuesResponseCopyWith(
          IssuesResponse value, $Res Function(IssuesResponse) then) =
      _$IssuesResponseCopyWithImpl<$Res>;
  $Res call(
      {bool success,
      String message,
      @JsonKey(name: 'items') List<Issue> issues});
}

/// @nodoc
class _$IssuesResponseCopyWithImpl<$Res>
    implements $IssuesResponseCopyWith<$Res> {
  _$IssuesResponseCopyWithImpl(this._value, this._then);

  final IssuesResponse _value;
  // ignore: unused_field
  final $Res Function(IssuesResponse) _then;

  @override
  $Res call({
    Object? success = freezed,
    Object? message = freezed,
    Object? issues = freezed,
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
      issues: issues == freezed
          ? _value.issues
          : issues // ignore: cast_nullable_to_non_nullable
              as List<Issue>,
    ));
  }
}

/// @nodoc
abstract class _$$_IssuesResponseCopyWith<$Res>
    implements $IssuesResponseCopyWith<$Res> {
  factory _$$_IssuesResponseCopyWith(
          _$_IssuesResponse value, $Res Function(_$_IssuesResponse) then) =
      __$$_IssuesResponseCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool success,
      String message,
      @JsonKey(name: 'items') List<Issue> issues});
}

/// @nodoc
class __$$_IssuesResponseCopyWithImpl<$Res>
    extends _$IssuesResponseCopyWithImpl<$Res>
    implements _$$_IssuesResponseCopyWith<$Res> {
  __$$_IssuesResponseCopyWithImpl(
      _$_IssuesResponse _value, $Res Function(_$_IssuesResponse) _then)
      : super(_value, (v) => _then(v as _$_IssuesResponse));

  @override
  _$_IssuesResponse get _value => super._value as _$_IssuesResponse;

  @override
  $Res call({
    Object? success = freezed,
    Object? message = freezed,
    Object? issues = freezed,
  }) {
    return _then(_$_IssuesResponse(
      success: success == freezed
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      issues: issues == freezed
          ? _value._issues
          : issues // ignore: cast_nullable_to_non_nullable
              as List<Issue>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_IssuesResponse implements _IssuesResponse {
  const _$_IssuesResponse(
      {this.success = true,
      this.message = '',
      @JsonKey(name: 'items') final List<Issue> issues = const <Issue>[]})
      : _issues = issues;

  factory _$_IssuesResponse.fromJson(Map<String, dynamic> json) =>
      _$$_IssuesResponseFromJson(json);

  @override
  @JsonKey()
  final bool success;
  @override
  @JsonKey()
  final String message;
  final List<Issue> _issues;
  @override
  @JsonKey(name: 'items')
  List<Issue> get issues {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_issues);
  }

  @override
  String toString() {
    return 'IssuesResponse(success: $success, message: $message, issues: $issues)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_IssuesResponse &&
            const DeepCollectionEquality().equals(other.success, success) &&
            const DeepCollectionEquality().equals(other.message, message) &&
            const DeepCollectionEquality().equals(other._issues, _issues));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(success),
      const DeepCollectionEquality().hash(message),
      const DeepCollectionEquality().hash(_issues));

  @JsonKey(ignore: true)
  @override
  _$$_IssuesResponseCopyWith<_$_IssuesResponse> get copyWith =>
      __$$_IssuesResponseCopyWithImpl<_$_IssuesResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_IssuesResponseToJson(this);
  }
}

abstract class _IssuesResponse implements IssuesResponse {
  const factory _IssuesResponse(
      {final bool success,
      final String message,
      @JsonKey(name: 'items') final List<Issue> issues}) = _$_IssuesResponse;

  factory _IssuesResponse.fromJson(Map<String, dynamic> json) =
      _$_IssuesResponse.fromJson;

  @override
  bool get success => throw _privateConstructorUsedError;
  @override
  String get message => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'items')
  List<Issue> get issues => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_IssuesResponseCopyWith<_$_IssuesResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
