import 'package:cartee/app/utils/constants/images_paths.dart';
import 'package:cartee/app/utils/constants/sizes.dart';
import 'package:cartee/app/utils/constants/text_strings.dart';
import 'package:cartee/app/utils/extensions.dart';
import 'package:cartee/app/utils/helper/helper_functions.dart';
import 'package:flutter/material.dart';

class LoginScreenHeader extends StatelessWidget {
  const LoginScreenHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    bool isDark = CarteeHelperFunctions.isDarkMode(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image.asset(
          isDark ? CarteeImages.logoMiniLightNoBg : CarteeImages.logoMiniDarkNoBg,
          width: 150,
          height: 150,
        ),
        Text(CarteeTexts.loginTitle, style: context.headlineMedium),
        const SizedBox(height: CarteeSizes.sm),
        Text(CarteeTexts.loginSubTitle, style: context.bodyMedium),
        const SizedBox(height: CarteeSizes.lg),
      ],
    );
  }
}
