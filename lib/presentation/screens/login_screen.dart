import 'package:cartee/app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(
            left: CarteeSizes.defaultSpace,
            right: CarteeSizes.defaultSpace,
            top: CarteeSizes.appBarHeight,
            bottom: CarteeSizes.defaultSpace,
          ),
        ),
      ),
    );
  }
}
