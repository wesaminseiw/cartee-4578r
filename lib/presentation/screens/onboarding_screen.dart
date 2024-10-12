import 'package:cartee/app/utils/constants/images_paths.dart';
import 'package:cartee/app/utils/constants/text_strings.dart';
import 'package:cartee/presentation/widgets/onboarding/onboarding_dot_navigation.dart';
import 'package:cartee/presentation/widgets/onboarding/onboarding_next_page_button.dart';
import 'package:cartee/presentation/widgets/onboarding/onboarding_page.dart';
import 'package:cartee/presentation/widgets/onboarding/onboarding_skip_button.dart';
import 'package:flutter/material.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  @override
  Widget build(BuildContext context) {
    final PageController _controller = PageController();

    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: _controller,
            children: const [
              OnBoardingPage(
                image: CarteeImagesPaths.onboardingImageProduct,
                title: CarteeTexts.onBoardingTitle1,
                subtitle: CarteeTexts.onBoardingSubTitle1,
              ),
              OnBoardingPage(
                image: CarteeImagesPaths.onboardingImagePaymentMethod,
                title: CarteeTexts.onBoardingTitle2,
                subtitle: CarteeTexts.onBoardingSubTitle2,
              ),
              OnBoardingPage(
                image: CarteeImagesPaths.onboardingImageDelivery,
                title: CarteeTexts.onBoardingTitle3,
                subtitle: CarteeTexts.onBoardingSubTitle3,
              ),
            ],
          ),
          OnBoardingSkipButton(controller: _controller),
          OnBoardingDotNavigation(controller: _controller),
          OnBoardingNextPageButton(controller: _controller),
        ],
      ),
    );
  }
}
