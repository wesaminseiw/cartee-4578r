import 'package:cartee/app/utils/constants/sizes.dart';
import 'package:cartee/app/utils/device_utility.dart';
import 'package:cartee/app/utils/helper/helper_functions.dart';
import 'package:cartee/logic/cubits/onboarding_cubit/onboarding_cubit.dart';
import 'package:cartee/presentation/styles/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iconsax/iconsax.dart';

class OnBoardingNextPageButton extends StatelessWidget {
  final PageController controller;
  const OnBoardingNextPageButton({
    super.key,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    bool isDark = CarteeHelperFunctions.isDarkMode(context);
    return BlocBuilder<OnBoardingCubit, OnBoardingState>(
      builder: (context, state) {
        return Positioned(
          right: CarteeSizes.defaultSpace,
          bottom: CarteeDeviceUtility.getBottomNavigationBarHeight(),
          child: ElevatedButton(
            onPressed: () => context.read<OnBoardingCubit>().nextPage(context, controller),
            style: ElevatedButton.styleFrom(
              shape: const CircleBorder(),
              backgroundColor: isDark ? CarteeColors.primaryColor : CarteeColors.black,
            ),
            child: const Icon(Iconsax.arrow_right_3),
          ),
        );
      },
    );
  }
}
