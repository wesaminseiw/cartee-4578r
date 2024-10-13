import 'package:cartee/app/utils/constants/sizes.dart';
import 'package:cartee/app/utils/constants/text_strings.dart';
import 'package:cartee/app/utils/extensions.dart';
import 'package:cartee/app/utils/helper/helper_functions.dart';
import 'package:cartee/presentation/styles/colors.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class SignUpScreenForm extends StatelessWidget {
  const SignUpScreenForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    bool isDark = CarteeHelperFunctions.isDarkMode(context);
    return Column(
      children: [
        const Row(
          children: [
            Expanded(
              child: TextField(
                expands: false,
                decoration: InputDecoration(
                  labelText: CarteeTexts.firstName,
                  prefixIcon: Icon(Iconsax.user),
                ),
              ),
            ),
            SizedBox(width: CarteeSizes.spaceBtwInputFields),
            Expanded(
              child: TextField(
                expands: false,
                decoration: InputDecoration(
                  labelText: CarteeTexts.lastName,
                  prefixIcon: Icon(Iconsax.user),
                ),
              ),
            ),
          ],
        ),
        const SizedBox(height: CarteeSizes.spaceBtwInputFields),
        const TextField(
          decoration: InputDecoration(
            labelText: CarteeTexts.username,
            prefixIcon: Icon(Iconsax.user_edit),
          ),
        ),
        const SizedBox(height: CarteeSizes.spaceBtwInputFields),
        const TextField(
          decoration: InputDecoration(
            labelText: CarteeTexts.email,
            prefixIcon: Icon(Iconsax.direct),
          ),
        ),
        const SizedBox(height: CarteeSizes.spaceBtwInputFields),
        const TextField(
          decoration: InputDecoration(
            labelText: CarteeTexts.phoneNo,
            prefixIcon: Icon(Iconsax.call),
          ),
        ),
        const SizedBox(height: CarteeSizes.spaceBtwInputFields),
        const TextField(
          obscureText: true,
          decoration: InputDecoration(
            labelText: CarteeTexts.password,
            prefixIcon: Icon(Iconsax.password_check),
            suffixIcon: Icon(Iconsax.eye_slash),
          ),
        ),
        const SizedBox(height: CarteeSizes.spaceBtwSections),
        Row(
          children: [
            SizedBox(
              width: 24,
              height: 24,
              child: Checkbox(
                value: true,
                onChanged: (value) {},
              ),
            ),
            const SizedBox(width: CarteeSizes.spaceBtwItems),
            Text.rich(
              TextSpan(
                children: [
                  TextSpan(text: '${CarteeTexts.iAgreeTo} ', style: context.bodySmall),
                  TextSpan(
                    text: CarteeTexts.privacyPolicy,
                    style: context.bodySmall!.apply(
                      color: isDark ? CarteeColors.white : CarteeColors.primaryColor,
                      decoration: TextDecoration.underline,
                      decorationColor: isDark ? CarteeColors.white : CarteeColors.primaryColor,
                    ),
                  ),
                  TextSpan(text: ' ${CarteeTexts.and} ', style: context.bodySmall),
                  TextSpan(
                    text: CarteeTexts.termsOfUse,
                    style: context.bodySmall!.apply(
                      color: isDark ? CarteeColors.white : CarteeColors.primaryColor,
                      decoration: TextDecoration.underline,
                      decorationColor: isDark ? CarteeColors.white : CarteeColors.primaryColor,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        const SizedBox(height: CarteeSizes.spaceBtwSections),
        SizedBox(
          width: double.infinity,
          child: ElevatedButton(
            onPressed: () => Navigator.pushNamedAndRemoveUntil(
              context,
              '/verify',
              (route) => false,
            ),
            child: const Text(CarteeTexts.createAccount),
          ),
        ),
      ],
    );
  }
}
