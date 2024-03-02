import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:jobhub_ute/app/feature/home/data/model/position/position_response.dart';
import 'package:jobhub_ute/app/feature/home/data/repo/position_repositories_impl.dart';
import 'package:jobhub_ute/di.dart';

part 'position_state.dart';
part 'position_cubit.freezed.dart';

class PositionCubit extends Cubit<PositionState> {
  PositionCubit() : super(PositionState.initial());

  Future<void> getAllPosition() async {
    emit(const PositionState.loading());
    final res = await locator.get<PositionRepositoryImpl>().getAllPosition();
    print(res);
  }
}
