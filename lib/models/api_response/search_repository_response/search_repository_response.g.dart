// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_repository_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SearchRepositoryResponse _$$_SearchRepositoryResponseFromJson(
        Map<String, dynamic> json) =>
    _$_SearchRepositoryResponse(
      totalCount: json['total_count'] as int? ?? 0,
      incompleteResults: json['incomplete_results'] as bool? ?? false,
      items: json['items'] == null
          ? const <GitHubRepository>[]
          : const SearchRepositoryResponseDataConverter()
              .fromJson(json['items']),
    );

Map<String, dynamic> _$$_SearchRepositoryResponseToJson(
        _$_SearchRepositoryResponse instance) =>
    <String, dynamic>{
      'total_count': instance.totalCount,
      'incomplete_results': instance.incompleteResults,
      'items':
          const SearchRepositoryResponseDataConverter().toJson(instance.items),
    };
