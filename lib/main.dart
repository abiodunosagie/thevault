import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:the_meat_vault/views/details_page.dart';

void main() {
  runApp(const TheMeatUp());
}

class TheMeatUp extends StatelessWidget {
  const TheMeatUp({super.key});

  @override
  Widget build(BuildContext context) {
    return const ProviderScope(
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: DetailsPage(),
      ),
    );
  }
}
