import 'package:cartee/presentation/styles/colors.dart';
import 'package:cartee/presentation/themes/custom_themes/bottom_sheet_theme.dart';
import 'package:cartee/presentation/themes/custom_themes/check_box_theme.dart';
import 'package:cartee/presentation/themes/custom_themes/chip_theme.dart';
import 'package:cartee/presentation/themes/custom_themes/elevated_button_theme.dart';
import 'package:cartee/presentation/themes/custom_themes/outlined_button_theme.dart';
import 'package:cartee/presentation/themes/custom_themes/text_theme.dart';
import 'package:cartee/presentation/themes/custom_themes/textfield_theme.dart';
import 'package:flutter/material.dart';

class CarteeAppTheme {
  CarteeAppTheme._();

  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'WorkSans',
    brightness: Brightness.light,
    primaryColor: primaryColor,
    scaffoldBackgroundColor: tertiaryColor,
    textTheme: CarteeTextTheme.lightTextTheme,
    elevatedButtonTheme: CarteeElevatedButtonTheme.lightElevatedButtonTheme,
    checkboxTheme: CarteeCheckBoxTheme.lightCheckBoxTheme,
    bottomSheetTheme: CarteeBottomSheetTheme.lightBottomSheetTheme,
    chipTheme: CarteeChipTheme.lightChipTheme,
    outlinedButtonTheme: CarteeOutlinedButtonTheme.lightOutlinedButtonTheme,
    inputDecorationTheme: CarteeTextFieldTheme.lightInputDecorationTheme,
  );
  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'WorkSans',
    brightness: Brightness.dark,
    primaryColor: primaryColor,
    scaffoldBackgroundColor: secondaryColor,
    textTheme: CarteeTextTheme.darkTextTheme,
    elevatedButtonTheme: CarteeElevatedButtonTheme.lightElevatedButtonTheme,
    checkboxTheme: CarteeCheckBoxTheme.darkCheckBoxTheme,
    bottomSheetTheme: CarteeBottomSheetTheme.darkBottomSheetTheme,
    chipTheme: CarteeChipTheme.darkChipTheme,
    outlinedButtonTheme: CarteeOutlinedButtonTheme.darkOutlinedButtonTheme,
    inputDecorationTheme: CarteeTextFieldTheme.darkInputDecorationTheme,
  );
}
