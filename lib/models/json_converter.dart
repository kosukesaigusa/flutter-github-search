import 'package:flutter_github_search/models/github_repository/github_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

/// GitHub Search API レスポンスの items の JsonConverter
class SearchApiResponseDataConverter implements JsonConverter<List<GitHubRepository>, dynamic> {
  const SearchApiResponseDataConverter();

  @override
  List<GitHubRepository> fromJson(dynamic items) {
    if (items == null) {
      return <GitHubRepository>[];
    }
    if (items is List) {
      return items
          .map((dynamic e) => e as Map<String, dynamic>)
          .map(GitHubRepository.fromJson)
          .toList();
    }
    return <GitHubRepository>[];
  }

  @override
  List<Map<String, dynamic>> toJson(List<GitHubRepository> items) =>
      items.map((e) => e.toJson()).toList();
}
