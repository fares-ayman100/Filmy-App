import 'package:filmy/Core/utils/app_router.dart';
import 'package:filmy/Features/splash/presentation/views/widgets/sliding_animation_logo.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> slidingAnimation;
  @override
  void initState() {
    super.initState();
    initSlidingAnimation();
    navigatorToHomeScreen();
  }

  
  @override
  void dispose() {
    super.dispose();
    animationController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SlidingAnimationLogo(slidingAnimation: slidingAnimation),
    );
  }

  void initSlidingAnimation() {
    animationController = AnimationController(
      vsync: this,
      duration: Duration(seconds: 2),
    );
    slidingAnimation = Tween<Offset>(
      begin: Offset(0, 4),
      end: Offset(0, 0),
    ).animate(animationController);
    animationController.forward();
  }
  void navigatorToHomeScreen() {
    Future.delayed(Duration(seconds: 3), () {
      GoRouter.of(context).push(AppRouter.kHomeView);
    });
  }

}
