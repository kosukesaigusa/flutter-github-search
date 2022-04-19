// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'base_api_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

BaseApiResponse _$BaseApiResponseFromJson(Map<String, dynamic> json) {
  return _BaseApiResponse.fromJson(json);
}

/// @nodoc
class _$BaseApiResponseTearOff {
  const _$BaseApiResponseTearOff();

  _BaseApiResponse call(
      {bool success = true,
      String message = '',
      @ApiResponseDataConverter()
          Map<String, dynamic> data = const <String, dynamic>{}}) {
    return _BaseApiResponse(
      success: success,
      message: message,
      data: data,
    );
  }

  BaseApiResponse fromJson(Map<String, Object?> json) {
    return BaseApiResponse.fromJson(json);
  }
}

/// @nodoc
const $BaseApiResponse = _$BaseApiResponseTearOff();

/// @nodoc
mixin _$BaseApiResponse {
  bool get success => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  @ApiResponseDataConverter()
  Map<String, dynamic> get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BaseApiResponseCopyWith<BaseApiResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BaseApiResponseCopyWith<$Res> {
  factory $BaseApiResponseCopyWith(
          BaseApiResponse value, $Res Function(BaseApiResponse) then) =
      _$BaseApiResponseCopyWithImpl<$Res>;
  $Res call(
      {bool success,
      String message,
      @ApiResponseDataConverter() Map<String, dynamic> data});
}

/// @nodoc
class _$BaseApiResponseCopyWithImpl<$Res>
    implements $BaseApiResponseCopyWith<$Res> {
  _$BaseApiResponseCopyWithImpl(this._value, this._then);

  final BaseApiResponse _value;
  // ignore: unused_field
  final $Res Function(BaseApiResponse) _then;

  @override
  $Res call({
    Object? success = freezed,
    Object? message = freezed,
    Object? data = freezed,
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
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
    ));
  }
}

/// @nodoc
abstract class _$BaseApiResponseCopyWith<$Res>
    implements $BaseApiResponseCopyWith<$Res> {
  factory _$BaseApiResponseCopyWith(
          _BaseApiResponse value, $Res Function(_BaseApiResponse) then) =
      __$BaseApiResponseCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool success,
      String message,
      @ApiResponseDataConverter() Map<String, dynamic> data});
}

/// @nodoc
class __$BaseApiResponseCopyWithImpl<$Res>
    extends _$BaseApiResponseCopyWithImpl<$Res>
    implements _$BaseApiResponseCopyWith<$Res> {
  __$BaseApiResponseCopyWithImpl(
      _BaseApiResponse _value, $Res Function(_BaseApiResponse) _then)
      : super(_value, (v) => _then(v as _BaseApiResponse));

  @override
  _BaseApiResponse get _value => super._value as _BaseApiResponse;

  @override
  $Res call({
    Object? success = freezed,
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_BaseApiResponse(
      success: success == freezed
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_BaseApiResponse implements _BaseApiResponse {
  const _$_BaseApiResponse(
      {this.success = true,
      this.message = '',
      @ApiResponseDataConverter() this.data = const <String, dynamic>{}});

  factory _$_BaseApiResponse.fromJson(Map<String, dynamic> json) =>
      _$$_BaseApiResponseFromJson(json);

  @JsonKey()
  @override
  final bool success;
  @JsonKey()
  @override
  final String message;
  @JsonKey()
  @override
  @ApiResponseDataConverter()
  final Map<String, dynamic> data;

  @override
  String toString() {
    return 'BaseApiResponse(success: $success, message: $message, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _BaseApiResponse &&
            const DeepCollectionEquality().equals(other.success, success) &&
            const DeepCollectionEquality().equals(other.message, message) &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(success),
      const DeepCollectionEquality().hash(message),
      const DeepCollectionEquality().hash(data));

  @JsonKey(ignore: true)
  @override
  _$BaseApiResponseCopyWith<_BaseApiResponse> get copyWith =>
      __$BaseApiResponseCopyWithImpl<_BaseApiResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BaseApiResponseToJson(this);
  }
}

abstract class _BaseApiResponse implements BaseApiResponse {
  const factory _BaseApiResponse(
          {bool success,
          String message,
          @ApiResponseDataConverter() Map<String, dynamic> data}) =
      _$_BaseApiResponse;

  factory _BaseApiResponse.fromJson(Map<String, dynamic> json) =
      _$_BaseApiResponse.fromJson;

  @override
  bool get success;
  @override
  String get message;
  @override
  @ApiResponseDataConverter()
  Map<String, dynamic> get data;
  @override
  @JsonKey(ignore: true)
  _$BaseApiResponseCopyWith<_BaseApiResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
