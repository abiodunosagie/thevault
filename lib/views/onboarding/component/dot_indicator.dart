import 'package:flutter/material.dart';
import 'package:the_meat_vault/constants/constants.dart';

class DotIndicator extends StatelessWidget {
  const DotIndicator({
    super.key,
    this.isActive = false,
  });

  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(
        milliseconds: 300,
      ),
      height: 6,
      width: isActive ? 17 : 6,
      decoration: BoxDecoration(
        color:
            isActive ? TheVaultColor.kS0 : TheVaultColor.kS3.withOpacity(0.6),
        borderRadius: BorderRadius.circular(
          12,
        ),
      ),
    );
  }
}
