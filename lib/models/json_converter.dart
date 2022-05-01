import 'package:freezed_annotation/freezed_annotation.dart';

import 'issue/issue.dart';
import 'repo/repo.dart';

/// HTTP のレスポンスボディのデータ (dynamic) を
/// 適当な Map<String, dynamic> に変換するコンバータ。
class BaseApiResponseDataConverter implements JsonConverter<Map<String, dynamic>, dynamic> {
  const BaseApiResponseDataConverter();

  @override
  Map<String, dynamic> fromJson(dynamic data) {
    if (data == null) {
      return <String, dynamic>{};
    }
    if (data is Map) {
      // データが Map である場合はそのまま Map<String, dynamic> を返す
      return data as Map<String, dynamic>;
    }
    if (data is List) {
      // データがリストである場合は
      // 'items' のキーをつけて Map<String, List<dynamic>> にして返す
      return <String, List<dynamic>>{'items': data};
    }
    // その他の場合は適当に 'data' をキーとする Map にして返す
    return <String, dynamic>{'data': data};
  }

  @override
  Map<String, dynamic> toJson(Map<String, dynamic> data) => data;
}

/// GET /search/repository API のレスポンスデータの items の コンバータ
class SearchRepoResponseItemsConverter implements JsonConverter<List<Repo>, dynamic> {
  const SearchRepoResponseItemsConverter();

  @override
  List<Repo> fromJson(dynamic items) {
    if (items == null) {
      return <Repo>[];
    }
    if (items is List) {
      return items.map((dynamic e) => e as Map<String, dynamic>).map(Repo.fromJson).toList();
    }
    return <Repo>[];
  }

  @override
  List<Map<String, dynamic>> toJson(List<Repo> items) => items.map((e) => e.toJson()).toList();
}

/// GET /repos/{owner}/{repo}/issues API のレスポンスデータの items の コンバータ
class FetchIssueResponseItemsConverter implements JsonConverter<List<Issue>, dynamic> {
  const FetchIssueResponseItemsConverter();

  @override
  List<Issue> fromJson(dynamic items) {
    if (items == null) {
      return <Issue>[];
    }
    if (items is List) {
      return items.map((dynamic e) => e as Map<String, dynamic>).map(Issue.fromJson).toList();
    }
    return <Issue>[];
  }

  @override
  List<Map<String, dynamic>> toJson(List<Issue> items) => items.map((e) => e.toJson()).toList();
}
