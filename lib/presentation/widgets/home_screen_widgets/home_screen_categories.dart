import 'package:cartee/app/utils/constants/images_paths.dart';
import 'package:cartee/presentation/widgets/global_widgets/global_category_icon_with_text.dart';
import 'package:flutter/material.dart';

class HomeScreenCategories extends StatelessWidget {
  const HomeScreenCategories({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: 8,
        scrollDirection: Axis.horizontal,
        itemBuilder: (_, index) {
          return const GlobalCategoryIconWithText(
            image: CarteeImages.shoesCategoryIcon,
            title: 'Shoes',
          );
        },
      ),
    );
  }
}
