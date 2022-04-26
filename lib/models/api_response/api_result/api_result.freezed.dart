// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'api_result.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ApiResult {
  String get message => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool success, String message) success,
    required TResult Function(Exception exception, String message) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(bool success, String message)? success,
    TResult Function(Exception exception, String message)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool success, String message)? success,
    TResult Function(Exception exception, String message)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ApiResult value) success,
    required TResult Function(Failure value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ApiResult value)? success,
    TResult Function(Failure value)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ApiResult value)? success,
    TResult Function(Failure value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ApiResultCopyWith<ApiResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApiResultCopyWith<$Res> {
  factory $ApiResultCopyWith(ApiResult value, $Res Function(ApiResult) then) =
      _$ApiResultCopyWithImpl<$Res>;
  $Res call({String message});
}

/// @nodoc
class _$ApiResultCopyWithImpl<$Res> implements $ApiResultCopyWith<$Res> {
  _$ApiResultCopyWithImpl(this._value, this._then);

  final ApiResult _value;
  // ignore: unused_field
  final $Res Function(ApiResult) _then;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_value.copyWith(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$ApiResultCopyWith<$Res> implements $ApiResultCopyWith<$Res> {
  factory _$ApiResultCopyWith(
          _ApiResult value, $Res Function(_ApiResult) then) =
      __$ApiResultCopyWithImpl<$Res>;
  @override
  $Res call({bool success, String message});
}

/// @nodoc
class __$ApiResultCopyWithImpl<$Res> extends _$ApiResultCopyWithImpl<$Res>
    implements _$ApiResultCopyWith<$Res> {
  __$ApiResultCopyWithImpl(_ApiResult _value, $Res Function(_ApiResult) _then)
      : super(_value, (v) => _then(v as _ApiResult));

  @override
  _ApiResult get _value => super._value as _ApiResult;

  @override
  $Res call({
    Object? success = freezed,
    Object? message = freezed,
  }) {
    return _then(_ApiResult(
      success: success == freezed
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ApiResult implements _ApiResult {
  const _$_ApiResult({this.success = true, this.message = ''});

  @override
  @JsonKey()
  final bool success;
  @override
  @JsonKey()
  final String message;

  @override
  String toString() {
    return 'ApiResult.success(success: $success, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ApiResult &&
            const DeepCollectionEquality().equals(other.success, success) &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(success),
      const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  _$ApiResultCopyWith<_ApiResult> get copyWith =>
      __$ApiResultCopyWithImpl<_ApiResult>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool success, String message) success,
    required TResult Function(Exception exception, String message) failure,
  }) {
    return success(this.success, message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(bool success, String message)? success,
    TResult Function(Exception exception, String message)? failure,
  }) {
    return success?.call(this.success, message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool success, String message)? success,
    TResult Function(Exception exception, String message)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this.success, message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ApiResult value) success,
    required TResult Function(Failure value) failure,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ApiResult value)? success,
    TResult Function(Failure value)? failure,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ApiResult value)? success,
    TResult Function(Failure value)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _ApiResult implements ApiResult {
  const factory _ApiResult({final bool success, final String message}) =
      _$_ApiResult;

  bool get success => throw _privateConstructorUsedError;
  @override
  String get message => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ApiResultCopyWith<_ApiResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FailureCopyWith<$Res> implements $ApiResultCopyWith<$Res> {
  factory $FailureCopyWith(Failure value, $Res Function(Failure) then) =
      _$FailureCopyWithImpl<$Res>;
  @override
  $Res call({Exception exception, String message});
}

/// @nodoc
class _$FailureCopyWithImpl<$Res> extends _$ApiResultCopyWithImpl<$Res>
    implements $FailureCopyWith<$Res> {
  _$FailureCopyWithImpl(Failure _value, $Res Function(Failure) _then)
      : super(_value, (v) => _then(v as Failure));

  @override
  Failure get _value => super._value as Failure;

  @override
  $Res call({
    Object? exception = freezed,
    Object? message = freezed,
  }) {
    return _then(Failure(
      exception: exception == freezed
          ? _value.exception
          : exception // ignore: cast_nullable_to_non_nullable
              as Exception,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$Failure implements Failure {
  const _$Failure({required this.exception, this.message = ''});

  @override
  final Exception exception;
  @override
  @JsonKey()
  final String message;

  @override
  String toString() {
    return 'ApiResult.failure(exception: $exception, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Failure &&
            const DeepCollectionEquality().equals(other.exception, exception) &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(exception),
      const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  $FailureCopyWith<Failure> get copyWith =>
      _$FailureCopyWithImpl<Failure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool success, String message) success,
    required TResult Function(Exception exception, String message) failure,
  }) {
    return failure(exception, message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(bool success, String message)? success,
    TResult Function(Exception exception, String message)? failure,
  }) {
    return failure?.call(exception, message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool success, String message)? success,
    TResult Function(Exception exception, String message)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(exception, message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ApiResult value) success,
    required TResult Function(Failure value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ApiResult value)? success,
    TResult Function(Failure value)? failure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ApiResult value)? success,
    TResult Function(Failure value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class Failure implements ApiResult {
  const factory Failure(
      {required final Exception exception, final String message}) = _$Failure;

  Exception get exception => throw _privateConstructorUsedError;
  @override
  String get message => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $FailureCopyWith<Failure> get copyWith => throw _privateConstructorUsedError;
}
