import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';
import 'package:jobhub_ute/common/text_theme.dart';
import 'package:jobhub_ute/common/widgets/upload_cv.dart';
import 'package:jobhub_ute/gen/assets.gen.dart';

import '../../../../../common/color_extension.dart';
import '../../../../../common/widgets/app_bar.dart';

class UploadCVPgae extends StatefulWidget {
  const UploadCVPgae({super.key});
  static const routeName = "/uploadCVPgae";

  @override
  State<UploadCVPgae> createState() => _UploadCVPgaeState();
}

class _UploadCVPgaeState extends State<UploadCVPgae> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(
        title: "Resume & Profilio",
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 16,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Upload your resume or CV\nto apply for jobs faster",
                          style: tStyle.PrL(fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(
                          height: 16,
                        ),
                        Text(
                          "Reduce the time to apply for jobs\nby uploading your resume or CV",
                          style: TextStyle(
                            fontStyle: FontStyle.italic,
                            color: AppColorScheme.primaryText,
                            fontSize: 14,
                          ),
                        )
                      ],
                    ),
                    Image.asset(Assets.images.contract.path,
                        width: 95, height: 95)
                  ],
                ),
                const SizedBox(
                  height: 24,
                ),
                UploadCV(),
              ],
            ),
          ),
          GestureDetector(
            onTap: () {},
            child: Container(
              height: 100,
              padding: const EdgeInsets.all(24),
              child: Column(
                children: [
                  Container(
                    width: double.infinity,
                    padding:
                        const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                    decoration: BoxDecoration(
                      color: AppColorScheme.kPrimary,
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Text(
                      "Tải CV lên",
                      textAlign: TextAlign.center,
                      style: tStyle.PrM(color: AppColorScheme.inkWhite),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
