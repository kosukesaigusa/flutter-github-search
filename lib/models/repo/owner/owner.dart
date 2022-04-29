import 'package:freezed_annotation/freezed_annotation.dart';

part 'owner.freezed.dart';
part 'owner.g.dart';

@freezed
class Owner with _$Owner {
  const factory Owner({
    required String login,
    required int id,
    @Default('') @JsonKey(name: 'avatar_url') String avatarUrl,
    @Default('') @JsonKey(name: 'gravatar_url') String gravatarUrl,
    @Default('') @JsonKey(name: 'html_url') String htmlUrl,
    @Default('') @JsonKey(name: 'organizations_url') String organizationsUrl,
    @Default('') @JsonKey(name: 'repos_url') String reposUrl,
    required String type,
    @Default(false) @JsonKey(name: 'site_admin') bool siteAdmin,
  }) = _Owner;

  factory Owner.fromJson(Map<String, dynamic> json) => _$OwnerFromJson(json);
}
