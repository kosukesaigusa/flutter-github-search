// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'base_response_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

BaseResponseData _$BaseResponseDataFromJson(Map<String, dynamic> json) {
  return _BaseResponseData.fromJson(json);
}

/// @nodoc
mixin _$BaseResponseData {
  bool get success => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  @BaseResponseDataConverter()
  Map<String, dynamic> get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BaseResponseDataCopyWith<BaseResponseData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BaseResponseDataCopyWith<$Res> {
  factory $BaseResponseDataCopyWith(
          BaseResponseData value, $Res Function(BaseResponseData) then) =
      _$BaseResponseDataCopyWithImpl<$Res>;
  $Res call(
      {bool success,
      String message,
      @BaseResponseDataConverter() Map<String, dynamic> data});
}

/// @nodoc
class _$BaseResponseDataCopyWithImpl<$Res>
    implements $BaseResponseDataCopyWith<$Res> {
  _$BaseResponseDataCopyWithImpl(this._value, this._then);

  final BaseResponseData _value;
  // ignore: unused_field
  final $Res Function(BaseResponseData) _then;

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
abstract class _$$_BaseResponseDataCopyWith<$Res>
    implements $BaseResponseDataCopyWith<$Res> {
  factory _$$_BaseResponseDataCopyWith(
          _$_BaseResponseData value, $Res Function(_$_BaseResponseData) then) =
      __$$_BaseResponseDataCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool success,
      String message,
      @BaseResponseDataConverter() Map<String, dynamic> data});
}

/// @nodoc
class __$$_BaseResponseDataCopyWithImpl<$Res>
    extends _$BaseResponseDataCopyWithImpl<$Res>
    implements _$$_BaseResponseDataCopyWith<$Res> {
  __$$_BaseResponseDataCopyWithImpl(
      _$_BaseResponseData _value, $Res Function(_$_BaseResponseData) _then)
      : super(_value, (v) => _then(v as _$_BaseResponseData));

  @override
  _$_BaseResponseData get _value => super._value as _$_BaseResponseData;

  @override
  $Res call({
    Object? success = freezed,
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_$_BaseResponseData(
      success: success == freezed
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      data: data == freezed
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_BaseResponseData implements _BaseResponseData {
  const _$_BaseResponseData(
      {this.success = true,
      this.message = '',
      @BaseResponseDataConverter() final Map<String, dynamic> data = emptyMap})
      : _data = data;

  factory _$_BaseResponseData.fromJson(Map<String, dynamic> json) =>
      _$$_BaseResponseDataFromJson(json);

  @override
  @JsonKey()
  final bool success;
  @override
  @JsonKey()
  final String message;
  final Map<String, dynamic> _data;
  @override
  @JsonKey()
  @BaseResponseDataConverter()
  Map<String, dynamic> get data {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_data);
  }

  @override
  String toString() {
    return 'BaseResponseData(success: $success, message: $message, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BaseResponseData &&
            const DeepCollectionEquality().equals(other.success, success) &&
            const DeepCollectionEquality().equals(other.message, message) &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(success),
      const DeepCollectionEquality().hash(message),
      const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  _$$_BaseResponseDataCopyWith<_$_BaseResponseData> get copyWith =>
      __$$_BaseResponseDataCopyWithImpl<_$_BaseResponseData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BaseResponseDataToJson(this);
  }
}

abstract class _BaseResponseData implements BaseResponseData {
  const factory _BaseResponseData(
          {final bool success,
          final String message,
          @BaseResponseDataConverter() final Map<String, dynamic> data}) =
      _$_BaseResponseData;

  factory _BaseResponseData.fromJson(Map<String, dynamic> json) =
      _$_BaseResponseData.fromJson;

  @override
  bool get success => throw _privateConstructorUsedError;
  @override
  String get message => throw _privateConstructorUsedError;
  @override
  @BaseResponseDataConverter()
  Map<String, dynamic> get data => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_BaseResponseDataCopyWith<_$_BaseResponseData> get copyWith =>
      throw _privateConstructorUsedError;
}
