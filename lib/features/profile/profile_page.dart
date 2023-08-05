import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'profile_controller.dart';

class ProfilePage extends GetView<ProfileController> {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text("Profile Page"),
      ),
    );
  }
}
