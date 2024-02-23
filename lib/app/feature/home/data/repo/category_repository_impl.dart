

import '../../../../../core/models/common_response.dart';
import '../../../../../core/service/api_service_impl.dart';
import '../../domain/repo/category_repository.dart';
import '../model/categories_req.dart';
import '../model/categories_response.dart';

class CategoryRepositoryImpl implements CategoryRepository {
  final ApiServiceImpl service;
  CategoryRepositoryImpl({
    required this.service,
  });

  @override
  Future<CommonResponse<CategoriesResponseData>> getCategory(
      CategoriesReq categoriesReq) {
    String page = categoriesReq.page ?? "1";
    String size = categoriesReq.size ?? "10";
    return service.get<CategoriesReq, CategoriesResponseData>(
        path:
            "https://foods-delivery.azurewebsites.net/api/v1/category?page=$page&size=$size",
        params: null,
        tFromMap: CategoriesResponseData.fromMap);
  }
}
