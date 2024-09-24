import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'm_account.g.dart';

@JsonSerializable()
class MAccount {
  MAccount({
    this.id,
    this.name,
    this.accountNumber,
    this.balance,
    this.alias,
    this.createdAt,
    this.updatedAt,
  });

  factory MAccount.fromJson(Map<String, dynamic> json) => _$MAccountFromJson(json);

  int? id;
  String? name;
  String? accountNumber;
  double? balance;
  String? alias;
  @JsonKey(name: 'created_at')
  DateTime? createdAt;
  @JsonKey(name: 'updated_at')
  DateTime? updatedAt;

  Map<String, dynamic> toJson() => _$MAccountToJson(this);
}
