import 'package:cartee/app/utils/constants/sizes.dart';
import 'package:cartee/app/utils/device_utility.dart';
import 'package:cartee/app/utils/helper/helper_functions.dart';
import 'package:cartee/presentation/styles/colors.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class GlobalSearchContainer extends StatelessWidget {
  final String text;
  final IconData icon;
  final bool showBackground, showBorder;

  const GlobalSearchContainer({
    super.key,
    this.icon = Iconsax.search_normal,
    this.showBackground = true,
    this.showBorder = true,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    final isDark = CarteeHelperFunctions.isDarkMode(context);

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: CarteeSizes.defaultSpace),
      child: Container(
        width: CarteeDeviceUtility.getScreenWidth(context),
        padding: const EdgeInsets.all(CarteeSizes.md),
        decoration: BoxDecoration(
          color: showBackground
              ? isDark
                  ? CarteeColors.dark
                  : CarteeColors.light
              : Colors.transparent,
          borderRadius: BorderRadius.circular(CarteeSizes.cardRadiusLg),
          border: showBorder ? Border.all(color: CarteeColors.grey) : null,
        ),
        child: Row(
          children: [
            Icon(icon, color: CarteeColors.darkerGrey),
            const SizedBox(width: CarteeSizes.spaceBtwItems),
            Text(text, style: Theme.of(context).textTheme.bodySmall),
          ],
        ),
      ),
    );
  }
}
