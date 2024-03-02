import 'package:dio/dio.dart';

import 'package:get_it/get_it.dart';
import 'package:jobhub_ute/app/feature/home/data/repo/position_repositories_impl.dart';
import 'app/feature/auth/data/repositories/auth_repository_impl.dart';
import 'app/feature/home/data/repo/category_repository_impl.dart';
import 'app/feature/profile/data/repo/user_repository_impl.dart';
import 'app/feature/reset_password/data/repo/reset_password_repository_impl.dart';
import 'app/feature/sign_up/data/repo/account_repository_impl.dart';
import 'core/service/api_service_impl.dart';

final locator = GetIt.instance;
Future<void> init() async {
  Dio dio = Dio();

  // Thêm interceptor
  dio.interceptors.add(InterceptorsWrapper(
    onRequest: (options, handler) {
      // Đoạn mã bạn muốn thực thi trước khi gửi yêu cầu đi
      // Ví dụ: Thêm header, log, ...
      return handler.next(options); // Chuyển tiếp yêu cầu
    },
    onResponse: (response, handler) {
      // Đoạn mã bạn muốn thực thi sau khi nhận được phản hồi
      // Ví dụ: Xử lý dữ liệu, log, ...
      return handler.next(response); // Chuyển tiếp phản hồi
    },
    onError: (DioError e, handler) {
      // Xử lý khi có lỗi xảy ra trong quá trình gửi hoặc nhận yêu cầu
      return handler.next(e); // Chuyển tiếp lỗi
    },
  ));

  locator.registerSingleton<Dio>(dio); //todo: thêm interceptor
  locator.registerSingleton<ApiServiceImpl>(
      ApiServiceImpl(dio: locator.get<Dio>()));
  locator.registerSingleton<AuthRepositoryImpl>(
      AuthRepositoryImpl(service: locator.get<ApiServiceImpl>()));
  locator.registerSingleton<CategoryRepositoryImpl>(
      CategoryRepositoryImpl(service: locator.get<ApiServiceImpl>()));
  locator.registerSingleton<ResetPasswordRepositoryImpl>(
      ResetPasswordRepositoryImpl(service: locator.get<ApiServiceImpl>()));
  locator.registerSingleton<AccountRepoSitoryImpl>(
      AccountRepoSitoryImpl(service: locator.get<ApiServiceImpl>()));
  locator.registerSingleton<UserRepositoryImpl>(
      UserRepositoryImpl(service: locator.get<ApiServiceImpl>()));
  locator.registerSingleton<PositionRepositoryImpl>(
      PositionRepositoryImpl(service: locator.get<ApiServiceImpl>()));
}
