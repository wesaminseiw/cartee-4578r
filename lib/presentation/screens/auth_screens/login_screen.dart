import 'package:cartee/app/utils/constants/sizes.dart';
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
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: const Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: CarteeSpacingStyle.paddingWithAppBarHeight,
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(vertical: CarteeSizes.spaceBtwSections),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      LoginScreenHeader(),
                      LoginScreenForm(),
                      SizedBox(height: CarteeSizes.spaceBtwSections),
                      FormDivider(isLogin: true),
                      SocialButtons(),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
