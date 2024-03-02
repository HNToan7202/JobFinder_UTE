import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:jobhub_ute/app/feature/job_detail/presentaion/pages/job_detail_body.dart';

class JobDetailPage extends StatefulWidget {
  const JobDetailPage({super.key});
  static const routeName = "/jobDetail";

  @override
  State<JobDetailPage> createState() => _JobDetailPageState();
}

class _JobDetailPageState extends State<JobDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: JobDetailBody(),
    );
  }
}
