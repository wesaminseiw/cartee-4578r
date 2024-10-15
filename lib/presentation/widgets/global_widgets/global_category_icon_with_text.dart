import 'package:cartee/app/utils/constants/sizes.dart';
import 'package:cartee/presentation/styles/colors.dart';
import 'package:flutter/material.dart';

class GlobalCategoryIconWithText extends StatelessWidget {
  final String image, title;
  final Color textColor;
  final Color? backgroundColor;
  final void Function()? onTap;

  const GlobalCategoryIconWithText({
    super.key,
    required this.image,
    required this.title,
    this.textColor = CarteeColors.tertiaryColor,
    this.backgroundColor = CarteeColors.tertiaryColor,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: CarteeSizes.spaceBtwItems),
      child: GestureDetector(
        onTap: onTap,
        child: Column(
          children: [
            Container(
              width: 56,
              height: 56,
              padding: const EdgeInsets.all(CarteeSizes.sm),
              decoration: BoxDecoration(
                color: backgroundColor,
                borderRadius: BorderRadius.circular(100),
              ),
              child: Center(
                child: Image.asset(
                  image,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(height: CarteeSizes.spaceBtwItems / 2),
            SizedBox(
              width: 55,
              child: Text(
                title,
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.labelMedium!.apply(color: textColor),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
