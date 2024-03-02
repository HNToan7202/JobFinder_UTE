import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:jobhub_ute/app/feature/apply/presentation/widgets/apply_body.dart';

class ApplyPage extends StatefulWidget {
  const ApplyPage({super.key});

  static const routeName = "/apply";

  @override
  State<ApplyPage> createState() => _ApplyPageState();
}

class _ApplyPageState extends State<ApplyPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ApplyBody(),
    );
  }
}
