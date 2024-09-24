import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'm_category.g.dart';

@JsonSerializable()
class MCategory {
  MCategory({
    this.id,
    this.name,
    this.type,
    this.iconPath,
    this.description,
  });

  factory MCategory.fromJson(Map<String, dynamic> json) => _$MCategoryFromJson(json);

  int? id;
  String? name;
  @JsonKey(name: 'type')
  int? type;
  @JsonKey(name: 'icon_path')
  String? iconPath;
  String? description;

  Map<String, dynamic> toJson() => _$MCategoryToJson(this);
}
