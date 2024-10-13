import 'package:cartee/app/utils/constants/sizes.dart';
import 'package:cartee/app/utils/helper/helper_functions.dart';
import 'package:cartee/presentation/styles/spacing_styles.dart';
import 'package:cartee/presentation/widgets/auth_screens_widgets/login_screen_widgets/login_screen_form.dart';
import 'package:cartee/presentation/widgets/auth_screens_widgets/form_divider.dart';
import 'package:cartee/presentation/widgets/auth_screens_widgets/login_screen_widgets/login_screen_header.dart';
import 'package:cartee/presentation/widgets/auth_screens_widgets/social_buttons.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    bool isDark = CarteeHelperFunctions.isDarkMode(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: CarteeSpacingStyle.paddingWithAppBarHeight,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: CarteeSizes.spaceBtwSections),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    LoginScreenHeader(isDark: isDark),
                    const LoginScreenForm(),
                    const SizedBox(height: CarteeSizes.lg),
                    const LoginScreenFormDivider(),
                    const SizedBox(height: CarteeSizes.spaceBtwSections),
                    LoginScreenSocialButtons(isDark: isDark),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
