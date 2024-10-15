import 'package:cartee/presentation/widgets/home_screen_widgets/home_screen_header_container.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            HomeScreenHeaderContainer(
              child: Container(),
            ),
          ],
        ),
      ),
    );
  }
}
