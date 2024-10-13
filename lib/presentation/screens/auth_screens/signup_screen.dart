import 'package:cartee/app/utils/constants/sizes.dart';
import 'package:cartee/app/utils/constants/text_strings.dart';
import 'package:cartee/app/utils/extensions.dart';
import 'package:cartee/app/utils/helper/helper_functions.dart';
import 'package:cartee/presentation/styles/colors.dart';
import 'package:cartee/presentation/widgets/auth_screens_widgets/form_divider.dart';
import 'package:cartee/presentation/widgets/auth_screens_widgets/signup_screen_widgets/signup_screen_form.dart';
import 'package:cartee/presentation/widgets/auth_screens_widgets/social_buttons.dart';
import 'package:flutter/material.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    bool isDark = CarteeHelperFunctions.isDarkMode(context);
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        appBar: AppBar(backgroundColor: isDark ? CarteeColors.secondaryColor : CarteeColors.tertiaryColor),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(CarteeSizes.defaultSpace),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(CarteeTexts.signupTitle, style: context.headlineMedium),
                const SizedBox(height: CarteeSizes.spaceBtwSections),
                const SignUpScreenForm(),
                const SizedBox(height: CarteeSizes.spaceBtwSections),
                const FormDivider(isLogin: false),
                const SocialButtons(),
                const SizedBox(height: CarteeSizes.spaceBtwSections),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
