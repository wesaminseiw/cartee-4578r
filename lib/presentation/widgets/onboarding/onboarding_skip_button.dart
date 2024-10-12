import 'package:cartee/app/utils/constants/sizes.dart';
import 'package:cartee/app/utils/constants/text_strings.dart';
import 'package:cartee/app/utils/device_utility.dart';
import 'package:cartee/logic/cubits/onboarding_cubit/onboarding_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class OnBoardingSkipButton extends StatelessWidget {
  final PageController controller;
  const OnBoardingSkipButton({
    super.key,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<OnBoardingCubit, OnBoardingState>(
      builder: (context, state) {
        return Positioned(
          top: CarteeDeviceUtility.getAppBarHeight(),
          right: CarteeSizes.defaultSpace,
          child: TextButton(
            onPressed: () => context.read<OnBoardingCubit>().skip(context, controller),
            child: const Text(CarteeTexts.skipButtonTitle),
          ),
        );
      },
    );
  }
}
