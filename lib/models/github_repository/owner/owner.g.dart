// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'owner.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Owner _$$_OwnerFromJson(Map<String, dynamic> json) => _$_Owner(
      login: json['login'] as String,
      id: json['id'] as int,
      avatarUrl: json['avatar_url'] as String? ?? '',
      gravatarUrl: json['gravatar_url'] as String? ?? '',
      htmlUrl: json['html_url'] as String? ?? '',
      organizationsUrl: json['organizations_url'] as String? ?? '',
      reposUrl: json['repos_url'] as String? ?? '',
      type: json['type'] as String,
      siteAdmin: json['site_admin'] as bool? ?? false,
    );

Map<String, dynamic> _$$_OwnerToJson(_$_Owner instance) => <String, dynamic>{
      'login': instance.login,
      'id': instance.id,
      'avatar_url': instance.avatarUrl,
      'gravatar_url': instance.gravatarUrl,
      'html_url': instance.htmlUrl,
      'organizations_url': instance.organizationsUrl,
      'repos_url': instance.reposUrl,
      'type': instance.type,
      'site_admin': instance.siteAdmin,
    };
