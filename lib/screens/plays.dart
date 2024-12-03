import 'package:flutter/material.dart';

class PlaysScreen extends StatelessWidget {
  const PlaysScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            Text('Plays'),
          ],
        ),
      ),
    );
  }
}
