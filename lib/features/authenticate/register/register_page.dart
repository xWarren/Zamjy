import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'register_controller.dart';

class RegisterPage extends GetView<RegisterController> {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text(
          "DashboardPage Screen",
          style: TextStyle(fontSize: 15, fontWeight: FontWeight.normal),
        ),
      ),
    );
  }
}
