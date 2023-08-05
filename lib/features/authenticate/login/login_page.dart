import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../core/resources/assets.dart';
import 'login_controller.dart';

class LoginPage extends GetView<LoginController> {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: Image.asset(
            Assets.loginLogo,
            height: 150,
            width: 150,
            fit: BoxFit.fill,
          ),
        )
      ],
    ));
  }
}
