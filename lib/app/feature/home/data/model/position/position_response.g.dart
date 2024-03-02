// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'position_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PositionResponse _$$_PositionResponseFromJson(Map<String, dynamic> json) =>
    _$_PositionResponse(
      status: json['status'] as String?,
      code: json['code'] as int?,
      message: json['message'] as String?,
      time: json['time'] as int?,
      result: (json['result'] as List<dynamic>?)
          ?.map((e) => Result.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_PositionResponseToJson(_$_PositionResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'code': instance.code,
      'message': instance.message,
      'time': instance.time,
      'result': instance.result,
    };

_$_Result _$$_ResultFromJson(Map<String, dynamic> json) => _$_Result(
      positionId: json['positionId'] as String?,
      name: json['name'] as String?,
      amountPosition: json['amountPosition'] as int?,
      icon: json['icon'] as String?,
    );

Map<String, dynamic> _$$_ResultToJson(_$_Result instance) => <String, dynamic>{
      'positionId': instance.positionId,
      'name': instance.name,
      'amountPosition': instance.amountPosition,
      'icon': instance.icon,
    };
