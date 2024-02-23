import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jobhub_ute/app/feature/reset_password/presentation/page/reset_password_body.dart';

import '../cubit/reset_password_cubit.dart';

class ResetPasswordPage extends StatelessWidget {
  const ResetPasswordPage({
    super.key,
  });

  static const routeName = "/resetPassword";

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ResetPasswordCubit(),
      child: Scaffold(
        body: ResetPasswordBody(),
      ),
    );
  }
}
