// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'github_repository.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_GitHubRepository _$$_GitHubRepositoryFromJson(Map<String, dynamic> json) =>
    _$_GitHubRepository(
      id: json['id'] as int,
      nodeId: json['node_id'] as String,
      name: json['name'] as String,
      fullName: json['full_name'] as String,
      owner: Owner.fromJson(json['owner'] as Map<String, dynamic>),
      private: json['private'] as bool? ?? false,
      htmlUrl: json['html_url'] as String,
      description: json['description'] as String? ?? '',
      fork: json['fork'] as bool? ?? false,
      url: json['url'] as String,
      createdAt: DateTime.parse(json['created_at'] as String),
      updatedAt: DateTime.parse(json['updated_at'] as String),
      pushedAt: DateTime.parse(json['pushed_at'] as String),
      homepage: json['homepage'] as String? ?? '',
      size: json['size'] as int? ?? 0,
      starGazersCount: json['stargazers_count'] as int? ?? 0,
      watchersCount: json['watchers_count'] as int? ?? 0,
    );

Map<String, dynamic> _$$_GitHubRepositoryToJson(_$_GitHubRepository instance) =>
    <String, dynamic>{
      'id': instance.id,
      'node_id': instance.nodeId,
      'name': instance.name,
      'full_name': instance.fullName,
      'owner': instance.owner,
      'private': instance.private,
      'html_url': instance.htmlUrl,
      'description': instance.description,
      'fork': instance.fork,
      'url': instance.url,
      'created_at': instance.createdAt.toIso8601String(),
      'updated_at': instance.updatedAt.toIso8601String(),
      'pushed_at': instance.pushedAt.toIso8601String(),
      'homepage': instance.homepage,
      'size': instance.size,
      'stargazers_count': instance.starGazersCount,
      'watchers_count': instance.watchersCount,
    };
