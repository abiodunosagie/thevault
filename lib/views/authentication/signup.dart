import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:the_meat_vault/constants/constants.dart';
import 'package:the_meat_vault/views/authentication/firebase_auth_implementation/firebase_auth_service.dart';
import 'package:the_meat_vault/views/authentication/signin.dart';
import 'package:the_meat_vault/views/privacy_policy.dart';
import 'package:the_meat_vault/views/terms_and_service.dart';

import '../../components/custom_text_form.dart';
import '../../model/app_image.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  // calling the firebaseAuth services here as a variable
  final FirebaseAuthService _auth = FirebaseAuthService();
  //controllers
  final TextEditingController _firstNameController = TextEditingController();
  final TextEditingController _lastNameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPasswordController =
      TextEditingController();

  //dispose below
  @override
  void dispose() {
    _firstNameController.dispose();
    _lastNameController.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    _confirmPasswordController.dispose();
    super.dispose();
  }

  bool _isSigningUp = false;

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
                  // const Gap(50),
                  Center(
                    child: Text(
                      'Register',
                      style: AppTheme.kHeading.copyWith(
                        color: TheVaultColor.kS0,
                      ),
                    ),
                  ),
                  const Gap(20),
                  //email section
                  CustomTextField(
                    controller: _firstNameController,
                    keyboardType: TextInputType.name,
                    labelText: 'First name',
                    prefixIcon: Icon(
                      Icons.person,
                      color: TheVaultColor.kS0.withOpacity(
                        0.5,
                      ),
                    ),
                  ),
                  const Gap(10),
                  CustomTextField(
                    controller: _lastNameController,
                    keyboardType: TextInputType.name,
                    labelText: 'Last name',
                    prefixIcon: Icon(
                      Icons.person,
                      color: TheVaultColor.kS0.withOpacity(
                        0.5,
                      ),
                    ),
                  ),
                  const Gap(10),
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
                  const Gap(10),
                  CustomTextField(
                    controller: _confirmPasswordController,
                    keyboardType: TextInputType.visiblePassword,
                    labelText: 'Confirm password',
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
                  const Gap(
                    10,
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      elevation: 4,
                      minimumSize: const Size(double.infinity, 66),
                      foregroundColor: TheVaultColor.kWhite,
                      backgroundColor: TheVaultColor.kS0,
                    ),
                    onPressed: _isSigningUp ? null : _signUp,
                    child: _isSigningUp
                        ? CircularProgressIndicator(
                            color: TheVaultColor.kS0,
                            valueColor: AlwaysStoppedAnimation<Color>(
                              TheVaultColor.kS8.withOpacity(0.4),
                            ),
                          )
                        : Text(
                            'Register',
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
                        'Already have an account?',
                        style: AppTheme.kBody.copyWith(
                          color: TheVaultColor.kS3,
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
                              builder: (context) => const SignIn(),
                            ),
                          );
                        },
                        child: Text(
                          'Login here',
                          style: AppTheme.kBody.copyWith(
                            color: Colors.blue,
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
                  Row(
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
  void _signUp() async {
    setState(() {
      _isSigningUp = true;
    });

    String firstname = _firstNameController.text;
    String lastname = _lastNameController.text;
    String email = _emailController.text;
    String password = _passwordController.text;
    String confirmPassword = _confirmPasswordController.text;

    try {
      User? user = await _auth.signUpWithEmailAndPassword(
        email,
        password,
        firstname,
        lastname,
        confirmPassword,
      );

      if (user != null) {
        print('User is successfully created');
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const SignIn(),
          ),
        );
      } else {
        print('An error occurred during sign-up');
      }
    } catch (e) {
      print('Error during sign-up: $e');
    } finally {
      setState(() {
        _isSigningUp = false;
      });
    }
  }
}
