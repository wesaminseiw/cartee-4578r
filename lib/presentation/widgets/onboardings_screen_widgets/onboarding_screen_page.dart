import 'package:cartee/app/utils/constants/sizes.dart';
import 'package:cartee/app/utils/helper/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class OnBoardingPage extends StatelessWidget {
  final String image;
  final String title;
  final String subtitle;
  const OnBoardingPage({
    super.key,
    required this.image,
    required this.title,
    required this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(CarteeSizes.defaultSpace),
      child: Column(
        children: [
          Lottie.asset(
            image,
            width: CarteeHelperFunctions.screenWidth(context) * 0.8,
            height: CarteeHelperFunctions.screenHeight(context) * 0.6,
          ),
          Text(
            title,
            style: Theme.of(context).textTheme.headlineMedium,
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: CarteeSizes.spaceBtwItems),
          Text(
            subtitle,
            style: Theme.of(context).textTheme.bodyMedium,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
