import 'package:freezed_annotation/freezed_annotation.dart';

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
class SearchRepositoryResponseDataConverter implements JsonConverter<List<Repo>, dynamic> {
  const SearchRepositoryResponseDataConverter();

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
