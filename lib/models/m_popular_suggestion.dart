import 'package:adventure_planner/models/m_activity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'm_popular_suggestion.g.dart';

@JsonSerializable()
class MPopularSuggestion {
  MPopularSuggestion({
    this.id,
    this.location,
    this.days,
    this.people,
    this.costEstimate,
    this.description,
    this.activity,
    this.hotels,
    this.transportation,
    this.createdAt,
    this.updatedAt,
  });

  factory MPopularSuggestion.fromJson(Map<String, dynamic> json) => _$MPopularSuggestionFromJson(json);

  int? id;
  String? location;
  int? days;
  int? people;
  @JsonKey(name: 'cost_estimate')
  String? costEstimate;
  String? hotels;
  String? transportation;
  String? description;
  @JsonKey(name: 'activities')
  List<MActivity>? activity;
  @JsonKey(name: 'created_at')
  DateTime? createdAt;
  @JsonKey(name: 'updated_at')
  DateTime? updatedAt;

  Map<String, dynamic> toJson() => _$MPopularSuggestionToJson(this);
}
