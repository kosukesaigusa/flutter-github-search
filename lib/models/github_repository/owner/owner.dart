import 'package:freezed_annotation/freezed_annotation.dart';

part 'owner.freezed.dart';
part 'owner.g.dart';

@freezed
class Owner with _$Owner {
  const factory Owner({
    required String login,
    required int id,
    @JsonKey(name: 'node_id') required String nodeId,
    @Default('') @JsonKey(name: 'avatar_url') String avatarUrl,
    @Default('') @JsonKey(name: 'gravatar_url') String gravatarUrl,
    @Default('') @JsonKey(name: 'html_url') String htmlUrl,
    @Default('') @JsonKey(name: 'followers_url') String followersUrl,
    @Default('') @JsonKey(name: 'following_url') String followingUrl,
    @Default('') @JsonKey(name: 'gists_url') String gistsUrl,
    @Default('') @JsonKey(name: 'starred_url') String starredUrl,
    @Default('') @JsonKey(name: 'subscriptions_url') String subscriptionsUrl,
    @Default('') @JsonKey(name: 'organizations_url') String organizationsUrl,
    @Default('') @JsonKey(name: 'repos_url') String reposUrl,
    @Default('') @JsonKey(name: 'events_url') String eventsUrl,
    @Default('') @JsonKey(name: 'received_events_url') String receivedEventsUrl,
    required String type,
    @Default(false) @JsonKey(name: 'site_admin') bool siteAdmin,
  }) = _Owner;

  factory Owner.fromJson(Map<String, dynamic> json) => _$OwnerFromJson(json);
}
