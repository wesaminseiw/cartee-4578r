part of 'onboarding_cubit.dart';

@immutable
sealed class OnBoardingState {}

class OnBoardingInitial extends OnBoardingState {}

class OnBoardingSkipped extends OnBoardingState {}

class OnBoardingSkippedNavigatedToLoginScreen extends OnBoardingState {}

class OnBoardingNextPageButtonPressed extends OnBoardingState {}

class OnBoardingNextPageNavigatedToLoginScreen extends OnBoardingState {}
