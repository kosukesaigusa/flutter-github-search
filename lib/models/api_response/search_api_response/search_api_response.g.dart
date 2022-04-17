// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_api_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SearchApiResponse _$$_SearchApiResponseFromJson(Map<String, dynamic> json) =>
    _$_SearchApiResponse(
      totalCount: json['total_count'] as int? ?? 0,
      incompleteResults: json['incomplete_results'] as bool? ?? false,
      items: json['items'] == null
          ? const <GitHubRepository>[]
          : const SearchApiResponseDataConverter().fromJson(json['items']),
    );

Map<String, dynamic> _$$_SearchApiResponseToJson(
        _$_SearchApiResponse instance) =>
    <String, dynamic>{
      'total_count': instance.totalCount,
      'incomplete_results': instance.incompleteResults,
      'items': const SearchApiResponseDataConverter().toJson(instance.items),
    };
