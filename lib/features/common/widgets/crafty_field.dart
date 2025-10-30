import 'package:flutter/material.dart';

class CarftyField extends StatelessWidget {
  final String hintText;
  final TextEditingController? controller;
  final FormFieldValidator<String>? validator;
  const CarftyField({
    required this.hintText,
    required this.controller,
    required this.validator,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      textAlignVertical: TextAlignVertical.center,

      controller: controller,
      decoration: InputDecoration(
        hintText: hintText,
        
      ),
      validator: validator,
    );
  }
}
