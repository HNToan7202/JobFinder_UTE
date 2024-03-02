import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jobhub_ute/app/feature/apply/presentation/page/apply_page.dart';
import 'package:jobhub_ute/app/feature/cv_profile/presentaion/pages/cv_page.dart';
import 'package:jobhub_ute/app/feature/cv_review/presentation/page/cv_review_page.dart';
import 'package:jobhub_ute/app/feature/job_detail/presentaion/pages/job_detail_body.dart';
import 'package:jobhub_ute/app/feature/menu/cubit/position_cubit.dart';
import 'package:jobhub_ute/app/feature/settings/presentation/page/setting_page.dart';
import 'package:jobhub_ute/app/feature/upload_cv/presentation/page/upload_cv_page.dart';
import '../feature/home/presentation/page/nav_bar.dart';
import '../feature/intro/presentation/page/intro_page.dart';
import '../feature/job_detail/presentaion/pages/job_detail_page.dart';
import '../feature/login/presentation/page/login_page.dart';
import '../feature/profile/presentation/cubit/user_cubit.dart';
import '../feature/profile/presentation/pages/profile_page.dart';
import '../feature/reset_password/presentation/page/new_password_page.dart';
import '../feature/reset_password/presentation/page/otp_page.dart';
import '../feature/reset_password/presentation/page/reset_password_page.dart';
import '../feature/sign_up/presentation/cubit/sign_up_cubit.dart';
import '../feature/sign_up/presentation/pages/sign_up_page.dart';
import '../feature/sign_up/presentation/pages/verify_page.dart';
import '../feature/splash/presentation/page/splash_page.dart';
import '../feature/welcome/presentation/page/welcome_page.dart';

Route<dynamic>? Function(RouteSettings)? onGenerateRoute = (settings) {
  switch (settings.name) {
    case LoginPage.routeName:
      return MaterialPageRoute(
        builder: (_) => const LoginPage(),
        settings: const RouteSettings(name: LoginPage.routeName),
      );
    case ApplyPage.routeName:
      return MaterialPageRoute(
        builder: (_) => const ApplyPage(),
        settings: const RouteSettings(name: ApplyPage.routeName),
      );
    case WelComePage.routeName:
      return MaterialPageRoute(
        builder: (_) => const WelComePage(),
        settings: const RouteSettings(name: WelComePage.routeName),
      );
    case SignUpPage.routeName:
      return MaterialPageRoute(
        builder: (_) => BlocProvider(
          create: (context) => SignUpCubit(),
          child: const SignUpPage(),
        ),
        settings: const RouteSettings(name: SignUpPage.routeName),
      );
    case ResetPasswordPage.routeName:
      return MaterialPageRoute(
        builder: (_) => const ResetPasswordPage(),
        settings: const RouteSettings(name: ResetPasswordPage.routeName),
      );
    case NavBar.routeName:
      return MaterialPageRoute(
        builder: (_) => MultiBlocProvider(
          providers: [
            BlocProvider<PositionCubit>(
                create: (context) => PositionCubit()..getAllPosition()),
          ],
          child: const NavBar(),
        ),
        settings: const RouteSettings(name: NavBar.routeName),
      );
    case SplashPage.routeName:
      return MaterialPageRoute(
        builder: (_) => const SplashPage(),
        settings: const RouteSettings(name: SplashPage.routeName),
      );
    case JobDetailPage.routeName:
      return MaterialPageRoute(
        builder: (_) => const JobDetailPage(),
        settings: const RouteSettings(name: JobDetailPage.routeName),
      );
    case IntroPage.routeName:
      return MaterialPageRoute(
        builder: (_) => const IntroPage(),
        settings: const RouteSettings(name: IntroPage.routeName),
      );
    case OtpPage.routeName:
      final OtpPageArg arg = settings.arguments as OtpPageArg;
      return MaterialPageRoute(
        builder: (_) => OtpPage(
          arg: arg,
        ),
        settings: const RouteSettings(name: OtpPage.routeName),
      );
    case NewPassWordPage.routeName:
      final OtpPageArg arg = settings.arguments as OtpPageArg;
      return MaterialPageRoute(
        builder: (_) => NewPassWordPage(
          arg: arg,
        ),
        settings: const RouteSettings(name: NewPassWordPage.routeName),
      );
    case VerifyAccountPage.routeName:
      final String email = settings.arguments as String;
      return MaterialPageRoute(
        builder: (_) => VerifyAccountPage(
          email: email,
        ),
        settings: const RouteSettings(name: VerifyAccountPage.routeName),
      );

    case ProfilePage.routeName:
      return MaterialPageRoute(
        builder: (_) => MultiBlocProvider(providers: [
          BlocProvider<UserCubit>(
            create: (context) => UserCubit(),
          ),
        ], child: const ProfilePage()),
        settings: const RouteSettings(name: ProfilePage.routeName),
      );

    case UploadCVPgae.routeName:
      return MaterialPageRoute(
        builder: (_) => const UploadCVPgae(),
        settings: const RouteSettings(name: UploadCVPgae.routeName),
      );

    case SettingsPage.routeName:
      return MaterialPageRoute(
        builder: (_) => const SettingsPage(),
        settings: const RouteSettings(name: SettingsPage.routeName),
      );
    case CVReviewPage.routeName:
      final String url = settings.arguments as String;
      return MaterialPageRoute(
        builder: (_) => CVReviewPage(
          url: url,
        ),
        settings: const RouteSettings(name: CVReviewPage.routeName),
      );
    case ResumePage.routeName:
      return MaterialPageRoute(
        builder: (_) => const ResumePage(),
        settings: const RouteSettings(name: ResumePage.routeName),
      );
  }
  return null;
};
