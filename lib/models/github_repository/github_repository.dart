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
    @Default('') @JsonKey(name: 'forks_url') String forksUrl,
    @Default('') @JsonKey(name: 'keys_url') String keysUrl,
    @Default('') @JsonKey(name: 'collaborators_url') String collaboratorsUrl,
    @Default('') @JsonKey(name: 'teams_url') String teamsUrl,
    @Default('') @JsonKey(name: 'hooks_url') String hooksUrl,
    @Default('') @JsonKey(name: 'issue_events_url') String issueEventsUrl,
    @Default('') @JsonKey(name: 'events_url') String eventsUrl,
    @Default('') @JsonKey(name: 'assignees_url') String assigneesUrl,
    @Default('') @JsonKey(name: 'branches_url') String branchesUrl,
    @Default('') @JsonKey(name: 'tags_url') String tagsUrl,
    @Default('') @JsonKey(name: 'blobs_url') String blobsUrl,
    @Default('') @JsonKey(name: 'git_tags_url') String gitTagsUrl,
    @Default('') @JsonKey(name: 'git_refs_url') String gitRefsUrl,
    @Default('') @JsonKey(name: 'trees_url') String treesUrl,
    @Default('') @JsonKey(name: 'statuses_url') String statusesUrl,
    @Default('') @JsonKey(name: 'languages_url') String languagesUrl,
    @Default('') @JsonKey(name: 'stargazers_url') String stargazersUrl,
    @Default('') @JsonKey(name: 'contributors_url') String contributorsUrl,
    @Default('') @JsonKey(name: 'subscribers_url') String subscribersUrl,
    @Default('') @JsonKey(name: 'subscription_url') String subscriptionUrl,
    @Default('') @JsonKey(name: 'commits_url') String commitsUrl,
    @Default('') @JsonKey(name: 'git_commits_url') String gitCommitsUrl,
    @Default('') @JsonKey(name: 'comments_url') String commentsUrl,
    @Default('') @JsonKey(name: 'issue_comment_url') String issueCommentUrl,
    @Default('') @JsonKey(name: 'contents_url') String contentsUrl,
    @Default('') @JsonKey(name: 'compare_url') String compareUrl,
    @Default('') @JsonKey(name: 'merges_url') String mergesUrl,
    @Default('') @JsonKey(name: 'archive_url') String archiveUrl,
    @Default('') @JsonKey(name: 'downloads_url') String downloadsUrl,
    @Default('') @JsonKey(name: 'issues_url') String issuesUrl,
    @Default('') @JsonKey(name: 'pulls_url') String pullsUrl,
    @Default('') @JsonKey(name: 'milestones_url') String milestonesUrl,
    @Default('') @JsonKey(name: 'notifications_url') String notificationsUrl,
    @Default('') @JsonKey(name: 'labels_url') String labelsUrl,
    @Default('') @JsonKey(name: 'deployments_url') String deploymentsUrl,
    @Default('') @JsonKey(name: 'releases_url') String releasesUrl,
  }) = _GitHubRepository;

  factory GitHubRepository.fromJson(Map<String, dynamic> json) => _$GitHubRepositoryFromJson(json);
}
