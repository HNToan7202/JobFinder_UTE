import 'dart:typed_data';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:jobhub_ute/app/feature/cv_review/presentation/page/cv_review_page.dart';
import 'package:jobhub_ute/app/feature/upload_cv/presentation/page/upload_cv_page.dart';
import 'package:jobhub_ute/common/widgets/app_bar.dart';
import 'package:jobhub_ute/gen/assets.gen.dart';
import '../../../../../common/color_extension.dart';
import 'package:flutter_cached_pdfview/flutter_cached_pdfview.dart';

class ResumePage extends StatefulWidget {
  const ResumePage({super.key});
  static const routeName = "/resume";

  @override
  State<ResumePage> createState() => _ResumePageState();
}

class _ResumePageState extends State<ResumePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, UploadCVPgae.routeName);

          // Add your onPressed code here!
        },
        child: const Icon(Icons.add),
        backgroundColor: AppColorScheme.kPrimary,
      ),
      appBar: MyAppBar(
        title: AppLocalizations.of(context)!.cv,
      ),
      body: PdfGrid(),
    );
  }
}

class PdfGrid extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
        child: Column(
          children: [
            Row(
              children: [
                Text("CV của bạn",
                    textAlign: TextAlign.start,
                    style:
                        TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              ],
            ),
            SizedBox(height: 20),
            Expanded(child: PdfList()),
          ],
        ),
      ),
    );
  }
}

class PdfList extends StatelessWidget {
  final List<String> pdfUrls = [
    'https://res.cloudinary.com/dyvq6eko3/image/upload/v1704931044/Recruiment%20Assets/CV/CV-NguyenCongThanh-0387102216.pdf1704931039259.pdf',
    'https://res.cloudinary.com/dyvq6eko3/image/upload/v1704931044/Recruiment%20Assets/CV/CV-NguyenCongThanh-0387102216.pdf1704931039259.pdf',
    'https://res.cloudinary.com/dyvq6eko3/image/upload/v1704931044/Recruiment%20Assets/CV/CV-NguyenCongThanh-0387102216.pdf1704931039259.pdf',
    'https://res.cloudinary.com/dyvq6eko3/image/upload/v1704931044/Recruiment%20Assets/CV/CV-NguyenCongThanh-0387102216.pdf1704931039259.pdf',
    'https://res.cloudinary.com/dyvq6eko3/image/upload/v1704931044/Recruiment%20Assets/CV/CV-NguyenCongThanh-0387102216.pdf1704931039259.pdf',
    'https://res.cloudinary.com/dyvq6eko3/image/upload/v1704931044/Recruiment%20Assets/CV/CV-NguyenCongThanh-0387102216.pdf1704931039259.pdf',
    // Add other PDF URLs here
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2, // Số cột trong mỗi dòng
        crossAxisSpacing: 8.0, // Khoảng cách giữa các cột
        mainAxisSpacing: 8.0, // Khoảng cách giữa các dòng
      ),
      itemCount: pdfUrls.length,
      itemBuilder: (context, index) {
        return PdfItem(url: pdfUrls[index]);
      },
    );
  }
}

class PdfItem extends StatelessWidget {
  final String url;

  PdfItem({required this.url});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // Add your onPressed code here!
        Navigator.pushNamed(context, CVReviewPage.routeName, arguments: url);
      },
      child: Container(
        padding: EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Column(
          children: [
            Container(
              height: 110,
              width: 140,
              child: PDF().cachedFromUrl(
                url,
                placeholder: (progress) => Center(child: Text('$progress %')),
                errorWidget: (error) => Center(child: Text(error.toString())),
              ),
            ),
            SizedBox(height: 8),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("CV_NHT_2002.pdf",
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis),
                  SizedBox(height: 8),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("22/02/2024 9:37"),
                      Image.asset(Assets.images.more.path,
                          width: 15, height: 15),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
