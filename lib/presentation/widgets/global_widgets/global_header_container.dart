import 'package:cartee/presentation/widgets/custom_shapes.dart';
import 'package:flutter/material.dart';

class GlobalHeaderContainer extends StatelessWidget {
  final Widget child;

  const GlobalHeaderContainer({
    super.key,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: CarteeCustomCurvedEdges(),
      child: child,
    );
  }
}
