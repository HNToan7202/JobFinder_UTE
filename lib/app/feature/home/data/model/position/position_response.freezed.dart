// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'position_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PositionResponse _$PositionResponseFromJson(Map<String, dynamic> json) {
  return _PositionResponse.fromJson(json);
}

/// @nodoc
mixin _$PositionResponse {
  String? get status => throw _privateConstructorUsedError;
  int? get code => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  int? get time => throw _privateConstructorUsedError;
  List<Result>? get result => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PositionResponseCopyWith<PositionResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PositionResponseCopyWith<$Res> {
  factory $PositionResponseCopyWith(
          PositionResponse value, $Res Function(PositionResponse) then) =
      _$PositionResponseCopyWithImpl<$Res, PositionResponse>;
  @useResult
  $Res call(
      {String? status,
      int? code,
      String? message,
      int? time,
      List<Result>? result});
}

/// @nodoc
class _$PositionResponseCopyWithImpl<$Res, $Val extends PositionResponse>
    implements $PositionResponseCopyWith<$Res> {
  _$PositionResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? code = freezed,
    Object? message = freezed,
    Object? time = freezed,
    Object? result = freezed,
  }) {
    return _then(_value.copyWith(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      time: freezed == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as int?,
      result: freezed == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as List<Result>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PositionResponseCopyWith<$Res>
    implements $PositionResponseCopyWith<$Res> {
  factory _$$_PositionResponseCopyWith(
          _$_PositionResponse value, $Res Function(_$_PositionResponse) then) =
      __$$_PositionResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? status,
      int? code,
      String? message,
      int? time,
      List<Result>? result});
}

/// @nodoc
class __$$_PositionResponseCopyWithImpl<$Res>
    extends _$PositionResponseCopyWithImpl<$Res, _$_PositionResponse>
    implements _$$_PositionResponseCopyWith<$Res> {
  __$$_PositionResponseCopyWithImpl(
      _$_PositionResponse _value, $Res Function(_$_PositionResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? code = freezed,
    Object? message = freezed,
    Object? time = freezed,
    Object? result = freezed,
  }) {
    return _then(_$_PositionResponse(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      time: freezed == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as int?,
      result: freezed == result
          ? _value._result
          : result // ignore: cast_nullable_to_non_nullable
              as List<Result>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PositionResponse implements _PositionResponse {
  const _$_PositionResponse(
      {this.status,
      this.code,
      this.message,
      this.time,
      final List<Result>? result})
      : _result = result;

  factory _$_PositionResponse.fromJson(Map<String, dynamic> json) =>
      _$$_PositionResponseFromJson(json);

  @override
  final String? status;
  @override
  final int? code;
  @override
  final String? message;
  @override
  final int? time;
  final List<Result>? _result;
  @override
  List<Result>? get result {
    final value = _result;
    if (value == null) return null;
    if (_result is EqualUnmodifiableListView) return _result;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'PositionResponse(status: $status, code: $code, message: $message, time: $time, result: $result)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PositionResponse &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.time, time) || other.time == time) &&
            const DeepCollectionEquality().equals(other._result, _result));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, status, code, message, time,
      const DeepCollectionEquality().hash(_result));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PositionResponseCopyWith<_$_PositionResponse> get copyWith =>
      __$$_PositionResponseCopyWithImpl<_$_PositionResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PositionResponseToJson(
      this,
    );
  }
}

abstract class _PositionResponse implements PositionResponse {
  const factory _PositionResponse(
      {final String? status,
      final int? code,
      final String? message,
      final int? time,
      final List<Result>? result}) = _$_PositionResponse;

  factory _PositionResponse.fromJson(Map<String, dynamic> json) =
      _$_PositionResponse.fromJson;

  @override
  String? get status;
  @override
  int? get code;
  @override
  String? get message;
  @override
  int? get time;
  @override
  List<Result>? get result;
  @override
  @JsonKey(ignore: true)
  _$$_PositionResponseCopyWith<_$_PositionResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

Result _$ResultFromJson(Map<String, dynamic> json) {
  return _Result.fromJson(json);
}

/// @nodoc
mixin _$Result {
  String? get positionId => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  int? get amountPosition => throw _privateConstructorUsedError;
  String? get icon => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ResultCopyWith<Result> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResultCopyWith<$Res> {
  factory $ResultCopyWith(Result value, $Res Function(Result) then) =
      _$ResultCopyWithImpl<$Res, Result>;
  @useResult
  $Res call(
      {String? positionId, String? name, int? amountPosition, String? icon});
}

/// @nodoc
class _$ResultCopyWithImpl<$Res, $Val extends Result>
    implements $ResultCopyWith<$Res> {
  _$ResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? positionId = freezed,
    Object? name = freezed,
    Object? amountPosition = freezed,
    Object? icon = freezed,
  }) {
    return _then(_value.copyWith(
      positionId: freezed == positionId
          ? _value.positionId
          : positionId // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      amountPosition: freezed == amountPosition
          ? _value.amountPosition
          : amountPosition // ignore: cast_nullable_to_non_nullable
              as int?,
      icon: freezed == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ResultCopyWith<$Res> implements $ResultCopyWith<$Res> {
  factory _$$_ResultCopyWith(_$_Result value, $Res Function(_$_Result) then) =
      __$$_ResultCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? positionId, String? name, int? amountPosition, String? icon});
}

/// @nodoc
class __$$_ResultCopyWithImpl<$Res>
    extends _$ResultCopyWithImpl<$Res, _$_Result>
    implements _$$_ResultCopyWith<$Res> {
  __$$_ResultCopyWithImpl(_$_Result _value, $Res Function(_$_Result) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? positionId = freezed,
    Object? name = freezed,
    Object? amountPosition = freezed,
    Object? icon = freezed,
  }) {
    return _then(_$_Result(
      positionId: freezed == positionId
          ? _value.positionId
          : positionId // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      amountPosition: freezed == amountPosition
          ? _value.amountPosition
          : amountPosition // ignore: cast_nullable_to_non_nullable
              as int?,
      icon: freezed == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Result implements _Result {
  const _$_Result({this.positionId, this.name, this.amountPosition, this.icon});

  factory _$_Result.fromJson(Map<String, dynamic> json) =>
      _$$_ResultFromJson(json);

  @override
  final String? positionId;
  @override
  final String? name;
  @override
  final int? amountPosition;
  @override
  final String? icon;

  @override
  String toString() {
    return 'Result(positionId: $positionId, name: $name, amountPosition: $amountPosition, icon: $icon)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Result &&
            (identical(other.positionId, positionId) ||
                other.positionId == positionId) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.amountPosition, amountPosition) ||
                other.amountPosition == amountPosition) &&
            (identical(other.icon, icon) || other.icon == icon));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, positionId, name, amountPosition, icon);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ResultCopyWith<_$_Result> get copyWith =>
      __$$_ResultCopyWithImpl<_$_Result>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ResultToJson(
      this,
    );
  }
}

abstract class _Result implements Result {
  const factory _Result(
      {final String? positionId,
      final String? name,
      final int? amountPosition,
      final String? icon}) = _$_Result;

  factory _Result.fromJson(Map<String, dynamic> json) = _$_Result.fromJson;

  @override
  String? get positionId;
  @override
  String? get name;
  @override
  int? get amountPosition;
  @override
  String? get icon;
  @override
  @JsonKey(ignore: true)
  _$$_ResultCopyWith<_$_Result> get copyWith =>
      throw _privateConstructorUsedError;
}
