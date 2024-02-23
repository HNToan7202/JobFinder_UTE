import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';

import '../../data/model/reset_password_request.dart';
import '../cubit/reset_password_cubit.dart';
import 'new_password_body.dart';
import 'otp_page.dart';

class NewPassWordPage extends StatefulWidget {
  const NewPassWordPage({super.key, required this.arg});

  final OtpPageArg arg;

  static const routeName = "/new-password";

  @override
  State<NewPassWordPage> createState() => _NewPassWordPageState();
}

class _NewPassWordPageState extends State<NewPassWordPage> {
  @override
  Widget build(Object context) {
    return BlocProvider(
      create: (context) => ResetPasswordCubit(),
      child: NewPasswordBody(arg: widget.arg),
    );
  }
}
