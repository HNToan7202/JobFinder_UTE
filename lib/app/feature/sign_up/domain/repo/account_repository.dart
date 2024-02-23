import '../../../../../core/models/common_response.dart';
import '../../data/model/sign_up_req.dart';
import '../../data/model/verify_account_req.dart';

abstract class AccountRepository {
  Future<CommonResponse> createAccount({required SignUpReq req});

  Future<CommonResponse> verifyAccount({required VerifyAccountReq req});
}
