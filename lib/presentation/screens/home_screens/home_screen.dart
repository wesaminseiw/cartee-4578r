import 'package:cartee/app/utils/constants/sizes.dart';
import 'package:cartee/presentation/styles/colors.dart';
import 'package:cartee/presentation/widgets/global_widgets/global_search_container.dart';
import 'package:cartee/presentation/widgets/global_widgets/global_section_heading.dart';
import 'package:cartee/presentation/widgets/home_screen_widgets/home_screen_appbar.dart';
import 'package:cartee/presentation/widgets/home_screen_widgets/home_screen_categories.dart';
import 'package:cartee/presentation/widgets/home_screen_widgets/home_screen_header_container.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            HomeScreenHeaderContainer(
              child: SafeArea(
                child: Column(
                  children: [
                    HomeScreenAppBar(),
                    SizedBox(height: CarteeSizes.spaceBtwSections),
                    GlobalSearchContainer(text: 'Search in Store'),
                    SizedBox(height: CarteeSizes.spaceBtwSections),
                    Padding(
                      padding: EdgeInsets.only(left: CarteeSizes.defaultSpace),
                      child: Column(
                        children: [
                          GlobalSectionHeading(
                            title: 'Popular Categories',
                            textColor: CarteeColors.tertiaryColor,
                            showActionButton: false,
                          ),
                          SizedBox(height: CarteeSizes.spaceBtwItems),
                          HomeScreenCategories(),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
