import 'package:bookly_app/core/utils/assets.dart';
import 'package:bookly_app/core/utils/router_page.dart';

import 'package:bookly_app/features/splash/presentation/views/wedgits/animationtext.dart';
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
  late Animation<Offset> slidelogo;
  @override
  void initState() {
    super.initState();
    initslideAnimation();
    navigatebetweenpages();
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        AnimatedBuilder(
            animation: slidelogo,
            builder: (context, _) {
              return SlideTransition(
                  position: slidelogo, child: Image.asset(AssetsData.logo));
            }),
        const SizedBox(
          height: 5,
        ),
        AnimationText(slidingAnimation: slidingAnimation),
      ],
    );
  }

  void initslideAnimation() {
    animationController =
        AnimationController(vsync: this, duration: const Duration(seconds: 1));
    slidingAnimation =
        Tween<Offset>(begin: const Offset(0, 1), end: Offset.zero)
            .animate(animationController);
    slidelogo = Tween(begin: const Offset(5, 0), end: Offset.zero)
        .animate(animationController);
    // Start the animation
    animationController.forward();
  }

  void navigatebetweenpages() {
    Future.delayed(
      const Duration(seconds: 2),
      () {
        GoRouter.of(context).push(RouterPag.homeView);
        // Get.to(() =>const Home(),duration:transitionTime,transition: Transition.fade);
      },
    );
  }
}
