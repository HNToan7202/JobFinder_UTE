import '../../../../../core/models/common_response.dart';
import '../../data/models/login_request.dart';
import '../../data/models/login_response.dart';
import '../../data/models/logout_request.dart';
import '../../data/models/user_info_request.dart';
import '../../data/models/user_response.dart';

abstract class AuthRepository {
  Future<CommonResponse<LoginResponseData>> doLogin({
    required LoginRequest requestBody,
  });

  Future<CommonResponse> doLogout({
    required LogoutRequest requestBody,
  });

  Future<CommonResponse<UserResponseData>> getUserInfo({
    required GetUserInfoRequest requestHeader,
  });
}
