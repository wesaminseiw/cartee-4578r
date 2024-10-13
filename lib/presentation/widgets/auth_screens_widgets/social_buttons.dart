import 'package:cartee/app/utils/constants/images_paths.dart';
import 'package:cartee/app/utils/constants/sizes.dart';
import 'package:cartee/presentation/styles/colors.dart';
import 'package:flutter/material.dart';

class SocialButtons extends StatelessWidget {
  const SocialButtons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
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
