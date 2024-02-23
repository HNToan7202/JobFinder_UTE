import 'package:flutter/material.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';

class BottomSheetUtils {
  BottomSheetUtils._();

  static Future<T?> showMaterial<T>({
    required BuildContext context,
    required Widget child,
    bool? enableDrag,
    bool? isScrollControlled,
    BoxConstraints? constraints,
  }) {
    return showMaterialModalBottomSheet(
      context: context,
      backgroundColor: Colors.transparent,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(16),
        ),
      ),
      clipBehavior: Clip.hardEdge,
      builder: (_) => SafeArea(child: Material(child: child)),
      enableDrag: enableDrag ?? true,
    );
  }
}
