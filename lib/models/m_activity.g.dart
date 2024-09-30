// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'm_activity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MActivity _$MActivityFromJson(Map<String, dynamic> json) => MActivity(
      id: (json['id'] as num?)?.toInt(),
      popularSuggestionId: (json['popular_suggestion_id'] as num?)?.toInt(),
      day: (json['day'] as num?)?.toInt(),
      place: json['place'] as String?,
      meal: json['meal'] as String?,
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
    )..description = json['description'] as String?;

Map<String, dynamic> _$MActivityToJson(MActivity instance) => <String, dynamic>{
      'id': instance.id,
      'popular_suggestion_id': instance.popularSuggestionId,
      'day': instance.day,
      'place': instance.place,
      'meal': instance.meal,
      'description': instance.description,
      'created_at': instance.createdAt?.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
    };
