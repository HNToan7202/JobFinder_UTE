import '../../../../../core/base_url.dart';
import '../../../../../core/models/common_response.dart';
import '../../../../../core/service/api_service_impl.dart';
import '../../domain/repo/user_repository.dart';
import '../model/change_avt.dart';
import '../model/change_password_request.dart';
import '../model/update_profile_req.dart';

class UserRepositoryImpl implements UserRepository {
  final ApiServiceImpl service;

  static String BASE_URL = BaseURL.BASE_URL;
  static String BASE_URL2 = BaseURL.BASE_URL2;

  UserRepositoryImpl({required this.service});
  @override
  Future<CommonResponse<Object>> updateProfile(
      {required UpdateProfileReq requestBody}) {
    return service.put<UpdateProfileReq, Object>(
        path: "$BASE_URL/v1/auth/update-profile",
        requestBody: requestBody,
        tFromMap: null);
  }

  @override
  Future<CommonResponse<Object>> changePassword(
      {required ChangePasswordReq requestBody}) {
    return service.put<ChangePasswordReq, Object>(
        path: "$BASE_URL/v1/auth/change-password",
        requestBody: requestBody,
        tFromMap: null);
  }

  @override
  Future<CommonResponse> updateAvatar(
      {required ChangeAvatar requestBody}) async {
    return service.put<ChangeAvatar, Object>(
        path: "$BASE_URL/v1/auth/change-password",
        requestBody: requestBody,
        tFromMap: null);
  }
}
