// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'm_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MResponse _$MResponseFromJson(Map<String, dynamic> json) => MResponse(
      statusCode: (json['statusCode'] as num).toInt(),
      body: json['body'],
    );

Map<String, dynamic> _$MResponseToJson(MResponse instance) => <String, dynamic>{
      'statusCode': instance.statusCode,
      'body': instance.body,
    };
