import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../core/resources/assets.dart';
import '../../../../core/resources/colors.dart' as colors;
import '../../../../core/resources/dimensions.dart' as dimensions;
import '../../../../core/resources/strings.dart' as strings;
import '../../../../core/routes/routes.dart';
import '../login_controller.dart';

class LoginBody extends GetView<LoginController> {
  const LoginBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Form(
          key: controller.key,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 70.0),
              _buildLogo(),
              const SizedBox(height: dimensions.largeSpacing),
              _buildTitle(),
              const SizedBox(height: dimensions.mediumSpacing),
              _buildEmail(),
              const SizedBox(height: dimensions.mediumSpacing),
              _buildEmailField(),
              const SizedBox(height: dimensions.largeSpacing),
              _buildPassword(),
              const SizedBox(height: dimensions.mediumSpacing),
              _buildPasswordField(),
              const SizedBox(height: dimensions.regularSpacing),
              _buildForgotPassword(),
              const SizedBox(height: 50.0),
              _buildButtons(),
              const SizedBox(height: 70.0),
              _buildAccount()
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildLogo() {
    return Center(
      child: Image.asset(
        Assets.loginLogo,
        height: 150,
        width: 150,
        fit: BoxFit.fill,
      ),
    );
  }

  Widget _buildTitle() {
    return const Center(
      child: Text(
        strings.welcome,
        style: TextStyle(
          fontSize: 35,
          fontWeight: FontWeight.bold,
          color: colors.primaryColor,
        ),
      ),
    );
  }

  Widget _buildEmail() {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 10),
      child: Text(
        strings.email,
        style: TextStyle(
          fontSize: 13,
          fontWeight: FontWeight.normal,
          color: colors.primaryColor,
        ),
      ),
    );
  }

  Widget _buildEmailField() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      height: 55,
      child: TextFormField(
        controller: controller.emailController,
        decoration: InputDecoration(
          hintText: "email@gmail.com",
          prefixIcon: Image.asset(
            Assets.icMail,
            height: 20,
            width: 20,
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: const BorderSide(color: colors.secondaryColor),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: const BorderSide(color: colors.secondaryColor),
          ),
          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: const BorderSide(color: colors.cancelButtons),
          ),
          focusedErrorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: const BorderSide(color: colors.cancelButtons),
          ),
        ),
      ),
    );
  }

  Widget _buildPassword() {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 10),
      child: Text(
        strings.password,
        style: TextStyle(
          fontSize: 13,
          fontWeight: FontWeight.normal,
          color: colors.primaryColor,
        ),
      ),
    );
  }

  Widget _buildPasswordField() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      height: 55,
      child: TextFormField(
        controller: controller.passwordController,
        decoration: InputDecoration(
          hintText: "************",
          prefixIcon: Image.asset(
            Assets.icLock,
            height: 20,
            width: 20,
          ),
          suffixIcon: Image.asset(
            Assets.icHide,
            height: 20,
            width: 20,
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: const BorderSide(color: colors.secondaryColor),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: const BorderSide(color: colors.secondaryColor),
          ),
          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: const BorderSide(color: colors.cancelButtons),
          ),
          focusedErrorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: const BorderSide(color: colors.cancelButtons),
          ),
        ),
      ),
    );
  }

  Widget _buildForgotPassword() {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Text(
            strings.forgotPassword,
            style: TextStyle(
              fontSize: 13,
              fontWeight: FontWeight.normal,
              color: colors.buttons,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildButtons() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      width: double.infinity,
      height: 55,
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: colors.buttons,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            side: const BorderSide(
              color: colors.buttons,
            ),
            shadowColor: colors.secondaryColor,
          ),
          onPressed: () {
            Get.offAndToNamed(Routes.dashboard);
          },
          child: const Text(
            strings.login,
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: colors.primaryColor,
            ),
          )),
    );
  }

  Widget _buildAccount() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text(
          strings.account,
          style: TextStyle(
            fontSize: 12,
            color: colors.primaryColor,
          ),
        ),
        const SizedBox(width: dimensions.regularSpacing),
        GestureDetector(
          onTap: () {
            Get.offAndToNamed(Routes.register);
          },
          child: const Text(
            strings.register,
            style: TextStyle(
              fontSize: 12,
              color: colors.buttons,
            ),
          ),
        )
      ],
    );
  }
}
