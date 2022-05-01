// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_issue_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CreateIssueResponse _$$_CreateIssueResponseFromJson(
        Map<String, dynamic> json) =>
    _$_CreateIssueResponse(
      issue: Issue.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_CreateIssueResponseToJson(
        _$_CreateIssueResponse instance) =>
    <String, dynamic>{
      'data': instance.issue,
    };
