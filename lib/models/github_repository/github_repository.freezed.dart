// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'github_repository.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GitHubRepository _$GitHubRepositoryFromJson(Map<String, dynamic> json) {
  return _GitHubRepository.fromJson(json);
}

/// @nodoc
class _$GitHubRepositoryTearOff {
  const _$GitHubRepositoryTearOff();

  _GitHubRepository call(
      {required int id,
      @JsonKey(name: 'node_id') required String nodeId,
      required String name,
      @JsonKey(name: 'full_name') required String fullName,
      required Owner owner,
      bool private = false,
      @JsonKey(name: 'html_url') required String htmlUrl,
      String description = '',
      bool fork = false,
      required String url,
      @JsonKey(name: 'created_at') required DateTime createdAt,
      @JsonKey(name: 'updated_at') required DateTime updatedAt,
      @JsonKey(name: 'pushed_at') required DateTime pushedAt,
      String homepage = '',
      int size = 0,
      @JsonKey(name: 'stargazers_count') int starGazersCount = 0,
      @JsonKey(name: 'watchers_count') int watchersCount = 0}) {
    return _GitHubRepository(
      id: id,
      nodeId: nodeId,
      name: name,
      fullName: fullName,
      owner: owner,
      private: private,
      htmlUrl: htmlUrl,
      description: description,
      fork: fork,
      url: url,
      createdAt: createdAt,
      updatedAt: updatedAt,
      pushedAt: pushedAt,
      homepage: homepage,
      size: size,
      starGazersCount: starGazersCount,
      watchersCount: watchersCount,
    );
  }

  GitHubRepository fromJson(Map<String, Object?> json) {
    return GitHubRepository.fromJson(json);
  }
}

/// @nodoc
const $GitHubRepository = _$GitHubRepositoryTearOff();

/// @nodoc
mixin _$GitHubRepository {
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'node_id')
  String get nodeId => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'full_name')
  String get fullName => throw _privateConstructorUsedError;
  Owner get owner => throw _privateConstructorUsedError;
  bool get private => throw _privateConstructorUsedError;
  @JsonKey(name: 'html_url')
  String get htmlUrl => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  bool get fork => throw _privateConstructorUsedError;
  String get url => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  DateTime get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  DateTime get updatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'pushed_at')
  DateTime get pushedAt => throw _privateConstructorUsedError;
  String get homepage => throw _privateConstructorUsedError;
  int get size => throw _privateConstructorUsedError;
  @JsonKey(name: 'stargazers_count')
  int get starGazersCount => throw _privateConstructorUsedError;
  @JsonKey(name: 'watchers_count')
  int get watchersCount => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GitHubRepositoryCopyWith<GitHubRepository> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GitHubRepositoryCopyWith<$Res> {
  factory $GitHubRepositoryCopyWith(
          GitHubRepository value, $Res Function(GitHubRepository) then) =
      _$GitHubRepositoryCopyWithImpl<$Res>;
  $Res call(
      {int id,
      @JsonKey(name: 'node_id') String nodeId,
      String name,
      @JsonKey(name: 'full_name') String fullName,
      Owner owner,
      bool private,
      @JsonKey(name: 'html_url') String htmlUrl,
      String description,
      bool fork,
      String url,
      @JsonKey(name: 'created_at') DateTime createdAt,
      @JsonKey(name: 'updated_at') DateTime updatedAt,
      @JsonKey(name: 'pushed_at') DateTime pushedAt,
      String homepage,
      int size,
      @JsonKey(name: 'stargazers_count') int starGazersCount,
      @JsonKey(name: 'watchers_count') int watchersCount});

  $OwnerCopyWith<$Res> get owner;
}

/// @nodoc
class _$GitHubRepositoryCopyWithImpl<$Res>
    implements $GitHubRepositoryCopyWith<$Res> {
  _$GitHubRepositoryCopyWithImpl(this._value, this._then);

  final GitHubRepository _value;
  // ignore: unused_field
  final $Res Function(GitHubRepository) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? nodeId = freezed,
    Object? name = freezed,
    Object? fullName = freezed,
    Object? owner = freezed,
    Object? private = freezed,
    Object? htmlUrl = freezed,
    Object? description = freezed,
    Object? fork = freezed,
    Object? url = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? pushedAt = freezed,
    Object? homepage = freezed,
    Object? size = freezed,
    Object? starGazersCount = freezed,
    Object? watchersCount = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      nodeId: nodeId == freezed
          ? _value.nodeId
          : nodeId // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      fullName: fullName == freezed
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String,
      owner: owner == freezed
          ? _value.owner
          : owner // ignore: cast_nullable_to_non_nullable
              as Owner,
      private: private == freezed
          ? _value.private
          : private // ignore: cast_nullable_to_non_nullable
              as bool,
      htmlUrl: htmlUrl == freezed
          ? _value.htmlUrl
          : htmlUrl // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      fork: fork == freezed
          ? _value.fork
          : fork // ignore: cast_nullable_to_non_nullable
              as bool,
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: updatedAt == freezed
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      pushedAt: pushedAt == freezed
          ? _value.pushedAt
          : pushedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      homepage: homepage == freezed
          ? _value.homepage
          : homepage // ignore: cast_nullable_to_non_nullable
              as String,
      size: size == freezed
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as int,
      starGazersCount: starGazersCount == freezed
          ? _value.starGazersCount
          : starGazersCount // ignore: cast_nullable_to_non_nullable
              as int,
      watchersCount: watchersCount == freezed
          ? _value.watchersCount
          : watchersCount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }

  @override
  $OwnerCopyWith<$Res> get owner {
    return $OwnerCopyWith<$Res>(_value.owner, (value) {
      return _then(_value.copyWith(owner: value));
    });
  }
}

/// @nodoc
abstract class _$GitHubRepositoryCopyWith<$Res>
    implements $GitHubRepositoryCopyWith<$Res> {
  factory _$GitHubRepositoryCopyWith(
          _GitHubRepository value, $Res Function(_GitHubRepository) then) =
      __$GitHubRepositoryCopyWithImpl<$Res>;
  @override
  $Res call(
      {int id,
      @JsonKey(name: 'node_id') String nodeId,
      String name,
      @JsonKey(name: 'full_name') String fullName,
      Owner owner,
      bool private,
      @JsonKey(name: 'html_url') String htmlUrl,
      String description,
      bool fork,
      String url,
      @JsonKey(name: 'created_at') DateTime createdAt,
      @JsonKey(name: 'updated_at') DateTime updatedAt,
      @JsonKey(name: 'pushed_at') DateTime pushedAt,
      String homepage,
      int size,
      @JsonKey(name: 'stargazers_count') int starGazersCount,
      @JsonKey(name: 'watchers_count') int watchersCount});

  @override
  $OwnerCopyWith<$Res> get owner;
}

/// @nodoc
class __$GitHubRepositoryCopyWithImpl<$Res>
    extends _$GitHubRepositoryCopyWithImpl<$Res>
    implements _$GitHubRepositoryCopyWith<$Res> {
  __$GitHubRepositoryCopyWithImpl(
      _GitHubRepository _value, $Res Function(_GitHubRepository) _then)
      : super(_value, (v) => _then(v as _GitHubRepository));

  @override
  _GitHubRepository get _value => super._value as _GitHubRepository;

  @override
  $Res call({
    Object? id = freezed,
    Object? nodeId = freezed,
    Object? name = freezed,
    Object? fullName = freezed,
    Object? owner = freezed,
    Object? private = freezed,
    Object? htmlUrl = freezed,
    Object? description = freezed,
    Object? fork = freezed,
    Object? url = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? pushedAt = freezed,
    Object? homepage = freezed,
    Object? size = freezed,
    Object? starGazersCount = freezed,
    Object? watchersCount = freezed,
  }) {
    return _then(_GitHubRepository(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      nodeId: nodeId == freezed
          ? _value.nodeId
          : nodeId // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      fullName: fullName == freezed
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String,
      owner: owner == freezed
          ? _value.owner
          : owner // ignore: cast_nullable_to_non_nullable
              as Owner,
      private: private == freezed
          ? _value.private
          : private // ignore: cast_nullable_to_non_nullable
              as bool,
      htmlUrl: htmlUrl == freezed
          ? _value.htmlUrl
          : htmlUrl // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      fork: fork == freezed
          ? _value.fork
          : fork // ignore: cast_nullable_to_non_nullable
              as bool,
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: updatedAt == freezed
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      pushedAt: pushedAt == freezed
          ? _value.pushedAt
          : pushedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      homepage: homepage == freezed
          ? _value.homepage
          : homepage // ignore: cast_nullable_to_non_nullable
              as String,
      size: size == freezed
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as int,
      starGazersCount: starGazersCount == freezed
          ? _value.starGazersCount
          : starGazersCount // ignore: cast_nullable_to_non_nullable
              as int,
      watchersCount: watchersCount == freezed
          ? _value.watchersCount
          : watchersCount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GitHubRepository implements _GitHubRepository {
  const _$_GitHubRepository(
      {required this.id,
      @JsonKey(name: 'node_id') required this.nodeId,
      required this.name,
      @JsonKey(name: 'full_name') required this.fullName,
      required this.owner,
      this.private = false,
      @JsonKey(name: 'html_url') required this.htmlUrl,
      this.description = '',
      this.fork = false,
      required this.url,
      @JsonKey(name: 'created_at') required this.createdAt,
      @JsonKey(name: 'updated_at') required this.updatedAt,
      @JsonKey(name: 'pushed_at') required this.pushedAt,
      this.homepage = '',
      this.size = 0,
      @JsonKey(name: 'stargazers_count') this.starGazersCount = 0,
      @JsonKey(name: 'watchers_count') this.watchersCount = 0});

  factory _$_GitHubRepository.fromJson(Map<String, dynamic> json) =>
      _$$_GitHubRepositoryFromJson(json);

  @override
  final int id;
  @override
  @JsonKey(name: 'node_id')
  final String nodeId;
  @override
  final String name;
  @override
  @JsonKey(name: 'full_name')
  final String fullName;
  @override
  final Owner owner;
  @JsonKey()
  @override
  final bool private;
  @override
  @JsonKey(name: 'html_url')
  final String htmlUrl;
  @JsonKey()
  @override
  final String description;
  @JsonKey()
  @override
  final bool fork;
  @override
  final String url;
  @override
  @JsonKey(name: 'created_at')
  final DateTime createdAt;
  @override
  @JsonKey(name: 'updated_at')
  final DateTime updatedAt;
  @override
  @JsonKey(name: 'pushed_at')
  final DateTime pushedAt;
  @JsonKey()
  @override
  final String homepage;
  @JsonKey()
  @override
  final int size;
  @override
  @JsonKey(name: 'stargazers_count')
  final int starGazersCount;
  @override
  @JsonKey(name: 'watchers_count')
  final int watchersCount;

  @override
  String toString() {
    return 'GitHubRepository(id: $id, nodeId: $nodeId, name: $name, fullName: $fullName, owner: $owner, private: $private, htmlUrl: $htmlUrl, description: $description, fork: $fork, url: $url, createdAt: $createdAt, updatedAt: $updatedAt, pushedAt: $pushedAt, homepage: $homepage, size: $size, starGazersCount: $starGazersCount, watchersCount: $watchersCount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _GitHubRepository &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.nodeId, nodeId) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.fullName, fullName) &&
            const DeepCollectionEquality().equals(other.owner, owner) &&
            const DeepCollectionEquality().equals(other.private, private) &&
            const DeepCollectionEquality().equals(other.htmlUrl, htmlUrl) &&
            const DeepCollectionEquality()
                .equals(other.description, description) &&
            const DeepCollectionEquality().equals(other.fork, fork) &&
            const DeepCollectionEquality().equals(other.url, url) &&
            const DeepCollectionEquality().equals(other.createdAt, createdAt) &&
            const DeepCollectionEquality().equals(other.updatedAt, updatedAt) &&
            const DeepCollectionEquality().equals(other.pushedAt, pushedAt) &&
            const DeepCollectionEquality().equals(other.homepage, homepage) &&
            const DeepCollectionEquality().equals(other.size, size) &&
            const DeepCollectionEquality()
                .equals(other.starGazersCount, starGazersCount) &&
            const DeepCollectionEquality()
                .equals(other.watchersCount, watchersCount));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(nodeId),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(fullName),
      const DeepCollectionEquality().hash(owner),
      const DeepCollectionEquality().hash(private),
      const DeepCollectionEquality().hash(htmlUrl),
      const DeepCollectionEquality().hash(description),
      const DeepCollectionEquality().hash(fork),
      const DeepCollectionEquality().hash(url),
      const DeepCollectionEquality().hash(createdAt),
      const DeepCollectionEquality().hash(updatedAt),
      const DeepCollectionEquality().hash(pushedAt),
      const DeepCollectionEquality().hash(homepage),
      const DeepCollectionEquality().hash(size),
      const DeepCollectionEquality().hash(starGazersCount),
      const DeepCollectionEquality().hash(watchersCount));

  @JsonKey(ignore: true)
  @override
  _$GitHubRepositoryCopyWith<_GitHubRepository> get copyWith =>
      __$GitHubRepositoryCopyWithImpl<_GitHubRepository>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GitHubRepositoryToJson(this);
  }
}

abstract class _GitHubRepository implements GitHubRepository {
  const factory _GitHubRepository(
          {required int id,
          @JsonKey(name: 'node_id') required String nodeId,
          required String name,
          @JsonKey(name: 'full_name') required String fullName,
          required Owner owner,
          bool private,
          @JsonKey(name: 'html_url') required String htmlUrl,
          String description,
          bool fork,
          required String url,
          @JsonKey(name: 'created_at') required DateTime createdAt,
          @JsonKey(name: 'updated_at') required DateTime updatedAt,
          @JsonKey(name: 'pushed_at') required DateTime pushedAt,
          String homepage,
          int size,
          @JsonKey(name: 'stargazers_count') int starGazersCount,
          @JsonKey(name: 'watchers_count') int watchersCount}) =
      _$_GitHubRepository;

  factory _GitHubRepository.fromJson(Map<String, dynamic> json) =
      _$_GitHubRepository.fromJson;

  @override
  int get id;
  @override
  @JsonKey(name: 'node_id')
  String get nodeId;
  @override
  String get name;
  @override
  @JsonKey(name: 'full_name')
  String get fullName;
  @override
  Owner get owner;
  @override
  bool get private;
  @override
  @JsonKey(name: 'html_url')
  String get htmlUrl;
  @override
  String get description;
  @override
  bool get fork;
  @override
  String get url;
  @override
  @JsonKey(name: 'created_at')
  DateTime get createdAt;
  @override
  @JsonKey(name: 'updated_at')
  DateTime get updatedAt;
  @override
  @JsonKey(name: 'pushed_at')
  DateTime get pushedAt;
  @override
  String get homepage;
  @override
  int get size;
  @override
  @JsonKey(name: 'stargazers_count')
  int get starGazersCount;
  @override
  @JsonKey(name: 'watchers_count')
  int get watchersCount;
  @override
  @JsonKey(ignore: true)
  _$GitHubRepositoryCopyWith<_GitHubRepository> get copyWith =>
      throw _privateConstructorUsedError;
}
