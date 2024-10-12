import 'package:cartee/app/utils/constants/sizes.dart';
import 'package:cartee/app/utils/device_utility.dart';
import 'package:cartee/app/utils/helper/helper_functions.dart';
import 'package:cartee/presentation/styles/colors.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingDotNavigation extends StatelessWidget {
  const OnBoardingDotNavigation({
    super.key,
    required PageController controller,
  }) : _controller = controller;

  final PageController _controller;

  @override
  Widget build(BuildContext context) {
    bool isDark = CarteeHelperFunctions.isDarkMode(context);

    return Positioned(
      bottom: CarteeDeviceUtility.getBottomNavigationBarHeight() + 25,
      left: CarteeSizes.defaultSpace,
      child: SmoothPageIndicator(
        controller: _controller,
        count: 3,
        effect: ExpandingDotsEffect(
          activeDotColor: isDark ? CarteeColors.light : CarteeColors.dark,
          dotHeight: 6,
        ),
      ),
    );
  }
}
