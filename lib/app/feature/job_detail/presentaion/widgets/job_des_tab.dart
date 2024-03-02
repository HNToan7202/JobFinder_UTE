// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class JobDesTab extends StatelessWidget {
  const JobDesTab({
    Key? key,
    required this.status,
  }) : super(key: key);
  final String status;

  @override
  Widget build(BuildContext context) {
    return Text(status);
  }
}
