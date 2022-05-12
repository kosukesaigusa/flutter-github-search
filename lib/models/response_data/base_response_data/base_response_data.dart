import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../constants/map.dart';
import '../../../utils/api.dart';
import '../../json_converter.dart';

part 'base_response_data.freezed.dart';
part 'base_response_data.g.dart';

/// アプリケーションで取り扱う HTTP のレスポンスボディのベースとなる型
/// success, message などのフィールドは共通で存在するもの（存在しなければデフォルト値）を、
/// その他の値はすべて Map<String, dynamic> で data に格納して取り扱うことができるよう、
/// HTTP のレスポンスボディは、ApiClient の返り値の時点ですべて
/// ApiResponse.fromDynamic(responseData) で BaseResponseData 型のインスタンスに変換される。
/// Repository 層では、この Map<String, dynamic> data に型を付けるよう
/// FooResponseData.fromBaseResponseData(baseResponseData) のようなコンストラクタを定義する。
@freezed
class BaseResponseData with _$BaseResponseData {
  const factory BaseResponseData({
    @Default(true) bool success,
    @Default('') String message,
    @Default(emptyMap) @BaseResponseDataConverter() Map<String, dynamic> data,
  }) = _BaseResponseData;

  factory BaseResponseData.fromJson(Map<String, dynamic> json) => _$BaseResponseDataFromJson(json);

  /// HTTP レスポンスのレスポンスデータの方は不定 (dynamic) なので、
  /// それらのレスポンスデータはすべてこの fromDynamic コンストラクタに渡して、
  /// dynamic を適当に Map<String, dynamic> に変更した上で、fromJson コンストラクタに渡して
  /// BaseResponseData インスタンスを生成して返す。
  factory BaseResponseData.fromDynamic(dynamic responseData) {
    final data = toResponseJson(responseData);
    final baseData = <String, dynamic>{
      'success': data['success'] ?? true,
      'message': data['message'] ?? '',
    };
    // baseData と重複するキーは取り除く
    data.removeWhere((key, dynamic value) => baseData.containsKey(key));
    final keys = data.keys;
    if (keys.isEmpty) {
      return BaseResponseData.fromJson(baseData);
    }
    if (keys.length == 1) {
      return BaseResponseData.fromJson(<String, dynamic>{
        ...baseData,
        'data': data[data.keys.first],
      });
    }
    return BaseResponseData.fromJson(<String, dynamic>{
      ...baseData,
      'data': <String, dynamic>{
        for (final k in data.keys) ...<String, dynamic>{k: data[k]},
      },
    });
  }
}
