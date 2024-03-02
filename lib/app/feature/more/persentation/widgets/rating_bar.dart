import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:jobhub_ute/common/color_extension.dart';

class StaticRatingBar extends StatelessWidget {
  final double rating;

  StaticRatingBar({required this.rating});

  @override
  Widget build(BuildContext context) {
    return RatingBar.builder(
      initialRating: rating,
      minRating: 1,
      direction: Axis.horizontal,
      allowHalfRating: false,
      itemCount: 3,
      itemSize: 30.0,
      itemBuilder: (context, _) => Icon(
        Icons.star,
        color: AppColorScheme.kPrimary,
      ),
      ignoreGestures: true,
      onRatingUpdate: (double value) {}, // Không cho phép chỉnh sửa
    );
  }
}
