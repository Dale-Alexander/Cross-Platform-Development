import 'package:flutter/material.dart';

class GradientBackground extends StatelessWidget {
  final Widget? child;
  final Color c1;
  final Color c2;

  const GradientBackground({
    super.key,
    this.child,
    this.c1 = Colors.yellow,
    this.c2 = Colors.green,
  });

  const GradientBackground.amber({super.key, this.child})
    : c1 = Colors.amber,
      c2 = Colors.deepOrange;

  GradientBackground.custom({
    super.key,
    required this.c1,
    required this.c2,
    this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [c1, c2],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: child,
    );
  }
}
