import 'package:flutter/material.dart';

import 'intro_body.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  static const String routeName = "/intro";

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: IntroBody(),
    );
  }
}
