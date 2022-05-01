// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fetch_issue_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_FetchIssueResponse _$$_FetchIssueResponseFromJson(
        Map<String, dynamic> json) =>
    _$_FetchIssueResponse(
      totalCount: json['total_count'] as int? ?? 0,
      incompleteResults: json['incomplete_results'] as bool? ?? false,
      items: json['items'] == null
          ? const <Issue>[]
          : const FetchIssueResponseItemsConverter().fromJson(json['items']),
    );

Map<String, dynamic> _$$_FetchIssueResponseToJson(
        _$_FetchIssueResponse instance) =>
    <String, dynamic>{
      'total_count': instance.totalCount,
      'incomplete_results': instance.incompleteResults,
      'items': const FetchIssueResponseItemsConverter().toJson(instance.items),
    };
