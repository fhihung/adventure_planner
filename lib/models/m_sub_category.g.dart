// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'm_sub_category.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MSubCategory _$MSubCategoryFromJson(Map<String, dynamic> json) => MSubCategory(
      (json['id'] as num?)?.toInt(),
      json['name'] as String?,
      (json['categoryId'] as num?)?.toInt(),
    );

Map<String, dynamic> _$MSubCategoryToJson(MSubCategory instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'categoryId': instance.categoryId,
    };
