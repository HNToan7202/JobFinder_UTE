import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jobhub_ute/app/feature/profile/presentation/pages/profile_body.dart';

import '../cubit/user_cubit.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  static const routeName = "/profile";

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => UserCubit(),
      child: const ProfileBody(),
    );
  }
}
