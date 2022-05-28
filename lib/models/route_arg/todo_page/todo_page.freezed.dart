// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'todo_page.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TodoPageRouteArgument {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Todo todo) instance,
    required TResult Function(int id) id,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Todo todo)? instance,
    TResult Function(int id)? id,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Todo todo)? instance,
    TResult Function(int id)? id,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Instance value) instance,
    required TResult Function(Id value) id,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Instance value)? instance,
    TResult Function(Id value)? id,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Instance value)? instance,
    TResult Function(Id value)? id,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TodoPageRouteArgumentCopyWith<$Res> {
  factory $TodoPageRouteArgumentCopyWith(TodoPageRouteArgument value,
          $Res Function(TodoPageRouteArgument) then) =
      _$TodoPageRouteArgumentCopyWithImpl<$Res>;
}

/// @nodoc
class _$TodoPageRouteArgumentCopyWithImpl<$Res>
    implements $TodoPageRouteArgumentCopyWith<$Res> {
  _$TodoPageRouteArgumentCopyWithImpl(this._value, this._then);

  final TodoPageRouteArgument _value;
  // ignore: unused_field
  final $Res Function(TodoPageRouteArgument) _then;
}

/// @nodoc
abstract class _$$InstanceCopyWith<$Res> {
  factory _$$InstanceCopyWith(
          _$Instance value, $Res Function(_$Instance) then) =
      __$$InstanceCopyWithImpl<$Res>;
  $Res call({Todo todo});

  $TodoCopyWith<$Res> get todo;
}

/// @nodoc
class __$$InstanceCopyWithImpl<$Res>
    extends _$TodoPageRouteArgumentCopyWithImpl<$Res>
    implements _$$InstanceCopyWith<$Res> {
  __$$InstanceCopyWithImpl(_$Instance _value, $Res Function(_$Instance) _then)
      : super(_value, (v) => _then(v as _$Instance));

  @override
  _$Instance get _value => super._value as _$Instance;

  @override
  $Res call({
    Object? todo = freezed,
  }) {
    return _then(_$Instance(
      todo == freezed
          ? _value.todo
          : todo // ignore: cast_nullable_to_non_nullable
              as Todo,
    ));
  }

  @override
  $TodoCopyWith<$Res> get todo {
    return $TodoCopyWith<$Res>(_value.todo, (value) {
      return _then(_value.copyWith(todo: value));
    });
  }
}

/// @nodoc

class _$Instance implements Instance {
  const _$Instance(this.todo);

  @override
  final Todo todo;

  @override
  String toString() {
    return 'TodoPageRouteArgument.instance(todo: $todo)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Instance &&
            const DeepCollectionEquality().equals(other.todo, todo));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(todo));

  @JsonKey(ignore: true)
  @override
  _$$InstanceCopyWith<_$Instance> get copyWith =>
      __$$InstanceCopyWithImpl<_$Instance>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Todo todo) instance,
    required TResult Function(int id) id,
  }) {
    return instance(todo);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Todo todo)? instance,
    TResult Function(int id)? id,
  }) {
    return instance?.call(todo);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Todo todo)? instance,
    TResult Function(int id)? id,
    required TResult orElse(),
  }) {
    if (instance != null) {
      return instance(todo);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Instance value) instance,
    required TResult Function(Id value) id,
  }) {
    return instance(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Instance value)? instance,
    TResult Function(Id value)? id,
  }) {
    return instance?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Instance value)? instance,
    TResult Function(Id value)? id,
    required TResult orElse(),
  }) {
    if (instance != null) {
      return instance(this);
    }
    return orElse();
  }
}

abstract class Instance implements TodoPageRouteArgument {
  const factory Instance(final Todo todo) = _$Instance;

  Todo get todo => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$InstanceCopyWith<_$Instance> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$IdCopyWith<$Res> {
  factory _$$IdCopyWith(_$Id value, $Res Function(_$Id) then) =
      __$$IdCopyWithImpl<$Res>;
  $Res call({int id});
}

/// @nodoc
class __$$IdCopyWithImpl<$Res> extends _$TodoPageRouteArgumentCopyWithImpl<$Res>
    implements _$$IdCopyWith<$Res> {
  __$$IdCopyWithImpl(_$Id _value, $Res Function(_$Id) _then)
      : super(_value, (v) => _then(v as _$Id));

  @override
  _$Id get _value => super._value as _$Id;

  @override
  $Res call({
    Object? id = freezed,
  }) {
    return _then(_$Id(
      id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$Id implements Id {
  const _$Id(this.id);

  @override
  final int id;

  @override
  String toString() {
    return 'TodoPageRouteArgument.id(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Id &&
            const DeepCollectionEquality().equals(other.id, id));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(id));

  @JsonKey(ignore: true)
  @override
  _$$IdCopyWith<_$Id> get copyWith =>
      __$$IdCopyWithImpl<_$Id>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Todo todo) instance,
    required TResult Function(int id) id,
  }) {
    return id(this.id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Todo todo)? instance,
    TResult Function(int id)? id,
  }) {
    return id?.call(this.id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Todo todo)? instance,
    TResult Function(int id)? id,
    required TResult orElse(),
  }) {
    if (id != null) {
      return id(this.id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Instance value) instance,
    required TResult Function(Id value) id,
  }) {
    return id(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Instance value)? instance,
    TResult Function(Id value)? id,
  }) {
    return id?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Instance value)? instance,
    TResult Function(Id value)? id,
    required TResult orElse(),
  }) {
    if (id != null) {
      return id(this);
    }
    return orElse();
  }
}

abstract class Id implements TodoPageRouteArgument {
  const factory Id(final int id) = _$Id;

  int get id => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$IdCopyWith<_$Id> get copyWith => throw _privateConstructorUsedError;
}
