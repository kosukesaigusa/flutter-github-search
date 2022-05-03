// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'issues_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_IssuesResponse _$$_IssuesResponseFromJson(Map<String, dynamic> json) =>
    _$_IssuesResponse(
      success: json['success'] as bool? ?? true,
      message: json['message'] as String? ?? '',
      items: (json['items'] as List<dynamic>?)
              ?.map((e) => Issue.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <Issue>[],
    );

Map<String, dynamic> _$$_IssuesResponseToJson(_$_IssuesResponse instance) =>
    <String, dynamic>{
      'success': instance.success,
      'message': instance.message,
      'items': instance.items,
    };
