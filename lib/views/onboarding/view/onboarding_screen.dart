import 'package:flutter/material.dart';
import 'package:the_meat_vault/constants/constants.dart';
import 'package:the_meat_vault/views/authentication/signin.dart';

import '../component/demo_content.dart';
import '../component/dot_indicator.dart';
import '../component/onboarding_content.dart';

class Onboarding extends StatefulWidget {
  const Onboarding({
    super.key,
  });

  @override
  State<Onboarding> createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {
  late PageController _pageController;
  int _pageIndex = 0;

  @override
  void initState() {
    _pageController = PageController(initialPage: 0);
    super.initState();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 20,
        ),
        child: SafeArea(
          child: Column(
            children: [
              Expanded(
                child: PageView.builder(
                  controller: _pageController,
                  itemCount: demoData.length,
                  onPageChanged: (index) {
                    setState(() {
                      _pageIndex = index;
                    });
                  },
                  itemBuilder: (context, index) => OnboardingContent(
                    image: demoData[index].image,
                    title: demoData[index].title,
                    description: demoData[index].description,
                  ),
                ),
              ),
              Row(
                children: [
                  ...List.generate(
                    demoData.length,
                    (index) => Padding(
                      padding: const EdgeInsets.only(
                        right: 4,
                      ),
                      child: DotIndicator(
                        isActive: index == _pageIndex,
                      ),
                    ),
                  ),
                  const Spacer(),
                  SizedBox(
                    height: 60,
                    width: 60,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        shape: const CircleBorder(),
                        backgroundColor: TheVaultColor.kP0,
                      ),
                      onPressed: () {
                        if (_pageIndex == demoData.length - 1) {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const SignIn(),
                            ),
                          );
                        } else {
                          _pageController.nextPage(
                            duration: const Duration(milliseconds: 300),
                            curve: Curves.easeIn,
                          );
                        }
                      },
                      child: const Icon(
                        Icons.keyboard_arrow_right_rounded,
                        color: TheVaultColor.kS0,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
