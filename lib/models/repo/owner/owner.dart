import 'package:freezed_annotation/freezed_annotation.dart';

part 'owner.freezed.dart';
part 'owner.g.dart';

@freezed
class Owner with _$Owner {
  const factory Owner({
    required int id,
    @Default('') @JsonKey(name: 'avatar_url') String avatarUrl,
    @Default('') @JsonKey(name: 'html_url') String htmlUrl,
  }) = _Owner;

  factory Owner.fromJson(Map<String, dynamic> json) => _$OwnerFromJson(json);
}
