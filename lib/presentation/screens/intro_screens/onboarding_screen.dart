import 'package:cartee/app/utils/constants/images_paths.dart';
import 'package:cartee/app/utils/constants/text_strings.dart';
import 'package:cartee/presentation/widgets/onboardings_screen_widgets/onboarding_screen_dot_navigation.dart';
import 'package:cartee/presentation/widgets/onboardings_screen_widgets/onboarding_screen_next_page_button.dart';
import 'package:cartee/presentation/widgets/onboardings_screen_widgets/onboarding_screen_page.dart';
import 'package:cartee/presentation/widgets/onboardings_screen_widgets/onboarding_screen_skip_button.dart';
import 'package:flutter/material.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  @override
  Widget build(BuildContext context) {
    final PageController controller = PageController();

    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: controller,
            children: const [
              OnBoardingPage(
                image: CarteeImages.onboardingImageProductAnimation,
                title: CarteeTexts.onBoardingTitle1,
                subtitle: CarteeTexts.onBoardingSubTitle1,
              ),
              OnBoardingPage(
                image: CarteeImages.onboardingImagePaymentMethodAnimation,
                title: CarteeTexts.onBoardingTitle2,
                subtitle: CarteeTexts.onBoardingSubTitle2,
              ),
              OnBoardingPage(
                image: CarteeImages.onboardingImageDeliveryAnimation,
                title: CarteeTexts.onBoardingTitle3,
                subtitle: CarteeTexts.onBoardingSubTitle3,
              ),
            ],
          ),
          OnBoardingSkipButton(controller: controller),
          OnBoardingDotNavigation(controller: controller),
          OnBoardingNextPageButton(controller: controller),
        ],
      ),
    );
  }
}
