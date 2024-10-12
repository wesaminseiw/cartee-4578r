import 'package:cartee/app/utils/constants/images_paths.dart';
import 'package:cartee/app/utils/constants/sizes.dart';
import 'package:cartee/app/utils/constants/text_strings.dart';
import 'package:cartee/app/utils/extensions.dart';
import 'package:cartee/presentation/styles/colors.dart';
import 'package:flutter/material.dart';

class LoginScreenSocialButtons extends StatelessWidget {
  const LoginScreenSocialButtons({
    super.key,
    required this.isDark,
  });

  final bool isDark;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Flexible(
              child: Divider(
                color: isDark ? CarteeColors.darkGrey : CarteeColors.grey,
                indent: 60,
                endIndent: 5,
                thickness: 1,
              ),
            ),
            Text(CarteeTexts.orsignInwith, style: context.labelMedium),
            Flexible(
              child: Divider(
                color: isDark ? CarteeColors.darkGrey : CarteeColors.grey,
                indent: 5,
                endIndent: 60,
                thickness: 1,
              ),
            ),
          ],
        ),
        const SizedBox(height: CarteeSizes.spaceBtwSections),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              decoration: BoxDecoration(
                border: Border.all(color: CarteeColors.grey),
                borderRadius: BorderRadius.circular(100),
              ),
              child: IconButton(
                onPressed: () {},
                icon: Image.asset(
                  CarteeImagesPaths.google,
                  width: CarteeSizes.iconMd,
                  height: CarteeSizes.iconMd,
                ),
              ),
            ),
            const SizedBox(width: CarteeSizes.spaceBtwItems),
            Container(
              decoration: BoxDecoration(
                border: Border.all(color: CarteeColors.grey),
                borderRadius: BorderRadius.circular(100),
              ),
              child: IconButton(
                onPressed: () {},
                icon: Image.asset(
                  CarteeImagesPaths.facebook,
                  width: CarteeSizes.iconMd,
                  height: CarteeSizes.iconMd,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
