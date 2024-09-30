import 'package:freezed_annotation/freezed_annotation.dart';

part 'm_activity.g.dart';

@JsonSerializable()
class MActivity {
  MActivity({
    this.id,
    this.popularSuggestionId,
    this.day,
    this.place,
    this.meal,
    this.createdAt,
    this.updatedAt,
  });

  factory MActivity.fromJson(Map<String, dynamic> json) => _$MActivityFromJson(json);

  int? id;
  @JsonKey(name: 'popular_suggestion_id')
  int? popularSuggestionId;
  int? day;
  String? place;
  String? meal;
  String? description;
  @JsonKey(name: 'created_at')
  DateTime? createdAt;
  @JsonKey(name: 'updated_at')
  DateTime? updatedAt;

  Map<String, dynamic> toJson() => _$MActivityToJson(this);
}
