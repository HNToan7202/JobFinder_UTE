import '../../../../../core/models/common_response.dart';
import '../../data/model/categories_req.dart';
import '../../data/model/categories_response.dart';

abstract class CategoryRepository {
  Future<CommonResponse<CategoriesResponseData>> getCategory(
      CategoriesReq categoriesReq);
}
