import 'package:crafty_bay/app/utils/assets_path.dart';
import 'package:crafty_bay/features/auth/screen/login/login_screen_controller.dart';
import 'package:crafty_bay/features/common/widgets/crafty_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class LoginScreen extends GetView<LoginScreenController> {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Form(
            key: controller.loginAuthGlobalKey,
            autovalidateMode: AutovalidateMode.onUserInteraction,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              spacing: 10,
              children: [
                const SizedBox(height: 120),
                SizedBox(
                  height: 85,
                  width: 85,
                  child: SvgPicture.asset(AssetsPath.logoSvgPath),
                ),
                Text('Welcome Back', style: Get.textTheme.titleLarge),
                Text(
                  'Please Enter Your Email Address',
                  style: Get.textTheme.titleSmall,
                ),
                const SizedBox(height: 10),

                CarftyField(
                  controller: controller.emailTextEditingController,
                  validator: (value) => controller.validateEmail(value),
                  hintText: 'Email Address',
                ),
                CarftyField(
                  controller: controller.passwordTextEditingController,
                  validator: (value) => controller.validatePassword(value),
                  hintText: 'Password',
                ),
                const SizedBox(height: 16),
                SizedBox(
                  height: 46,
                  child: ElevatedButton(
                    onPressed: controller.onSubmit,
                    child: const Text('Next'),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
