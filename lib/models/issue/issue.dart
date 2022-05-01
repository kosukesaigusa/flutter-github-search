import 'package:freezed_annotation/freezed_annotation.dart';

part 'issue.freezed.dart';
part 'issue.g.dart';

@freezed
class Issue with _$Issue {
  const factory Issue({
    required int id,
    @JsonKey(name: 'html_url') required String htmlUrl,
    @Default('') String title,
    @Default('') String body,
    @Default(0) int number,
    @Default('state') String state,
    @JsonKey(name: 'updated_at') required DateTime createdAt,
  }) = _Issue;

  factory Issue.fromJson(Map<String, dynamic> json) => _$IssueFromJson(json);
}
