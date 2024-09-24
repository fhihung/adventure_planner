import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'm_user.g.dart';

@JsonSerializable()
class MUser {
  MUser(
    this.id,
    this.name,
    this.role,
    this.email,
    this.address,
    this.phoneNumber,
    this.createdAt,
    this.updatedAt,
  );

  factory MUser.fromJson(Map<String, dynamic> json) => _$MUserFromJson(json);

  int? id;
  String? name;
  int? role;
  String? address;
  String? email;
  @JsonKey(name: 'phone_number')
  String? phoneNumber;
  @JsonKey(name: 'created_at')
  final DateTime createdAt;
  @JsonKey(name: 'updated_at')
  final DateTime updatedAt;

  Map<String, dynamic> toJson() => _$MUserToJson(this);
}
