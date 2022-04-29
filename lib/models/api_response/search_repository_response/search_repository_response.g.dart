// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_repository_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SearchRepoResponse _$$_SearchRepoResponseFromJson(
        Map<String, dynamic> json) =>
    _$_SearchRepoResponse(
      totalCount: json['total_count'] as int? ?? 0,
      incompleteResults: json['incomplete_results'] as bool? ?? false,
      items: json['items'] == null
          ? const <Repo>[]
          : const SearchRepoResponseDataConverter().fromJson(json['items']),
    );

Map<String, dynamic> _$$_SearchRepoResponseToJson(
        _$_SearchRepoResponse instance) =>
    <String, dynamic>{
      'total_count': instance.totalCount,
      'incomplete_results': instance.incompleteResults,
      'items': const SearchRepoResponseDataConverter().toJson(instance.items),
    };
