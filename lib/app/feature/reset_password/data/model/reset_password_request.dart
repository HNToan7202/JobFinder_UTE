// To parse this JSON data, do

import '../../../../../core/models/common_request_body.dart';

class ResetPasswordRequest extends CommonRequsetBody {
  final String? email;
  final String? otp;
  final String? newPassword;

  ResetPasswordRequest({
    this.email,
    this.otp,
    this.newPassword,
  });

  @override
  Map<String, dynamic> toMap() {
    return {
      'email': email,
      'otp': otp,
      'newPassword': newPassword,
    };
  }
}
