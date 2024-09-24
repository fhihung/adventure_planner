import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'm_response.g.dart';

@JsonSerializable()
class MResponse {
  MResponse({
    required this.statusCode,
    this.body,
  });

  factory MResponse.fromJson(Map<String, dynamic> json) => _$MResponseFromJson(json);

  int statusCode;
  dynamic body;

  Map<String, dynamic> toJson() => _$MResponseToJson(this);
}
