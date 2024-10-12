import 'package:cartee/app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class CarteeSpacingStyle {
  static const EdgeInsetsGeometry paddingWithAppBarHeight = EdgeInsets.only(
    left: CarteeSizes.defaultSpace,
    right: CarteeSizes.defaultSpace,
    top: CarteeSizes.appBarHeight,
    bottom: CarteeSizes.defaultSpace,
  );
}
