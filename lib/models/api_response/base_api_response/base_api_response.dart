import 'package:flutter_github_search/utils/extensions/map.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../json_converter.dart';

part 'base_api_response.freezed.dart';
part 'base_api_response.g.dart';

/// アプリケーションで取り扱う HTTP のレスポンスボディのベースとなる型
/// success, message などのフィールドは共通で存在するもの（存在しなければデフォルト値）を、
/// その他の値はすべて Map<String, dynamic> で data に格納して取り扱うことができるよう、
/// HTTP のレスポンスボディは一度すべて ApiResponse.fromResponseData(responseData) で
/// ApiResponse 型のインスタンスにしてから使用することにする。
@freezed
class BaseApiResponse with _$BaseApiResponse {
  const factory BaseApiResponse({
    @Default(true) bool success,
    @Default('') String message,
    @Default(<String, dynamic>{}) @BaseApiResponseDataConverter() Map<String, dynamic> data,
  }) = _BaseApiResponse;

  factory BaseApiResponse.fromJson(Map<String, dynamic> json) => _$BaseApiResponseFromJson(json);

  /// HTTP レスポンスのレスポンスは一度すべてこのコンストラクタで
  /// ApiResponse 型のインスタンスにしてから使用することにする。
  factory BaseApiResponse.fromResponseData(Map<String, dynamic> responseData) {
    final baseData = <String, dynamic>{
      'success': responseData.getByKey('success') ?? true,
      'message': responseData.getByKey('message') ?? '',
    };
    // baseData と重複するキーは取り除く
    responseData.removeWhere((key, dynamic value) => baseData.containsKey(key));
    final keys = responseData.keys;
    if (keys.isEmpty) {
      return BaseApiResponse.fromJson(baseData);
    }
    if (keys.length == 1) {
      return BaseApiResponse.fromJson(<String, dynamic>{
        ...baseData,
        'data': responseData[responseData.keys.first],
      });
    }
    return BaseApiResponse.fromJson(<String, dynamic>{
      ...baseData,
      'data': <String, dynamic>{
        for (final k in keys) ...<String, dynamic>{k: responseData[k]},
      },
    });
  }
}
