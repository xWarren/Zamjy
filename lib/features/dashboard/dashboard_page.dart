import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'dashboard_controller.dart';

class DashboardPage extends GetView<DashboardController> {
  const DashboardPage({super.key});

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
