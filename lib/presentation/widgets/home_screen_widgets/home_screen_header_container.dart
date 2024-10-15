import 'package:cartee/presentation/styles/colors.dart';
import 'package:cartee/presentation/widgets/custom_shapes.dart';
import 'package:cartee/presentation/widgets/global_widgets/global_header_container.dart';
import 'package:flutter/material.dart';

class HomeScreenHeaderContainer extends StatelessWidget {
  final Widget child;

  const HomeScreenHeaderContainer({
    super.key,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return GlobalHeaderContainer(
      child: Container(
        color: CarteeColors.primaryColor,
        padding: const EdgeInsets.all(0),
        child: SizedBox(
          height: 400,
          child: Stack(
            children: [
              Positioned(top: -150, right: -250, child: CarteeCircularContainer(backgroundColor: CarteeColors.textWhite.withOpacity(0.1))),
              Positioned(top: 100, right: -308, child: CarteeCircularContainer(backgroundColor: CarteeColors.textWhite.withOpacity(0.1))),
              child,
            ],
          ),
        ),
      ),
    );
  }
}
