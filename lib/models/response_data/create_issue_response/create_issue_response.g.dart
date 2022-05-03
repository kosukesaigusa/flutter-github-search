// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_issue_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CreateIssueResponse _$$_CreateIssueResponseFromJson(
        Map<String, dynamic> json) =>
    _$_CreateIssueResponse(
      success: json['success'] as bool? ?? true,
      message: json['message'] as String? ?? '',
      issue: Issue.fromJson(json['issue'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_CreateIssueResponseToJson(
        _$_CreateIssueResponse instance) =>
    <String, dynamic>{
      'success': instance.success,
      'message': instance.message,
      'issue': instance.issue,
    };
