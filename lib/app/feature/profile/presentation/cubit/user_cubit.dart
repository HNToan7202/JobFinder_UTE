import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../core/models/common_response.dart';
import '../../../../../di.dart';
import '../../data/model/change_avatar_req.dart';
import '../../data/model/change_avt.dart';
import '../../data/model/update_profile_req.dart';
import '../../data/repo/user_repository_impl.dart';

part 'user_state.dart';

class UserCubit extends Cubit<UserState> {
  UserCubit() : super(UserInitial());

  Future<bool> updateProfile(UpdateProfileReq updateProfileReq) async {
    final res = await locator
        .get<UserRepositoryImpl>()
        .updateProfile(requestBody: updateProfileReq);
    if (res is SuccessRessponse) {
      emit(UserUpdateSuccess(message: res.message));
      return true;
    } else {
      UserUpdateError(message: res.message);
    }
    return false;
  }

  void changAvatar(ChangeAvatarReq changeAvatarReq) async {
    String fileName = changeAvatarReq.imageFile.path.split('/').last;
    var data = FormData.fromMap({
      "imageFile": [
        await MultipartFile.fromFile(
          changeAvatarReq.imageFile.path,
          filename: fileName,
        )
      ]
    });
    ChangeAvatar changeAvatar = ChangeAvatar(data);
    final res = await locator
        .get<UserRepositoryImpl>()
        .updateAvatar(requestBody: changeAvatar);
    if (res is SuccessRessponse) {
      emit(UserUpdateSuccess(message: res.message));
    } else {
      UserUpdateError(message: res.message);
    }
  }
}
