import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../cart/cart_page.dart';
import '../home/home_page.dart';
import '../profile/profile_page.dart';

class DashboardController extends GetxController {
  RxInt currentIndex = 0.obs;
  List<Widget> pages = [
    const HomePage(),
    const CartPage(),
    const ProfilePage(),
  ];
}
