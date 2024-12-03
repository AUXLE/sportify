import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sportify/providers/screen_state.dart';
import 'package:sportify/screens/onboarding.dart';

void main() {
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(create: (_) => ScreenState()),
    ],
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: OnboardingScreen(),
    );
  }
}
