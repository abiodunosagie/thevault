import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:the_meat_vault/constants/constants.dart';
import 'package:the_meat_vault/views/authentication/signin.dart';

import '../../components/custom_text_form.dart';
import '../home_page.dart';

class PhoneLogin extends StatelessWidget {
  const PhoneLogin({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        automaticallyImplyLeading: true,
        iconTheme: const IconThemeData(
          color: TheVaultColor.kS0,
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 20,
            vertical: 20,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Gap(150),
              Center(
                child: Text(
                  'Login',
                  style: AppTheme.kHeading.copyWith(
                    color: TheVaultColor.kS0,
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Email',
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const SignIn(),
                        ),
                      );
                    },
                    child: Text(
                      'login with email',
                      style: AppTheme.kBody.copyWith(
                        color: TheVaultColor.kLink,
                      ),
                    ),
                  ),
                ],
              ),
              //email section
              CustomTextField(
                keyboardType: TextInputType.phone,
                labelText: 'Enter email address',
                prefixIcon: Icon(
                  Icons.phone_android_rounded,
                  color: TheVaultColor.kS0.withOpacity(
                    0.5,
                  ),
                ),
              ),
              TextButton(
                onPressed: () {},
                child: Text(
                  'Forgot password',
                  style: AppTheme.kBody.copyWith(
                    color: TheVaultColor.kLink,
                  ),
                ),
              ),
              const Gap(20),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  minimumSize: const Size(double.infinity, 66),
                  foregroundColor: TheVaultColor.kWhite,
                  backgroundColor: TheVaultColor.kS0,
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const HomePage(),
                    ),
                  );
                },
                child: Text(
                  'Log in',
                  style: AppTheme.kBody.copyWith(
                    fontSize: 18,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
