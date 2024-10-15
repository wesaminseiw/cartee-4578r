import 'package:cartee/app/utils/constants/text_strings.dart';
import 'package:cartee/app/utils/device_utility.dart';
import 'package:cartee/presentation/styles/colors.dart';
import 'package:cartee/presentation/widgets/global_widgets/global_appbar.dart';
import 'package:cartee/presentation/widgets/home_screen_widgets/home_screen_cart_menu_icon.dart';
import 'package:flutter/material.dart';

class HomeScreenAppBar extends StatelessWidget {
  const HomeScreenAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: CarteeDeviceUtility.getAppBarHeight(),
      child: GlobalAppBar(
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(CarteeTexts.homeAppbarTitle, style: Theme.of(context).textTheme.labelMedium!.apply(color: CarteeColors.grey)),
            Text(CarteeTexts.homeAppbarSubTitle, style: Theme.of(context).textTheme.headlineSmall!.apply(color: CarteeColors.white)),
          ],
        ),
        actions: [
          HomeScreenCartMenuIcon(onPressed: () {}, iconColor: CarteeColors.white),
        ],
      ),
    );
  }
}
