// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'm_transaction.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MTransaction _$MTransactionFromJson(Map<String, dynamic> json) => MTransaction(
      id: (json['id'] as num?)?.toInt(),
      title: json['title'] as String?,
      accountId: (json['account_id'] as num?)?.toInt(),
      account: json['account'] == null
          ? null
          : MAccount.fromJson(json['account'] as Map<String, dynamic>),
      categoryId: (json['category_id'] as num?)?.toInt(),
      category: json['category'] == null
          ? null
          : MCategory.fromJson(json['category'] as Map<String, dynamic>),
      amount: (json['amount'] as num?)?.toDouble(),
      note: json['note'] as String?,
      transactionDate: json['transaction_date'] == null
          ? null
          : DateTime.parse(json['transaction_date'] as String),
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
    );

Map<String, dynamic> _$MTransactionToJson(MTransaction instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'amount': instance.amount,
      'note': instance.note,
      'transaction_date': instance.transactionDate?.toIso8601String(),
      'category_id': instance.categoryId,
      'category': instance.category,
      'account': instance.account,
      'account_id': instance.accountId,
      'created_at': instance.createdAt?.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
    };
