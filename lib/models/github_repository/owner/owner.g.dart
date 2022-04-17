// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'owner.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Owner _$$_OwnerFromJson(Map<String, dynamic> json) => _$_Owner(
      login: json['login'] as String,
      id: json['id'] as int,
      nodeId: json['node_id'] as String,
      avatarUrl: json['avatar_url'] as String? ?? '',
      gravatarUrl: json['gravatar_url'] as String? ?? '',
      htmlUrl: json['html_url'] as String? ?? '',
      followersUrl: json['followers_url'] as String? ?? '',
      followingUrl: json['following_url'] as String? ?? '',
      gistsUrl: json['gists_url'] as String? ?? '',
      starredUrl: json['starred_url'] as String? ?? '',
      subscriptionsUrl: json['subscriptions_url'] as String? ?? '',
      organizationsUrl: json['organizations_url'] as String? ?? '',
      reposUrl: json['repos_url'] as String? ?? '',
      eventsUrl: json['events_url'] as String? ?? '',
      receivedEventsUrl: json['received_events_url'] as String? ?? '',
      type: json['type'] as String,
      siteAdmin: json['site_admin'] as bool? ?? false,
    );

Map<String, dynamic> _$$_OwnerToJson(_$_Owner instance) => <String, dynamic>{
      'login': instance.login,
      'id': instance.id,
      'node_id': instance.nodeId,
      'avatar_url': instance.avatarUrl,
      'gravatar_url': instance.gravatarUrl,
      'html_url': instance.htmlUrl,
      'followers_url': instance.followersUrl,
      'following_url': instance.followingUrl,
      'gists_url': instance.gistsUrl,
      'starred_url': instance.starredUrl,
      'subscriptions_url': instance.subscriptionsUrl,
      'organizations_url': instance.organizationsUrl,
      'repos_url': instance.reposUrl,
      'events_url': instance.eventsUrl,
      'received_events_url': instance.receivedEventsUrl,
      'type': instance.type,
      'site_admin': instance.siteAdmin,
    };
