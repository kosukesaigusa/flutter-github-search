// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'issue_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_IssueResponse _$$_IssueResponseFromJson(Map<String, dynamic> json) =>
    _$_IssueResponse(
      success: json['success'] as bool? ?? true,
      message: json['message'] as String? ?? '',
      issue: Issue.fromJson(json['issue'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_IssueResponseToJson(_$_IssueResponse instance) =>
    <String, dynamic>{
      'success': instance.success,
      'message': instance.message,
      'issue': instance.issue,
    };
