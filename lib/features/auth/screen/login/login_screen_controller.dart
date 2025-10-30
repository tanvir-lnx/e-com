import 'package:crafty_bay/app/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class LoginScreenController extends GetxController {
  final TextEditingController _emailTextEditingController =
      TextEditingController();
  final TextEditingController _passwordTextEditingController =
      TextEditingController();
  final GlobalKey<FormState> _loginAuthGlobalKey = GlobalKey<FormState>();

  RxBool isLoading = false.obs;
  RxBool isPasswordVisible = false.obs;

  TextEditingController get emailTextEditingController =>
      _emailTextEditingController;
  TextEditingController get passwordTextEditingController =>
      _passwordTextEditingController;
  GlobalKey<FormState> get loginAuthGlobalKey => _loginAuthGlobalKey;

  String? validateEmail(String? email) {
    if (email == null || email.trim().isEmpty) {
      return 'Email is required';
    } else if (!GetUtils.isEmail(email.trim())) {
      return 'Please enter a valid email';
    } else {
      return null;
    }
  }

  String? validatePassword(String? password) {
    if (password == null || password.isEmpty) {
      return 'Password is required';
    } else if (password.length < 8) {
      return 'Password must be at least 8 characters';
    } else {
      return null;
    }
  }

  void togglePasswordVisibility() {
    isPasswordVisible.value = !isPasswordVisible.value;
  }

  Future<void> onSubmit() async {
    isLoading.value = true;
    await Future.delayed(Duration(seconds: 2));
    if (!(_loginAuthGlobalKey.currentState?.validate() ?? false)) return;
    Get.offNamed(AppRoutes.mainNavHolder);
    isLoading.value = false;
  }

  void goToSignUpScreen() {
    Get.toNamed(AppRoutes.signUpScreen);
  }

  @override
  void onClose() {
    _emailTextEditingController.dispose();
    _passwordTextEditingController.dispose();
    super.onClose();
  }
}
