import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:the_meat_vault/constants/constants.dart';

class OnboardingContent extends StatefulWidget {
  const OnboardingContent({
    super.key,
    required this.image,
    required this.title,
    required this.description,
  });

  final String image, title, description;

  @override
  State<OnboardingContent> createState() => _OnboardingContentState();
}

class _OnboardingContentState extends State<OnboardingContent> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Spacer(),
        Image.asset(
          widget.image,
        ),
        const Spacer(),
        Text(
          widget.title,
          style: AppTheme.kHeading.copyWith(
            fontSize: 26,
            color: TheVaultColor.kS0,
            fontWeight: FontWeight.w700,
          ),
        ),
        const Gap(10),
        Text(
          widget.description,
          style: AppTheme.kBody.copyWith(
            fontSize: 16,
            fontWeight: FontWeight.w500,
            color: TheVaultColor.kS5,
          ),
          textAlign: TextAlign.center,
        ),
        const Spacer(),
      ],
    );
  }
}
