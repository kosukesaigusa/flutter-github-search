// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fetch_issues_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_FetchIssuesResponse _$$_FetchIssuesResponseFromJson(
        Map<String, dynamic> json) =>
    _$_FetchIssuesResponse(
      success: json['success'] as bool? ?? true,
      message: json['message'] as String? ?? '',
      items: (json['items'] as List<dynamic>?)
              ?.map((e) => Issue.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <Issue>[],
    );

Map<String, dynamic> _$$_FetchIssuesResponseToJson(
        _$_FetchIssuesResponse instance) =>
    <String, dynamic>{
      'success': instance.success,
      'message': instance.message,
      'items': instance.items,
    };
