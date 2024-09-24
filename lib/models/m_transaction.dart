import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:adventure_planner/models/m_category.dart';

import 'm_account.dart';

part 'm_transaction.g.dart';

@JsonSerializable()
class MTransaction {
  MTransaction({
    this.id,
    this.title,
    this.accountId,
    this.account,
    this.categoryId,
    this.category,
    this.amount,
    this.note,
    this.transactionDate,
    this.createdAt,
    this.updatedAt,
  });

  factory MTransaction.fromJson(Map<String, dynamic> json) => _$MTransactionFromJson(json);

  int? id;
  String? title;
  double? amount;
  String? note;
  @JsonKey(name: 'transaction_date')
  DateTime? transactionDate;
  @JsonKey(name: 'category_id')
  int? categoryId;
  MCategory? category;
  MAccount? account;
  @JsonKey(name: 'account_id')
  int? accountId;
  @JsonKey(name: 'created_at')
  DateTime? createdAt;
  @JsonKey(name: 'updated_at')
  DateTime? updatedAt;

  Map<String, dynamic> toJson() => _$MTransactionToJson(this);
}
