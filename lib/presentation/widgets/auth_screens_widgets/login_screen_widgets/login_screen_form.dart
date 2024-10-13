import 'package:cartee/app/utils/constants/sizes.dart';
import 'package:cartee/app/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class LoginScreenForm extends StatelessWidget {
  const LoginScreenForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const TextField(
          decoration: InputDecoration(
            prefixIcon: Icon(Iconsax.direct_right),
            labelText: CarteeTexts.email,
          ),
        ),
        const SizedBox(height: CarteeSizes.spaceBtwInputFields),
        const TextField(
          decoration: InputDecoration(
            prefixIcon: Icon(Iconsax.password_check),
            suffixIcon: Icon(Iconsax.eye_slash),
            labelText: CarteeTexts.password,
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Checkbox(
                  value: true,
                  onChanged: (value) {},
                ),
                const Text(CarteeTexts.rememberMe),
              ],
            ),
            const Spacer(),
            TextButton(
              onPressed: () {},
              child: const Text(CarteeTexts.forgetPassword),
            ),
          ],
        ),
      ],
    );
  }
}
