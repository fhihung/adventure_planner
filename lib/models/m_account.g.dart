// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'm_account.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MAccount _$MAccountFromJson(Map<String, dynamic> json) => MAccount(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
      accountNumber: json['accountNumber'] as String?,
      balance: (json['balance'] as num?)?.toDouble(),
      alias: json['alias'] as String?,
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
    );

Map<String, dynamic> _$MAccountToJson(MAccount instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'accountNumber': instance.accountNumber,
      'balance': instance.balance,
      'alias': instance.alias,
      'created_at': instance.createdAt?.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
    };
