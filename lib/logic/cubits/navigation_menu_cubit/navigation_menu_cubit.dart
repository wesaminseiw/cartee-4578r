import 'dart:developer';
import 'package:bloc/bloc.dart';
import 'package:cartee/presentation/screens/home_screens/home_screen.dart';
import 'package:cartee/presentation/screens/home_screens/profile_screen.dart';
import 'package:cartee/presentation/screens/home_screens/store_screen.dart';
import 'package:cartee/presentation/screens/home_screens/wishlist_screen.dart';
import 'package:flutter/material.dart';

part 'navigation_menu_state.dart';

class NavigationMenuCubit extends Cubit<NavigationMenuState> {
  NavigationMenuCubit() : super(const NavigationMenuInitialState(index: 0, screen: HomeScreen()));

  selectSection({required int index}) {
    if (index == 0) {
      emit(const NavigationMenuNavigatingToHomeSectionState(index: 0, screen: HomeScreen()));
      log('PRESSED HOME & CURRENT INDEX IS $index');
    } else if (index == 1) {
      emit(const NavigationMenuNavigatingToStoreSectionState(index: 1, screen: StoreScreen()));
      log('PRESSED STORE & CURRENT INDEX IS $index');
    } else if (index == 2) {
      emit(const NavigationMenuNavigatingToWishlistSectionState(index: 2, screen: WishlistScreen()));
      log('PRESSED WISHLIST & CURRENT INDEX IS $index');
    } else if (index == 3) {
      emit(const NavigationMenuNavigatingToProfileSectionState(index: 3, screen: ProfileScreen()));
      log('PRESSED PROFILE & CURRENT INDEX IS $index');
    } else {
      log('WRONG INDEX');
    }
  }
}
