import 'dart:io';

import '../../../../../core/models/common_response.dart';
import '../../data/model/change_avt.dart';
import '../../data/model/change_password_request.dart';
import '../../data/model/update_profile_req.dart';

abstract class UserRepository {
  Future<CommonResponse> updateProfile({required UpdateProfileReq requestBody});

  Future<CommonResponse> updateAvatar({required ChangeAvatar requestBody});

  Future<CommonResponse> changePassword(
      {required ChangePasswordReq requestBody});
}
