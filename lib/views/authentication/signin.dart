import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:the_meat_vault/constants/constants.dart';
import 'package:the_meat_vault/views/authentication/forgot_password.dart';
import 'package:the_meat_vault/views/authentication/phone_login.dart';
import 'package:the_meat_vault/views/authentication/signup.dart';
import 'package:the_meat_vault/views/home_page.dart';
import 'package:the_meat_vault/views/privacy_policy.dart';
import 'package:the_meat_vault/views/terms_and_service.dart';

import '../../components/custom_text_form.dart';
import '../../model/app_image.dart';
import 'firebase_auth_implementation/firebase_auth_service.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  // calling the firebaseAuth services here as a variable
  final FirebaseAuthService _auth = FirebaseAuthService();
  //controllers

  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  //dispose below
  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();

    super.dispose();
  }

  bool _isLoggingIn = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
              vertical: 20,
            ),
            child: Align(
              alignment: Alignment.center,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Gap(50),
                  Center(
                    child: Text(
                      'Login',
                      style: AppTheme.kHeading.copyWith(
                        color: TheVaultColor.kS0,
                      ),
                    ),
                  ),
                  const Gap(20),
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
                              builder: (context) => const PhoneLogin(),
                            ),
                          );
                        },
                        child: Text(
                          'login with phone',
                          style: AppTheme.kBody.copyWith(
                            color: TheVaultColor.kLink,
                            decoration: TextDecoration.underline,
                          ),
                        ),
                      ),
                    ],
                  ),
                  //email section
                  CustomTextField(
                    controller: _emailController,
                    keyboardType: TextInputType.emailAddress,
                    labelText: 'Enter email address',
                    prefixIcon: Icon(
                      Icons.mail_lock_rounded,
                      color: TheVaultColor.kS0.withOpacity(
                        0.5,
                      ),
                    ),
                  ),
                  const Gap(10),
                  CustomTextField(
                    controller: _passwordController,
                    keyboardType: TextInputType.visiblePassword,
                    labelText: 'Enter password',
                    prefixIcon: Icon(
                      Icons.key_rounded,
                      color: TheVaultColor.kS0.withOpacity(
                        0.5,
                      ),
                    ),
                    suffixIcon: Icon(
                      Icons.remove_red_eye_rounded,
                      color: TheVaultColor.kS0.withOpacity(
                        0.5,
                      ),
                    ),
                  ),

                  TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const ForgotPassword(),
                        ),
                      );
                    },
                    child: Text(
                      'Forgot password',
                      style: AppTheme.kBody.copyWith(
                        color: TheVaultColor.kLink,
                      ),
                    ),
                  ),
                  // const Gap(20),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      elevation: 4,
                      minimumSize: const Size(double.infinity, 66),
                      foregroundColor: TheVaultColor.kWhite,
                      backgroundColor: TheVaultColor.kS0,
                    ),
                    onPressed: _isLoggingIn ? null : _signIn,
                    child: _isLoggingIn
                        ? CircularProgressIndicator(
                            color: TheVaultColor.kS0,
                            // Display the loading indicator
                            valueColor: AlwaysStoppedAnimation<Color>(
                              TheVaultColor.kP8.withOpacity(0.4),
                            ),
                          )
                        : Text(
                            'Log in',
                            style: AppTheme.kBody.copyWith(
                              fontSize: 18,
                            ),
                          ),
                  ),
                  const Gap(20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'No Account?',
                        style: AppTheme.kBody.copyWith(
                          color: TheVaultColor.kS3,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      const Gap(
                        10,
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const SignUp(),
                            ),
                          );
                        },
                        child: Text(
                          'SignUp',
                          style: AppTheme.kBody.copyWith(
                            color: Colors.blue,
                            fontWeight: FontWeight.w500,
                            decoration: TextDecoration.underline,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const Gap(20),
                  Row(
                    children: [
                      const Expanded(
                        child: Divider(),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 10,
                        ),
                        child: Text(
                          'Or login with',
                          style: AppTheme.kBody.copyWith(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: TheVaultColor.kS5,
                          ),
                        ),
                      ),
                      const Expanded(
                        child: Divider(),
                      ),
                    ],
                  ),
                  const Gap(20),

                  //social media section
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Container(
                          padding: const EdgeInsets.all(
                            10,
                          ),
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: TheVaultColor.kS9,
                            ),
                            borderRadius: BorderRadius.circular(
                              10,
                            ),
                          ),
                          height: 50,
                          width: 80,
                          child: Image.asset(
                            AppImage.facebookPng,
                          ),
                        ),
                      ),
                      const Gap(20),
                      Expanded(
                        child: Container(
                          padding: const EdgeInsets.all(
                            10,
                          ),
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: TheVaultColor.kS9,
                            ),
                            borderRadius: BorderRadius.circular(
                              10,
                            ),
                          ),
                          height: 50,
                          width: 80,
                          child: Image.asset(
                            AppImage.googlePng,
                          ),
                        ),
                      ),
                      const Gap(20),
                      Expanded(
                        child: Container(
                          padding: const EdgeInsets.all(
                            10,
                          ),
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: TheVaultColor.kS9,
                            ),
                            borderRadius: BorderRadius.circular(
                              10,
                            ),
                          ),
                          height: 50,
                          width: 80,
                          child: Image.asset(
                            AppImage.twitterPng,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const Gap(20),
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text:
                              'By continuing you acknowledge that you have read and understood and agree to our terms',
                          style: AppTheme.kBody.copyWith(
                            color: TheVaultColor.kS7,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        TextSpan(
                          text: ' Terms of Service',
                          style: AppTheme.kBody.copyWith(
                            fontWeight: FontWeight.w500,
                            color: Colors.blue,
                            decoration: TextDecoration.underline,
                          ),
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              // Handled the tap here.
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) =>
                                      const TermsAndServices(),
                                ),
                              );
                            },
                        ),
                        TextSpan(
                          text: ' and ',
                          style: AppTheme.kBody.copyWith(
                            color: TheVaultColor.kS7,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        TextSpan(
                          text: ' Privacy Policy',
                          style: AppTheme.kBody.copyWith(
                            fontWeight: FontWeight.w500,
                            color: Colors.blue,
                            decoration: TextDecoration.underline,
                          ),
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              // Handled the tap here.
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const PrivacyPolicy(),
                                ),
                              );
                            },
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  // signup method below
  void _signIn() async {
    setState(() {
      _isLoggingIn = true;
    });

    String email = _emailController.text;
    String password = _passwordController.text;

    try {
      User? user = await _auth.signInWithEmailAndPassword(email, password);

      if (user != null) {
        print('User is successfully logged in');
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const HomePage(),
          ),
        );
      } else {
        print('An error occurred during login');
      }
    } catch (e) {
      print('Error during login: $e');
    } finally {
      setState(
        () {
          _isLoggingIn = false;
        },
      );
    }
  }
}
