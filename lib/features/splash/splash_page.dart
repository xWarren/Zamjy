import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../core/resources/assets.dart';
import 'splash_controller.dart';

class SplashPage extends GetView<SplashController> {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Image.asset(
          Assets.logo,
          height: 200,
          width: 200,
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}
