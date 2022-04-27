import 'package:freezed_annotation/freezed_annotation.dart';

import 'github_repository/github_repository.dart';

/// HTTP のレスポンスボディのデータ (dynamic) を
/// 適当な Map<String, dynamic> に変換するコンバータ。
class BaseApiResponseDataConverter implements JsonConverter<Map<String, dynamic>, dynamic> {
  const BaseApiResponseDataConverter();

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
class SearchRepositoryResponseDataConverter implements JsonConverter<List<GitHubRepo>, dynamic> {
  const SearchRepositoryResponseDataConverter();

  @override
  List<GitHubRepo> fromJson(dynamic items) {
    if (items == null) {
      return <GitHubRepo>[];
    }
    if (items is List) {
      return items.map((dynamic e) => e as Map<String, dynamic>).map(GitHubRepo.fromJson).toList();
    }
    return <GitHubRepo>[];
  }

  @override
  List<Map<String, dynamic>> toJson(List<GitHubRepo> items) =>
      items.map((e) => e.toJson()).toList();
}
