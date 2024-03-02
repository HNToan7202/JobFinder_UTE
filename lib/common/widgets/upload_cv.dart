import 'package:flutter/material.dart';

import '../../gen/assets.gen.dart';
import '../color_extension.dart';

class UploadCV extends StatelessWidget {
  const UploadCV({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
      decoration: BoxDecoration(
        color: AppColorScheme.kPrimary.withOpacity(0.1),
        borderRadius: BorderRadius.circular(5),
        border: Border.all(
          color: Colors.transparent, // Set border color to transparent
        ),
      ),
      child: Column(
        children: [
          Align(
            alignment: Alignment.center,
            child: Image.asset(
              Assets.images.cloud6604128.path,
              width: 40,
              height: 40,
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          const Text(
            "Nhấn để tải lên",
            style: TextStyle(
              color: AppColorScheme.inkDark,
              fontSize: 12,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          const Text(
            "Hỗ trợ file PDF, DOC, DOCX ",
            style: TextStyle(
              color: AppColorScheme.inkDarkGray,
              fontSize: 12,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          Text.rich(
            TextSpan(
              text: "Có kích thước dưới ",
              style: const TextStyle(
                color: AppColorScheme.inkDarkGray,
                fontSize: 12,
                fontWeight: FontWeight.bold,
              ),
              children: [
                TextSpan(
                  text: "5MB",
                  style: TextStyle(
                    color: AppColorScheme.kPrimary,
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
