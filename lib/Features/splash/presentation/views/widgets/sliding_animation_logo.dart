import 'package:filmy/Core/utils/assets.dart';
import 'package:flutter/material.dart';

class SlidingAnimationLogo extends StatelessWidget {
  const SlidingAnimationLogo({super.key, required this.slidingAnimation});

  final Animation<Offset> slidingAnimation;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: slidingAnimation,
      builder: (context, _) {
        return Center(
          child: SlideTransition(
            position: slidingAnimation,
            child: Image.asset(AssetsData.logo),
          ),
        );
      },
    );
  }
}
