import 'package:flutter_github_search/models/github_repository/github_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

/// HTTP のレスポンスボディのデータ (dynamic) を
/// 適当な Map<String, dynamic> に変換するコンバータ。
class ApiResponseDataConverter implements JsonConverter<Map<String, dynamic>, dynamic> {
  const ApiResponseDataConverter();

  @override
  Map<String, dynamic> fromJson(dynamic data) {
    if (data == null) {
      return <String, dynamic>{};
    }
    if (data is List) {
      // データがリストである場合は
      // 'items' のキーをつけて Map<String, List<dynamic>> にする。
      return <String, List<dynamic>>{'items': data};
    }
    return data as Map<String, dynamic>;
  }

  @override
  Map<String, dynamic> toJson(Map<String, dynamic> data) => data;
}

/// GitHub Search Repository API レスポンスの items の コンバータ
class SearchRepositoryResponseDataConverter
    implements JsonConverter<List<GitHubRepository>, dynamic> {
  const SearchRepositoryResponseDataConverter();

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
