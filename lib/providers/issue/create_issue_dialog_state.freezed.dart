// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'create_issue_dialog_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CreateIssueDialogState {
  bool get sending => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CreateIssueDialogStateCopyWith<CreateIssueDialogState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateIssueDialogStateCopyWith<$Res> {
  factory $CreateIssueDialogStateCopyWith(CreateIssueDialogState value,
          $Res Function(CreateIssueDialogState) then) =
      _$CreateIssueDialogStateCopyWithImpl<$Res>;
  $Res call({bool sending});
}

/// @nodoc
class _$CreateIssueDialogStateCopyWithImpl<$Res>
    implements $CreateIssueDialogStateCopyWith<$Res> {
  _$CreateIssueDialogStateCopyWithImpl(this._value, this._then);

  final CreateIssueDialogState _value;
  // ignore: unused_field
  final $Res Function(CreateIssueDialogState) _then;

  @override
  $Res call({
    Object? sending = freezed,
  }) {
    return _then(_value.copyWith(
      sending: sending == freezed
          ? _value.sending
          : sending // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$$_CreateIssueDialogStateCopyWith<$Res>
    implements $CreateIssueDialogStateCopyWith<$Res> {
  factory _$$_CreateIssueDialogStateCopyWith(_$_CreateIssueDialogState value,
          $Res Function(_$_CreateIssueDialogState) then) =
      __$$_CreateIssueDialogStateCopyWithImpl<$Res>;
  @override
  $Res call({bool sending});
}

/// @nodoc
class __$$_CreateIssueDialogStateCopyWithImpl<$Res>
    extends _$CreateIssueDialogStateCopyWithImpl<$Res>
    implements _$$_CreateIssueDialogStateCopyWith<$Res> {
  __$$_CreateIssueDialogStateCopyWithImpl(_$_CreateIssueDialogState _value,
      $Res Function(_$_CreateIssueDialogState) _then)
      : super(_value, (v) => _then(v as _$_CreateIssueDialogState));

  @override
  _$_CreateIssueDialogState get _value =>
      super._value as _$_CreateIssueDialogState;

  @override
  $Res call({
    Object? sending = freezed,
  }) {
    return _then(_$_CreateIssueDialogState(
      sending: sending == freezed
          ? _value.sending
          : sending // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_CreateIssueDialogState implements _CreateIssueDialogState {
  const _$_CreateIssueDialogState({this.sending = false});

  @override
  @JsonKey()
  final bool sending;

  @override
  String toString() {
    return 'CreateIssueDialogState(sending: $sending)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CreateIssueDialogState &&
            const DeepCollectionEquality().equals(other.sending, sending));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(sending));

  @JsonKey(ignore: true)
  @override
  _$$_CreateIssueDialogStateCopyWith<_$_CreateIssueDialogState> get copyWith =>
      __$$_CreateIssueDialogStateCopyWithImpl<_$_CreateIssueDialogState>(
          this, _$identity);
}

abstract class _CreateIssueDialogState implements CreateIssueDialogState {
  const factory _CreateIssueDialogState({final bool sending}) =
      _$_CreateIssueDialogState;

  @override
  bool get sending => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_CreateIssueDialogStateCopyWith<_$_CreateIssueDialogState> get copyWith =>
      throw _privateConstructorUsedError;
}
