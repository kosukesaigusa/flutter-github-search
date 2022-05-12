// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'issue_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

IssueResponse _$IssueResponseFromJson(Map<String, dynamic> json) {
  return _IssueResponse.fromJson(json);
}

/// @nodoc
mixin _$IssueResponse {
  bool get success => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  Issue get issue => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $IssueResponseCopyWith<IssueResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IssueResponseCopyWith<$Res> {
  factory $IssueResponseCopyWith(
          IssueResponse value, $Res Function(IssueResponse) then) =
      _$IssueResponseCopyWithImpl<$Res>;
  $Res call({bool success, String message, Issue issue});

  $IssueCopyWith<$Res> get issue;
}

/// @nodoc
class _$IssueResponseCopyWithImpl<$Res>
    implements $IssueResponseCopyWith<$Res> {
  _$IssueResponseCopyWithImpl(this._value, this._then);

  final IssueResponse _value;
  // ignore: unused_field
  final $Res Function(IssueResponse) _then;

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
abstract class _$$_IssueResponseCopyWith<$Res>
    implements $IssueResponseCopyWith<$Res> {
  factory _$$_IssueResponseCopyWith(
          _$_IssueResponse value, $Res Function(_$_IssueResponse) then) =
      __$$_IssueResponseCopyWithImpl<$Res>;
  @override
  $Res call({bool success, String message, Issue issue});

  @override
  $IssueCopyWith<$Res> get issue;
}

/// @nodoc
class __$$_IssueResponseCopyWithImpl<$Res>
    extends _$IssueResponseCopyWithImpl<$Res>
    implements _$$_IssueResponseCopyWith<$Res> {
  __$$_IssueResponseCopyWithImpl(
      _$_IssueResponse _value, $Res Function(_$_IssueResponse) _then)
      : super(_value, (v) => _then(v as _$_IssueResponse));

  @override
  _$_IssueResponse get _value => super._value as _$_IssueResponse;

  @override
  $Res call({
    Object? success = freezed,
    Object? message = freezed,
    Object? issue = freezed,
  }) {
    return _then(_$_IssueResponse(
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
class _$_IssueResponse implements _IssueResponse {
  const _$_IssueResponse(
      {this.success = true, this.message = '', required this.issue});

  factory _$_IssueResponse.fromJson(Map<String, dynamic> json) =>
      _$$_IssueResponseFromJson(json);

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
    return 'IssueResponse(success: $success, message: $message, issue: $issue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_IssueResponse &&
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
  _$$_IssueResponseCopyWith<_$_IssueResponse> get copyWith =>
      __$$_IssueResponseCopyWithImpl<_$_IssueResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_IssueResponseToJson(this);
  }
}

abstract class _IssueResponse implements IssueResponse {
  const factory _IssueResponse(
      {final bool success,
      final String message,
      required final Issue issue}) = _$_IssueResponse;

  factory _IssueResponse.fromJson(Map<String, dynamic> json) =
      _$_IssueResponse.fromJson;

  @override
  bool get success => throw _privateConstructorUsedError;
  @override
  String get message => throw _privateConstructorUsedError;
  @override
  Issue get issue => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_IssueResponseCopyWith<_$_IssueResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
