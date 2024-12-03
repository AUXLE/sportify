import 'package:flutter/material.dart';
import 'package:sportify/screens/create_account.dart';
import 'package:sportify/screens/sign_in.dart';
import 'package:sportify/widgets/logo.dart';

import '../widgets/custom_button.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            const Logo(image: 'assets/logo_red.png', color: Colors.black),
            Expanded(
              child: Stack(
                clipBehavior: Clip.none,
                children: [
                  Positioned(
                    top: -100,
                    right: -140,
                    child: Image.asset(
                      'assets/Vector.png',
                      width: 504,
                      height: 545,
                    ),
                  ),
                  Positioned(
                    top: -120,
                    left: -100,
                    child: Image.asset(
                      'assets/football_player.png',
                      width: 590,
                      height: 614,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "KEEP AN EYE ON\nTHE STADIUM",
                    textAlign: TextAlign.start,
                    style: TextStyle(
                      fontSize: 45,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Watch sports live or highlights, read every\nnews from your smartphone",
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.grey[700],
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 60,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 16.0,
                vertical: 20.0,
              ),
              child: Column(
                children: [
                  CustomButton(
                    text: "LOGIN",
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => SignInScreen()));
                    },
                    backgroundColor: Colors.red,
                    textColor: Colors.white,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  CustomButton(
                    text: "CREATE ACCOUNT",
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  const CreateAccountScreen()));
                    },
                    backgroundColor: const Color.fromARGB(255, 223, 213, 213),
                    textColor: Colors.black,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
