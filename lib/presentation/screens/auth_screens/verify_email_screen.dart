import 'package:cartee/app/utils/constants/images_paths.dart';
import 'package:cartee/app/utils/constants/sizes.dart';
import 'package:cartee/app/utils/constants/text_strings.dart';
import 'package:cartee/app/utils/extensions.dart';
import 'package:cartee/app/utils/helper/helper_functions.dart';
import 'package:cartee/presentation/styles/spacing_styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class VerifyEmailScreen extends StatelessWidget {
  const VerifyEmailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
            onPressed: () => Navigator.pop(context),
            icon: const Icon(CupertinoIcons.clear),
          ),
        ],
      ),
      body: Padding(
        padding: CarteeSpacingStyle.paddingWithAppBarHeight,
        child: Column(
          children: [
            Image.asset(
              CarteeImagesPaths.verifyAnimation,
              width: CarteeHelperFunctions.screenWidth(context) * 0.6,
            ),
            const SizedBox(height: CarteeSizes.spaceBtwSections),
            Text(
              CarteeTexts.confirmEmail,
              style: context.headlineMedium,
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: CarteeSizes.spaceBtwItems),
            Text(
              '%EMAIL_ADDRESS%',
              style: context.labelLarge,
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: CarteeSizes.spaceBtwItems),
            Text(
              CarteeTexts.confirmEmailSubTitle,
              style: context.headlineMedium,
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: CarteeSizes.spaceBtwSections),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {},
                child: const Text(CarteeTexts.ccontinue),
              ),
            ),
            SizedBox(
              width: double.infinity,
              child: TextButton(
                onPressed: () {},
                child: const Text(CarteeTexts.resendEmail),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
