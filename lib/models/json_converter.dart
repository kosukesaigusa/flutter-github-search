import 'package:freezed_annotation/freezed_annotation.dart';

import '../constants/map.dart';

///
class BaseResponseDataConverter implements JsonConverter<Map<String, dynamic>, dynamic> {
  const BaseResponseDataConverter();

  @override
  Map<String, dynamic> fromJson(dynamic data) {
    if (data == null) {
      return emptyMap;
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
