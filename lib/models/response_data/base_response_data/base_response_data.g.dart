// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'base_response_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_BaseResponseData _$$_BaseResponseDataFromJson(Map<String, dynamic> json) =>
    _$_BaseResponseData(
      success: json['success'] as bool? ?? true,
      message: json['message'] as String? ?? '',
      data: json['data'] == null
          ? emptyMap
          : const BaseResponseDataConverter().fromJson(json['data']),
    );

Map<String, dynamic> _$$_BaseResponseDataToJson(_$_BaseResponseData instance) =>
    <String, dynamic>{
      'success': instance.success,
      'message': instance.message,
      'data': const BaseResponseDataConverter().toJson(instance.data),
    };
