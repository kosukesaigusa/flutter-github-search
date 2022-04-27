// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'github_repository.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_GitHubRepo _$$_GitHubRepoFromJson(Map<String, dynamic> json) =>
    _$_GitHubRepo(
      id: json['id'] as int,
      name: json['name'] as String,
      owner: Owner.fromJson(json['owner'] as Map<String, dynamic>),
      htmlUrl: json['html_url'] as String,
      description: json['description'] as String? ?? '',
      updatedAt: DateTime.parse(json['updated_at'] as String),
      starGazersCount: json['stargazers_count'] as int? ?? 0,
      forksCount: json['forks_count'] as int? ?? 0,
    );

Map<String, dynamic> _$$_GitHubRepoToJson(_$_GitHubRepo instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'owner': instance.owner,
      'html_url': instance.htmlUrl,
      'description': instance.description,
      'updated_at': instance.updatedAt.toIso8601String(),
      'stargazers_count': instance.starGazersCount,
      'forks_count': instance.forksCount,
    };
