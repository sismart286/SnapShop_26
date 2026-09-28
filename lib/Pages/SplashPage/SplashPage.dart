import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:snapshop/Config/Images.dart';
import 'package:snapshop/Controllers/SplashController.dart';

class SplashPage extends StatefulWidget {
  const new({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  Animation? animation;

  @override
  void initState() {
    super.initState();

    animationController = AnimationController(
      vsync: this,
      duration: Duration(seconds: 2),
    );

    animation = CurvedAnimation(
      parent: animationController,
      curve: Curves.elasticIn,
    );

    animationController.forward();
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // SplashController splashController = Get.put(SplashController());
    return Scaffold(
      backgroundColor: const Color(0xff04B70F),
      body: Center(
        child: FadeTransition(
          opacity: animationController,
          child: Image.asset(AssetsImage.snapShopVeryBigLogo, width: 200),
        ),
      ),
    );
  }
}
