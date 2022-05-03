// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'create_issue_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CreateIssueResponse _$CreateIssueResponseFromJson(Map<String, dynamic> json) {
  return _CreateIssueResponse.fromJson(json);
}

/// @nodoc
mixin _$CreateIssueResponse {
  bool get success => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  Issue get issue => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CreateIssueResponseCopyWith<CreateIssueResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateIssueResponseCopyWith<$Res> {
  factory $CreateIssueResponseCopyWith(
          CreateIssueResponse value, $Res Function(CreateIssueResponse) then) =
      _$CreateIssueResponseCopyWithImpl<$Res>;
  $Res call({bool success, String message, Issue issue});

  $IssueCopyWith<$Res> get issue;
}

/// @nodoc
class _$CreateIssueResponseCopyWithImpl<$Res>
    implements $CreateIssueResponseCopyWith<$Res> {
  _$CreateIssueResponseCopyWithImpl(this._value, this._then);

  final CreateIssueResponse _value;
  // ignore: unused_field
  final $Res Function(CreateIssueResponse) _then;

  @override
  $Res call({
    Object? success = freezed,
    Object? message = freezed,
    Object? issue = freezed,
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
      issue: issue == freezed
          ? _value.issue
          : issue // ignore: cast_nullable_to_non_nullable
              as Issue,
    ));
  }

  @override
  $IssueCopyWith<$Res> get issue {
    return $IssueCopyWith<$Res>(_value.issue, (value) {
      return _then(_value.copyWith(issue: value));
    });
  }
}

/// @nodoc
abstract class _$CreateIssueResponseCopyWith<$Res>
    implements $CreateIssueResponseCopyWith<$Res> {
  factory _$CreateIssueResponseCopyWith(_CreateIssueResponse value,
          $Res Function(_CreateIssueResponse) then) =
      __$CreateIssueResponseCopyWithImpl<$Res>;
  @override
  $Res call({bool success, String message, Issue issue});

  @override
  $IssueCopyWith<$Res> get issue;
}

/// @nodoc
class __$CreateIssueResponseCopyWithImpl<$Res>
    extends _$CreateIssueResponseCopyWithImpl<$Res>
    implements _$CreateIssueResponseCopyWith<$Res> {
  __$CreateIssueResponseCopyWithImpl(
      _CreateIssueResponse _value, $Res Function(_CreateIssueResponse) _then)
      : super(_value, (v) => _then(v as _CreateIssueResponse));

  @override
  _CreateIssueResponse get _value => super._value as _CreateIssueResponse;

  @override
  $Res call({
    Object? success = freezed,
    Object? message = freezed,
    Object? issue = freezed,
  }) {
    return _then(_CreateIssueResponse(
      success: success == freezed
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      issue: issue == freezed
          ? _value.issue
          : issue // ignore: cast_nullable_to_non_nullable
              as Issue,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CreateIssueResponse implements _CreateIssueResponse {
  const _$_CreateIssueResponse(
      {this.success = true, this.message = '', required this.issue});

  factory _$_CreateIssueResponse.fromJson(Map<String, dynamic> json) =>
      _$$_CreateIssueResponseFromJson(json);

  @override
  @JsonKey()
  final bool success;
  @override
  @JsonKey()
  final String message;
  @override
  final Issue issue;

  @override
  String toString() {
    return 'CreateIssueResponse(success: $success, message: $message, issue: $issue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CreateIssueResponse &&
            const DeepCollectionEquality().equals(other.success, success) &&
            const DeepCollectionEquality().equals(other.message, message) &&
            const DeepCollectionEquality().equals(other.issue, issue));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(success),
      const DeepCollectionEquality().hash(message),
      const DeepCollectionEquality().hash(issue));

  @JsonKey(ignore: true)
  @override
  _$CreateIssueResponseCopyWith<_CreateIssueResponse> get copyWith =>
      __$CreateIssueResponseCopyWithImpl<_CreateIssueResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CreateIssueResponseToJson(this);
  }
}

abstract class _CreateIssueResponse implements CreateIssueResponse {
  const factory _CreateIssueResponse(
      {final bool success,
      final String message,
      required final Issue issue}) = _$_CreateIssueResponse;

  factory _CreateIssueResponse.fromJson(Map<String, dynamic> json) =
      _$_CreateIssueResponse.fromJson;

  @override
  bool get success => throw _privateConstructorUsedError;
  @override
  String get message => throw _privateConstructorUsedError;
  @override
  Issue get issue => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$CreateIssueResponseCopyWith<_CreateIssueResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
