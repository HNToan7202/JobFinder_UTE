part of 'position_cubit.dart';

@freezed
class PositionState with _$PositionState {
  const factory PositionState.initial() = _Initial;

  const factory PositionState.loading() = _Loading;

  const factory PositionState.loaded(
    Result position) = _Loaded;
}
