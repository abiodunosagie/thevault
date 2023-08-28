import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:the_meat_vault/constants/constants.dart';
import 'package:the_meat_vault/views/authentication/phone_login.dart';
import 'package:the_meat_vault/views/home_page.dart';

import '../../components/custom_text_form.dart';
import '../../model/app_image.dart';
import 'firebase_auth_implementation/firebase_auth_service.dart';
import 'forgot_password/forgot_password_options/forgot_password_modal_bottom_sheet.dart';

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
                  Align(
                    alignment: Alignment.center,
                    child: Image.asset(
                      AppImage.login,
                      height: 300,
                    ),
                  ),

                  Text(
                    'Welcome Back,',
                    style: AppTheme.kHeading.copyWith(
                      color: TheVaultColor.kS0,
                      fontSize: 28,
                    ),
                  ),
                  Text(
                    'Make it work, make it right, and make it fast.',
                    style: AppTheme.kBody.copyWith(
                      color: TheVaultColor.kS5,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const Gap(20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'Email*',
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
                    prefixIcon: const Icon(
                      Icons.person,
                      color: TheVaultColor.kS5,
                    ),
                  ),
                  const Gap(10),
                  CustomTextField(
                    controller: _passwordController,
                    keyboardType: TextInputType.visiblePassword,
                    labelText: 'Enter password',
                    prefixIcon: const Icon(
                      Icons.fingerprint,
                      color: TheVaultColor.kS5,
                    ),
                    suffixIcon: Icon(
                      Icons.remove_red_eye_rounded,
                      color: TheVaultColor.kS0.withOpacity(
                        0.5,
                      ),
                    ),
                  ),
// -- FORGOT PASSWORD BTN
                  TextButton(
                    onPressed: () {
                      ForgetPasswordScreen.buildShowModalBottomSheet(context);
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
