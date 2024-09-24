// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'm_category.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MCategory _$MCategoryFromJson(Map<String, dynamic> json) => MCategory(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
      type: (json['type'] as num?)?.toInt(),
      iconPath: json['icon_path'] as String?,
      description: json['description'] as String?,
    );

Map<String, dynamic> _$MCategoryToJson(MCategory instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'type': instance.type,
      'icon_path': instance.iconPath,
      'description': instance.description,
    };
