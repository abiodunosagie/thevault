import 'package:flutter/material.dart';
import 'package:the_meat_vault/views/home_page.dart';

void main() {
  runApp(const TheMeatUp());
}

class TheMeatUp extends StatelessWidget {
  const TheMeatUp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
