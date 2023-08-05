import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

import '../../core/resources/assets.dart';
import '../../core/resources/colors.dart' as colors;
import 'dashboard_controller.dart';

class DashboardPage extends GetView<DashboardController> {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle.dark.copyWith(
        statusBarColor: Colors.white,
      ),
      child: Obx(
        () => Scaffold(
          resizeToAvoidBottomInset: false,
          body: controller.pages[controller.currentIndex.value],
          bottomNavigationBar: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            backgroundColor: Colors.white,
            onTap: controller.currentIndex,
            currentIndex: controller.currentIndex.value,
            selectedItemColor: colors.buttons,
            unselectedItemColor: Colors.grey.withOpacity(0.5),
            showUnselectedLabels: false,
            showSelectedLabels: true,
            items: [
              BottomNavigationBarItem(
                  icon: Image.asset(
                    Assets.icHome,
                    color: controller.currentIndex.value == 0
                        ? colors.buttons
                        : colors.primaryColor,
                  ),
                  label: "Home"),
              BottomNavigationBarItem(
                  icon: Image.asset(
                    Assets.icCart,
                    color: controller.currentIndex.value == 1
                        ? colors.buttons
                        : colors.primaryColor,
                  ),
                  label: "Cart"),
              BottomNavigationBarItem(
                  icon: Image.asset(
                    Assets.icUser,
                    color: controller.currentIndex.value == 2
                        ? colors.buttons
                        : colors.primaryColor,
                  ),
                  label: "Profile"),
            ],
          ),
        ),
      ),
    );
  }
}
