import 'package:cartee/app/utils/constants/sizes.dart';
import 'package:cartee/app/utils/constants/text_strings.dart';
import 'package:cartee/app/utils/extensions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class ForgotPasswordScreen extends StatelessWidget {
  const ForgotPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(CarteeSizes.defaultSpace),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(CarteeTexts.forgotPasswordTitle, style: context.headlineMedium),
            const SizedBox(height: CarteeSizes.spaceBtwItems),
            Text(CarteeTexts.forgotPasswordSubTitle, style: context.bodyLarge),
            const SizedBox(height: CarteeSizes.spaceBtwSections * 2),
            const TextField(
              decoration: InputDecoration(
                labelText: CarteeTexts.email,
                prefixIcon: Icon(Iconsax.direct_right),
              ),
            ),
            const SizedBox(height: CarteeSizes.spaceBtwSections),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () => Navigator.pushNamed(context, '/reset-password'),
                child: const Text(CarteeTexts.submit),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
