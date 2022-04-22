// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'base_api_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_BaseApiResponse _$$_BaseApiResponseFromJson(Map<String, dynamic> json) =>
    _$_BaseApiResponse(
      success: json['success'] as bool? ?? true,
      message: json['message'] as String? ?? '',
      data: json['data'] == null
          ? const <String, dynamic>{}
          : const BaseApiResponseDataConverter().fromJson(json['data']),
    );

Map<String, dynamic> _$$_BaseApiResponseToJson(_$_BaseApiResponse instance) =>
    <String, dynamic>{
      'success': instance.success,
      'message': instance.message,
      'data': const BaseApiResponseDataConverter().toJson(instance.data),
    };
