import 'package:cartee/presentation/styles/colors.dart';
import 'package:flutter/material.dart';

class CarteeTextTheme {
  CarteeTextTheme._();

  static TextTheme lightTextTheme = TextTheme(
    //* headline style
    headlineLarge: const TextStyle().copyWith(fontSize: 32, fontWeight: FontWeight.bold, color: CarteeColors.textPrimary),
    headlineMedium: const TextStyle().copyWith(fontSize: 24, fontWeight: FontWeight.w600, color: CarteeColors.textPrimary),
    headlineSmall: const TextStyle().copyWith(fontSize: 18, fontWeight: FontWeight.w600, color: CarteeColors.textPrimary),

    //* label style
    titleLarge: const TextStyle().copyWith(fontSize: 16, fontWeight: FontWeight.w600, color: CarteeColors.textPrimary),
    titleMedium: const TextStyle().copyWith(fontSize: 16, fontWeight: FontWeight.w500, color: CarteeColors.textPrimary),
    titleSmall: const TextStyle().copyWith(fontSize: 16, fontWeight: FontWeight.w400, color: CarteeColors.textPrimary),

    //* body style
    bodyLarge: const TextStyle().copyWith(fontSize: 14, fontWeight: FontWeight.w500, color: CarteeColors.textPrimary),
    bodyMedium: const TextStyle().copyWith(fontSize: 14, fontWeight: FontWeight.normal, color: CarteeColors.textPrimary),
    bodySmall: const TextStyle().copyWith(fontSize: 14, fontWeight: FontWeight.w500, color: CarteeColors.textPrimary.withOpacity(0.5)),

    //* body style
    labelLarge: const TextStyle().copyWith(fontSize: 12, fontWeight: FontWeight.normal, color: CarteeColors.textPrimary),
    labelMedium: const TextStyle().copyWith(fontSize: 12, fontWeight: FontWeight.normal, color: CarteeColors.textPrimary.withOpacity(0.5)),
  );
  static TextTheme darkTextTheme = TextTheme(
    //* headline style
    headlineLarge: const TextStyle().copyWith(fontSize: 32, fontWeight: FontWeight.bold, color: CarteeColors.textWhite),
    headlineMedium: const TextStyle().copyWith(fontSize: 24, fontWeight: FontWeight.w600, color: CarteeColors.textWhite),
    headlineSmall: const TextStyle().copyWith(fontSize: 18, fontWeight: FontWeight.w600, color: CarteeColors.textWhite),

    //* label style
    titleLarge: const TextStyle().copyWith(fontSize: 16, fontWeight: FontWeight.w600, color: CarteeColors.textWhite),
    titleMedium: const TextStyle().copyWith(fontSize: 16, fontWeight: FontWeight.w500, color: CarteeColors.textWhite),
    titleSmall: const TextStyle().copyWith(fontSize: 16, fontWeight: FontWeight.w400, color: CarteeColors.textWhite),

    //* body style
    bodyLarge: const TextStyle().copyWith(fontSize: 14, fontWeight: FontWeight.w500, color: CarteeColors.textWhite),
    bodyMedium: const TextStyle().copyWith(fontSize: 14, fontWeight: FontWeight.normal, color: CarteeColors.textWhite),
    bodySmall: const TextStyle().copyWith(fontSize: 14, fontWeight: FontWeight.w500, color: CarteeColors.textWhite.withOpacity(0.5)),

    //* body style
    labelLarge: const TextStyle().copyWith(fontSize: 12, fontWeight: FontWeight.normal, color: CarteeColors.textWhite),
    labelMedium: const TextStyle().copyWith(fontSize: 12, fontWeight: FontWeight.normal, color: CarteeColors.textWhite.withOpacity(0.5)),
  );
}
