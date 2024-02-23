import 'package:dio/dio.dart';

import '../../../../../core/models/common_request_body.dart';
class ChangeAvatar extends CommonRequsetBody {
  final FormData data;

  ChangeAvatar(this.data);

  @override
  Map<String, dynamic> toMap() {
    return {};
  }
}
