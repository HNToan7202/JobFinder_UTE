import 'package:flutter/material.dart';
import 'package:flutter_cached_pdfview/flutter_cached_pdfview.dart';
import 'package:jobhub_ute/common/widgets/app_bar.dart';

class CVReviewPage extends StatelessWidget {
  const CVReviewPage({super.key, this.url});
  static const routeName = "/cvReview";

  final String? url;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(
        title: "CV Review",
      ),
      body: PDF().cachedFromUrl(
        url ?? "",
        placeholder: (progress) => Center(child: Text('$progress %')),
        errorWidget: (error) => Center(child: Text(error.toString())),
      ),
    );
  }
}
