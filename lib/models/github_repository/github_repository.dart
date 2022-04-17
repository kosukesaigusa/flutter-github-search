import 'package:freezed_annotation/freezed_annotation.dart';

import 'owner/owner.dart';

part 'github_repository.freezed.dart';
part 'github_repository.g.dart';

@freezed
class GitHubRepository with _$GitHubRepository {
  const factory GitHubRepository({
    required int id,
    @JsonKey(name: 'node_id') required String nodeId,
    required String name,
    @JsonKey(name: 'full_name') required String fullName,
    required Owner owner,
    @Default(false) bool private,
    @JsonKey(name: 'html_url') required String htmlUrl,
    @Default('') String description,
    @Default(false) bool fork,
    required String url,
    @JsonKey(name: 'created_at') required DateTime createdAt,
    @JsonKey(name: 'updated_at') required DateTime updatedAt,
    @JsonKey(name: 'pushed_at') required DateTime pushedAt,
    @Default('') String homepage,
    @Default(0) int size,
    @Default(0) @JsonKey(name: 'stargazers_count') int starGazersCount,
    @Default(0) @JsonKey(name: 'watchers_count') int watchersCount,
  }) = _GitHubRepository;

  factory GitHubRepository.fromJson(Map<String, dynamic> json) => _$GitHubRepositoryFromJson(json);
}
