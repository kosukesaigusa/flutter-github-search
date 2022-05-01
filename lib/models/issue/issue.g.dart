// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'issue.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Issue _$$_IssueFromJson(Map<String, dynamic> json) => _$_Issue(
      id: json['id'] as int,
      htmlUrl: json['html_url'] as String,
      title: json['title'] as String? ?? '',
      body: json['body'] as String? ?? '',
      number: json['number'] as int? ?? 0,
      state: json['state'] as String? ?? 'state',
      createdAt: DateTime.parse(json['updated_at'] as String),
    );

Map<String, dynamic> _$$_IssueToJson(_$_Issue instance) => <String, dynamic>{
      'id': instance.id,
      'html_url': instance.htmlUrl,
      'title': instance.title,
      'body': instance.body,
      'number': instance.number,
      'state': instance.state,
      'updated_at': instance.createdAt.toIso8601String(),
    };
