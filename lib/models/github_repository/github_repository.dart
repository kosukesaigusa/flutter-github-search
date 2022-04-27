import 'package:freezed_annotation/freezed_annotation.dart';

import 'owner/owner.dart';

part 'github_repository.freezed.dart';
part 'github_repository.g.dart';

@freezed
class GitHubRepository with _$GitHubRepository {
  const factory GitHubRepository({
    required int id,
    required String name,
    required Owner owner,
    @JsonKey(name: 'html_url') required String htmlUrl,
    @Default('') String description,
    @JsonKey(name: 'updated_at') required DateTime updatedAt,
    @Default(0) @JsonKey(name: 'stargazers_count') int starGazersCount,
    @Default(0) @JsonKey(name: 'forks_count') int forksCount,
  }) = _GitHubRepository;

  factory GitHubRepository.fromJson(Map<String, dynamic> json) => _$GitHubRepositoryFromJson(json);
}
