import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:the_meat_vault/views/onboarding/view/onboarding_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const TheMeatUp());
}

class TheMeatUp extends StatelessWidget {
  const TheMeatUp({super.key});

  @override
  Widget build(BuildContext context) {
    return const ProviderScope(
      child: MaterialApp(
        home: Onboarding(),
      ),
    );
  }
}
