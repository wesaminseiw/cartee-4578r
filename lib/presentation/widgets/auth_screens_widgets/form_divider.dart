import 'package:cartee/app/utils/constants/text_strings.dart';
import 'package:cartee/app/utils/extensions.dart';
import 'package:cartee/app/utils/helper/helper_functions.dart';
import 'package:cartee/presentation/styles/colors.dart';
import 'package:flutter/material.dart';

class FormDivider extends StatelessWidget {
  final bool isLogin;

  const FormDivider({
    super.key,
    required this.isLogin,
  });

  @override
  Widget build(BuildContext context) {
    bool isDark = CarteeHelperFunctions.isDarkMode(context);
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Flexible(
              child: Divider(
                color: isDark ? CarteeColors.darkGrey : CarteeColors.grey,
                indent: 60,
                endIndent: 5,
                thickness: 1,
              ),
            ),
            Text(isLogin == true ? CarteeTexts.orsignInwith.toUpperCase() : CarteeTexts.orSignUpwith.toUpperCase(), style: context.labelMedium),
            Flexible(
              child: Divider(
                color: isDark ? CarteeColors.darkGrey : CarteeColors.grey,
                indent: 5,
                endIndent: 60,
                thickness: 1,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
