// To parse this JSON data, do
//
//     final positionResponse = positionResponseFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'position_response.freezed.dart';
part 'position_response.g.dart';

PositionResponse positionResponseFromJson(String str) =>
    PositionResponse.fromJson(json.decode(str));

String positionResponseToJson(PositionResponse data) =>
    json.encode(data.toJson());

@freezed
class PositionResponse with _$PositionResponse {
  const factory PositionResponse({
    String? status,
    int? code,
    String? message,
    int? time,
    List<Result>? result,
  }) = _PositionResponse;

  factory PositionResponse.fromJson(Map<String, dynamic> json) =>
      _$PositionResponseFromJson(json);
}

@freezed
class Result with _$Result {
  const factory Result({
    String? positionId,
    String? name,
    int? amountPosition,
    String? icon,
  }) = _Result;

  factory Result.fromJson(Map<String, dynamic> json) => _$ResultFromJson(json);
}
