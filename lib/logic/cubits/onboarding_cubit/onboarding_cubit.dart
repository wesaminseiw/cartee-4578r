import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';

part 'onboarding_state.dart';

class OnBoardingCubit extends Cubit<OnBoardingState> {
  OnBoardingCubit() : super(OnBoardingInitial());

  void skip(BuildContext context, PageController controller) {
    if (controller.page!.toInt() < 2) {
      controller.jumpToPage(2);
      log('PRESSED SKIP BUTTON (OnBoardingScreen)');
      emit(OnBoardingSkipped());
    } else {
      Navigator.pushNamedAndRemoveUntil(
        context,
        '/login',
        (route) => false,
      );
      log('PRESSED SKIP BUTTON AND NAVIGATED TO LOGIN SCREEN (OnBoardingScreen)');
      emit(OnBoardingSkippedNavigatedToLoginScreen());
    }
  }

  void nextPage(BuildContext context, PageController controller) {
    if (controller.page!.toInt() < 2) {
      controller.jumpToPage(controller.page!.toInt() + 1);
      log('PRESSED NEXT BUTTON (OnBoardingScreen)');
      emit(OnBoardingSkipped());
    } else {
      Navigator.pushNamedAndRemoveUntil(
        context,
        '/login',
        (route) => false,
      );
      log('PRESSED NEXT BUTTON AND NAVIGATED TO LOGIN SCREEN (OnBoardingScreen)');
      emit(OnBoardingNextPageNavigatedToLoginScreen());
    }
  }
}
