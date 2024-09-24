import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'm_sub_category.g.dart';

@JsonSerializable()
class MSubCategory {
  MSubCategory(
    this.id,
    this.name,
    this.categoryId,
  );

  factory MSubCategory.fromJson(Map<String, dynamic> json) => _$MSubCategoryFromJson(json);

  int? id;
  String? name;
  int? categoryId;

  Map<String, dynamic> toJson() => _$MSubCategoryToJson(this);
}
