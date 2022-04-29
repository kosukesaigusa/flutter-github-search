import 'package:freezed_annotation/freezed_annotation.dart';

import 'owner/owner.dart';

part 'repo.freezed.dart';
part 'repo.g.dart';

@freezed
class Repo with _$Repo {
  const factory Repo({
    required int id,
    required String name,
    required Owner owner,
    @JsonKey(name: 'html_url') required String htmlUrl,
    @Default('') String description,
    @JsonKey(name: 'updated_at') required DateTime updatedAt,
    @Default(0) @JsonKey(name: 'stargazers_count') int starGazersCount,
    @Default(0) @JsonKey(name: 'forks_count') int forksCount,
  }) = _Repo;

  factory Repo.fromJson(Map<String, dynamic> json) => _$RepoFromJson(json);
}
