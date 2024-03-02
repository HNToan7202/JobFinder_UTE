import 'package:jobhub_ute/app/feature/home/data/model/position/pageable.dart';
import 'package:jobhub_ute/app/feature/home/data/model/position/position_response.dart';
import 'package:jobhub_ute/app/feature/home/domain/repo/position_repository.dart';
import 'package:jobhub_ute/core/base_url.dart';
import 'package:jobhub_ute/core/models/common_response.dart';
import 'package:jobhub_ute/core/path.dart';

import '../../../../../core/service/api_service_impl.dart';

class PositionRepositoryImpl implements PositionRepository {
  final ApiServiceImpl service;
  PositionRepositoryImpl({
    required this.service,
  });

  @override
  Future<CommonResponse<PositionResponse>> getAllPosition() {
    return service.get<Pageable, PositionResponse>(
        path: BaseURL.URL + Path.postion,
        params: null,
        tFromMap: PositionResponse.fromJson);
  }
}
