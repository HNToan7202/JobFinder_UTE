import 'package:jobhub_ute/core/models/common_request_body.dart';

class Pageable extends CommonRequsetBody {
  final String? page;
  final String? size;
  Pageable({this.page = "1", this.size = "10"});

  @override
  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'page': page,
      'size': size,
    };
  }
}
