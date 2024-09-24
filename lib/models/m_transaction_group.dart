import 'package:adventure_planner/models/m_transaction.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'm_transaction_group.g.dart';

@JsonSerializable()
class MTransactionGroup {
  MTransactionGroup({
    this.date,
    this.transactions,
    this.totalExpense,
    this.totalIncome,
    this.totalBalance,
  });

  String? date;
  List<MTransaction>? transactions;
  @JsonKey(name: 'total_expense')
  double? totalExpense;
  @JsonKey(name: 'total_income')
  double? totalIncome;
  @JsonKey(name: 'total_balance')
  double? totalBalance;

  Map<String, dynamic> toJson() => _$MTransactionGroupToJson(this);

  factory MTransactionGroup.fromJson(Map<String, dynamic> json) => _$MTransactionGroupFromJson(json);
}
