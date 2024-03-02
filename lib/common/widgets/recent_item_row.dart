import 'package:flutter/material.dart';
import 'package:jobhub_ute/common/color_extension.dart';
import 'package:jobhub_ute/common/text_theme.dart';
import 'package:jobhub_ute/gen/assets.gen.dart';

class RecentItemRow extends StatelessWidget {
  final Map rObj;
  final VoidCallback onTap;
  const RecentItemRow({super.key, required this.rObj, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 8),
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: AppColorScheme.inkWhite,
        borderRadius: BorderRadius.circular(20),
      ),
      child: InkWell(
        onTap: onTap,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(32),
                  child: Image.asset(
                    rObj["image"].toString(),
                    width: 50,
                    height: 50,
                    fit: BoxFit.cover,
                  ),
                ),
                const SizedBox(
                  width: 8,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      //giới hạn ký tự
                      rObj["name"].length > 20
                          ? rObj["name"].substring(0, 20) + '...'
                          : rObj["name"],
                      textAlign: TextAlign.center,
                      style: tStyle.PrM(
                        fontWeight: FontWeight.bold,
                      ),
                      maxLines: 1, // Chỉ hiển thị 1 dòng
                      overflow: TextOverflow
                          .ellipsis, // Hiển thị dấu ba chấm khi văn bản bị cắt bớt
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          rObj["type"],
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: AppColorScheme.secondaryText,
                              fontSize: 11),
                        ),
                        Text(
                          " . ",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: AppColorScheme.kPrimary, fontSize: 11),
                        ),
                        Text(
                          rObj["food_type"],
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: AppColorScheme.secondaryText,
                              fontSize: 12),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 4,
                    ),
                  ],
                ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  "99.99/y",
                  style: tStyle.PrS(),
                ),
                Text(
                  "Los Angeles, US",
                  style: tStyle.PrS(
                    color: AppColorScheme.secondaryText,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
