import 'package:cartee/presentation/styles/colors.dart';
import 'package:flutter/material.dart';

class CarteeBottomSheetTheme {
  CarteeBottomSheetTheme._();

  static BottomSheetThemeData lightBottomSheetTheme = BottomSheetThemeData(
    showDragHandle: true,
    backgroundColor: CarteeColors.tertiaryColor,
    modalBackgroundColor: CarteeColors.tertiaryColor,
    constraints: const BoxConstraints(minWidth: double.infinity),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
  );

  static BottomSheetThemeData darkBottomSheetTheme = BottomSheetThemeData(
    showDragHandle: true,
    backgroundColor: CarteeColors.secondaryColor,
    modalBackgroundColor: CarteeColors.secondaryColor,
    constraints: const BoxConstraints(minWidth: double.infinity),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
  );
}
