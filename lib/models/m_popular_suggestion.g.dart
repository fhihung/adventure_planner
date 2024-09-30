// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'm_popular_suggestion.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MPopularSuggestion _$MPopularSuggestionFromJson(Map<String, dynamic> json) =>
    MPopularSuggestion(
      id: (json['id'] as num?)?.toInt(),
      location: json['location'] as String?,
      days: (json['days'] as num?)?.toInt(),
      people: (json['people'] as num?)?.toInt(),
      costEstimate: json['cost_estimate'] as String?,
      description: json['description'] as String?,
      activity: (json['activities'] as List<dynamic>?)
          ?.map((e) => MActivity.fromJson(e as Map<String, dynamic>))
          .toList(),
      hotels: json['hotels'] as String?,
      transportation: json['transportation'] as String?,
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
    );

Map<String, dynamic> _$MPopularSuggestionToJson(MPopularSuggestion instance) =>
    <String, dynamic>{
      'id': instance.id,
      'location': instance.location,
      'days': instance.days,
      'people': instance.people,
      'cost_estimate': instance.costEstimate,
      'hotels': instance.hotels,
      'transportation': instance.transportation,
      'description': instance.description,
      'activities': instance.activity,
      'created_at': instance.createdAt?.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
    };
