import 'package:cartee/app/utils/helper/helper_functions.dart';
import 'package:cartee/logic/cubits/navigation_menu_cubit/navigation_menu_cubit.dart';
import 'package:cartee/presentation/styles/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iconsax/iconsax.dart';

class GlobalNavigationMenu extends StatefulWidget {
  const GlobalNavigationMenu({super.key});

  @override
  State<GlobalNavigationMenu> createState() => _GlobalNavigationMenuState();
}

class _GlobalNavigationMenuState extends State<GlobalNavigationMenu> {
  @override
  Widget build(BuildContext context) {
    bool isDark = CarteeHelperFunctions.isDarkMode(context);

    return BlocBuilder<NavigationMenuCubit, NavigationMenuState>(
      builder: (context, state) {
        return Scaffold(
          bottomNavigationBar: NavigationBar(
            height: 80,
            elevation: 0,
            selectedIndex: state.index,
            onDestinationSelected: (value) => context.read<NavigationMenuCubit>().selectSection(index: value),
            backgroundColor: isDark ? CarteeColors.secondaryColor : CarteeColors.tertiaryColor,
            indicatorColor: isDark ? CarteeColors.white.withOpacity(0.1) : CarteeColors.black.withOpacity(0.1),
            destinations: const [
              NavigationDestination(icon: Icon(Iconsax.home), label: 'Home'),
              NavigationDestination(icon: Icon(Iconsax.shop), label: 'Store'),
              NavigationDestination(icon: Icon(Iconsax.heart), label: 'Wishlist'),
              NavigationDestination(icon: Icon(Iconsax.user), label: 'Profile'),
            ],
          ),
          body: state.screen,
        );
      },
    );
  }
}
