import 'package:cartee/app/utils/constants/sizes.dart';
import 'package:cartee/app/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';

class LoginScreenFormDivider extends StatelessWidget {
  const LoginScreenFormDivider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: double.infinity,
          child: ElevatedButton(
            onPressed: () {},
            child: const Text(CarteeTexts.signIn),
          ),
        ),
        const SizedBox(height: CarteeSizes.spaceBtwItems),
        SizedBox(
          width: double.infinity,
          child: OutlinedButton(
            onPressed: () {},
            child: const Text(CarteeTexts.createAccount),
          ),
        ),
      ],
    );
  }
}
