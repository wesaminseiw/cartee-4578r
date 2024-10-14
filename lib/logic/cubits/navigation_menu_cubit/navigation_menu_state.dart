part of 'navigation_menu_cubit.dart';

@immutable
abstract class NavigationMenuState {
  final int index;
  final Widget screen;

  const NavigationMenuState({
    required this.index,
    required this.screen,
  });
}

class NavigationMenuInitialState extends NavigationMenuState {
  const NavigationMenuInitialState({
    required super.index,
    required super.screen,
  });
}

class NavigationMenuNavigatingToHomeSectionState extends NavigationMenuState {
  const NavigationMenuNavigatingToHomeSectionState({
    required super.index,
    required super.screen,
  });
}

class NavigationMenuNavigatingToStoreSectionState extends NavigationMenuState {
  const NavigationMenuNavigatingToStoreSectionState({
    required super.index,
    required super.screen,
  });
}

class NavigationMenuNavigatingToWishlistSectionState extends NavigationMenuState {
  const NavigationMenuNavigatingToWishlistSectionState({
    required super.index,
    required super.screen,
  });
}

class NavigationMenuNavigatingToProfileSectionState extends NavigationMenuState {
  const NavigationMenuNavigatingToProfileSectionState({
    required super.index,
    required super.screen,
  });
}
