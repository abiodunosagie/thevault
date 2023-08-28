import 'package:flutter/material.dart';

import '../constants/constants.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    this.prefixIcon,
    required this.labelText,
    this.suffixIcon,
    this.keyboardType,
    this.controller,
  });
  final Widget? prefixIcon;
  final String labelText;
  final Widget? suffixIcon;
  final TextEditingController? controller;
  final TextInputType? keyboardType;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 66,
      child: TextFormField(
        controller: controller,
        keyboardType: keyboardType,
        cursorColor: TheVaultColor.kS0,
        decoration: InputDecoration(
          suffixIcon: suffixIcon,
          prefixIcon: prefixIcon,
          labelText: labelText,
          labelStyle: AppTheme.kBody.copyWith(color: TheVaultColor.kS6),
          focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(
              color: TheVaultColor.kS0,
            ),
          ),
          border: const OutlineInputBorder(
            borderSide: BorderSide.none,
          ),
          filled: true,
          fillColor: TheVaultColor.kS9.withOpacity(
            0.6,
          ),
        ),
      ),
    );
  }
}
