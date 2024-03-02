import 'package:jobhub_ute/app/feature/home/data/model/position/position_response.dart';
import '../../../../../core/models/common_response.dart';

abstract class PositionRepository {
  Future<CommonResponse<PositionResponse>> getAllPosition();
}
