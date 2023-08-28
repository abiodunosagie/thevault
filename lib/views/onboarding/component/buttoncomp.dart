import 'package:flutter/material.dart';
import 'package:the_meat_vault/constants/constants.dart';

class ButtonComp extends StatelessWidget {
  const ButtonComp({
    super.key,
    required this.buttonText,
    this.backgroundColor = TheVaultColor.kS0,
    this.buttonTextColor = TheVaultColor.kWhite,
    this.onPressed,
  });

  final String buttonText;
  final Color backgroundColor;
  final Color buttonTextColor;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        minimumSize: const Size(
          double.infinity,
          66,
        ),
        backgroundColor: backgroundColor,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(
              8,
            ),
          ),
        ),
      ),
      onPressed: onPressed,
      child: Text(
        buttonText,
        style: AppTheme.kBody.copyWith(
          color: buttonTextColor,
          fontWeight: FontWeight.w600,
          fontSize: 18,
        ),
      ),
    );
  }
}
