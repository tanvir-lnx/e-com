import 'package:crafty_bay/app/routes/app_routes.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class SignupScreenController extends GetxController {
  final TextEditingController _firstNameTextEditingController =
      TextEditingController();
  final TextEditingController _lastNameTextEditingController =
      TextEditingController();
  final TextEditingController _mobileTextEditingController =
      TextEditingController();
  final TextEditingController _addressTextEditingController =
      TextEditingController();
  final TextEditingController _passwordTextEditingController =
      TextEditingController();
  final GlobalKey<FormState> _signUpAuthKey = GlobalKey<FormState>();

  RxBool isLoading = false.obs;
  RxBool isPasswordVisible = false.obs;

  // Getters
  TextEditingController get firstNameTextEditingController =>
      _firstNameTextEditingController;
  TextEditingController get lastNameTextEditingController =>
      _lastNameTextEditingController;
  TextEditingController get mobileTextEditingController =>
      _mobileTextEditingController;
  TextEditingController get addressTextEditingController =>
      _addressTextEditingController;
  TextEditingController get passwordTextEditingController =>
      _passwordTextEditingController;
  GlobalKey<FormState> get signUpAuthKey => _signUpAuthKey;

  String? validateFirstName(String? value) {
    if (value == null || value.trim().isEmpty) {
      return '';
    } else {
      return null;
    }
  }

  String? validateLastName(String? value) {
    if (value == null || value.trim().isEmpty) {
      return '';
    } else {
      return null;
    }
  }

  String? validateMobile(String? value) {
    if (value == null || value.trim().isEmpty) {
      return 'Number is required';
    } else if (value.trim().length < 10) {
      return 'Enter a valid number';
    } else {
      return null;
    }
  }

  String? validateAddress(String? value) {
    if (value == null || value.trim().isEmpty) {
      return '';
    } else {
      return null;
    }
  }

  String? validatePassword(String? value) {
    if (value == null || value.isEmpty) {
      return 'Password is required';
    } else if (value.length < 8) {
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
    if (!(_signUpAuthKey.currentState?.validate() ?? false)) return;
    await Future.delayed(Duration(seconds: 2));
    Get.offAndToNamed(AppRoutes.mainNavHolder);
    isLoading.value = false;
  }

  @override
  void onClose() {
    _firstNameTextEditingController.dispose();
    _lastNameTextEditingController.dispose();
    _mobileTextEditingController.dispose();
    _addressTextEditingController.dispose();
    super.onClose();
  }
}
