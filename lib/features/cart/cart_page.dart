import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'cart_controller.dart';

class CartPage extends GetView<CartController> {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text("Cart Page"),
      ),
    );
  }
}
