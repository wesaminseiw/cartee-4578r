import 'package:cartee/app/utils/constants/images_paths.dart';
import 'package:cartee/app/utils/constants/sizes.dart';
import 'package:cartee/app/utils/constants/text_strings.dart';
import 'package:cartee/app/utils/extensions.dart';
import 'package:cartee/app/utils/helper/helper_functions.dart';
import 'package:cartee/presentation/styles/spacing_styles.dart';
import 'package:flutter/material.dart';

class SuccessScreen extends StatelessWidget {
  const SuccessScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: CarteeSpacingStyle.paddingWithAppBarHeight * 2,
          child: Column(
            children: [
              Image.asset(
                CarteeImagesPaths.congratsAnimation,
                width: CarteeHelperFunctions.screenWidth(context) * 0.6,
              ),
              const SizedBox(height: CarteeSizes.spaceBtwSections),
              Text(
                CarteeTexts.yourAccountCreatedTitle,
                style: context.headlineMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: CarteeSizes.spaceBtwItems),
              Text(
                CarteeTexts.yourAccountCreatedSubTitle,
                style: context.headlineMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: CarteeSizes.spaceBtwSections),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () => Navigator.pushNamedAndRemoveUntil(
                    context,
                    '/home',
                    (route) => false,
                  ),
                  child: const Text(CarteeTexts.ccontinue),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
