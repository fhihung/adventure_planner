// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'm_transaction_group.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MTransactionGroup _$MTransactionGroupFromJson(Map<String, dynamic> json) =>
    MTransactionGroup(
      date: json['date'] as String?,
      transactions: (json['transactions'] as List<dynamic>?)
          ?.map((e) => MTransaction.fromJson(e as Map<String, dynamic>))
          .toList(),
      totalExpense: (json['total_expense'] as num?)?.toDouble(),
      totalIncome: (json['total_income'] as num?)?.toDouble(),
      totalBalance: (json['total_balance'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$MTransactionGroupToJson(MTransactionGroup instance) =>
    <String, dynamic>{
      'date': instance.date,
      'transactions': instance.transactions,
      'total_expense': instance.totalExpense,
      'total_income': instance.totalIncome,
      'total_balance': instance.totalBalance,
    };
