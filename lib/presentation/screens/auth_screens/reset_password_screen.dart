import 'package:cartee/app/utils/constants/images_paths.dart';
import 'package:cartee/app/utils/constants/sizes.dart';
import 'package:cartee/app/utils/extensions.dart';
import 'package:cartee/app/utils/helper/helper_functions.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import '../../../app/utils/constants/text_strings.dart';

class ResetPasswordScreen extends StatelessWidget {
  const ResetPasswordScreen({super.key});

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
        padding: const EdgeInsets.all(CarteeSizes.defaultSpace),
        child: Column(
          children: [
            Lottie.asset(
              CarteeImages.verifyAnimation,
              width: CarteeHelperFunctions.screenWidth(context) * 0.6,
              reverse: true,
            ),
            const SizedBox(height: CarteeSizes.spaceBtwSections),
            Text(
              CarteeTexts.changeYourPasswordTitle,
              style: context.headlineMedium,
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: CarteeSizes.spaceBtwItems),
            Text(
              CarteeTexts.changeYourPasswordSubTitle,
              style: context.bodyLarge,
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: CarteeSizes.spaceBtwSections),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () => Navigator.pushNamedAndRemoveUntil(
                  context,
                  '/login',
                  (route) => false,
                ),
                child: const Text(CarteeTexts.done),
              ),
            ),
            const SizedBox(height: CarteeSizes.spaceBtwItems),
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
