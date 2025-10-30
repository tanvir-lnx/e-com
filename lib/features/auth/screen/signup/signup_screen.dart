import 'package:crafty_bay/app/utils/assets_path.dart';
import 'package:crafty_bay/features/auth/screen/signup/signup_screen_controller.dart';
import 'package:crafty_bay/features/common/widgets/crafty_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class SignupScreen extends GetView<SignupScreenController> {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Form(
            key: controller.signUpAuthKey,
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
                Text('Create New Account', style: Get.textTheme.titleLarge),
                Text(
                  'Enter Your Details Below',
                  style: Get.textTheme.titleSmall,
                ),
                const SizedBox(height: 10),

                CarftyField(
                  controller: controller.firstNameTextEditingController,
                  validator: (value) => controller.validateFirstName(value),
                  hintText: 'First Name',
                ),
                CarftyField(
                  controller: controller.lastNameTextEditingController,
                  validator: (value) => controller.validateLastName(value),
                  hintText: 'Last Name',
                ),
                CarftyField(
                  controller: controller.mobileTextEditingController,
                  validator: (value) => controller.validateMobile(value),
                  hintText: 'Mobile',
                ),
                CarftyField(
                  controller: controller.addressTextEditingController,
                  validator: (value) => controller.validateAddress(value),
                  hintText: 'Address',
                ),
                CarftyField(
                  controller: controller.passwordTextEditingController,
                  validator: (value) => controller.validatePassword(value),
                  hintText: 'Password',
                ),

                const SizedBox(height: 16),

                Obx(() {
                  return SizedBox(
                    height: 46,
                    child: ElevatedButton(
                      onPressed: controller.isLoading.value
                          ? null
                          : controller.onSubmit,
                      child: controller.isLoading.value
                          ? SizedBox(
                              height: 20,
                              width: 20,
                              child: CircularProgressIndicator.adaptive(),
                            )
                          : const Text('Sign Up'),
                    ),
                  );
                }),

                TextButton(
                  onPressed: () {},
                  child: const Text('Back to login'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
