import 'package:flutter/material.dart';
import 'package:sportify/screens/create_account.dart';
import 'package:sportify/screens/tab.dart';
import 'package:sportify/widgets/custom_button.dart';
import 'package:sportify/widgets/custom_textfield.dart';
import 'package:sportify/widgets/logo.dart';

class SignInScreen extends StatelessWidget {
  SignInScreen({super.key});

  final emailController = TextEditingController();

  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: Container(
                color: Colors.red,
                child: Stack(
                  children: [
                    const Positioned(
                      right: 0,
                      top: 35,
                      child: Opacity(
                        opacity: 0.2,
                        child: Text(
                          'SIGN IN',
                          style: TextStyle(
                            fontSize: 110,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    Column(
                      children: [
                        const Logo(
                            image: 'assets/logo_white.png',
                            color: Colors.white),
                        const SizedBox(
                          height: 55.0,
                        ),
                        Container(
                          alignment: const AlignmentDirectional(-0.85, 0),
                          child: const Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "SIGN IN WITH YOUR\nSPORTIFY ID",
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w800,
                                  color: Colors.white,
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                            ],
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            CustomTextfield(
              controller: emailController,
              hintText: 'Email',
              obscureText: false,
            ),
            const SizedBox(
              height: 17,
            ),
            CustomTextfield(
              controller: passwordController,
              hintText: 'Password',
              obscureText: true,
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              alignment: const AlignmentDirectional(0.85, 0),
              child: const Text(
                'Forgot password?',
                style: TextStyle(
                  color: Color.fromARGB(255, 155, 148, 148),
                  fontSize: 12.0,
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 16.0,
                //vertical: 20.0,
              ),
              child: CustomButton(
                  text: 'SIGN IN',
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            const TabScreen(), // Pass the gameId
                      ),
                    );
                  },
                  backgroundColor: Colors.black,
                  textColor: Colors.white),
            ),
            const SizedBox(
              height: 30,
            ),
            const Text(
              'Your Sportify account is now Sportify ID. If you\'ve signed into\nthe app before, use the same credentials here. otherwise',
              style: TextStyle(
                color: Color.fromARGB(255, 155, 148, 148),
                fontSize: 12.0,
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            const Text(
              'OR',
              style: TextStyle(fontSize: 20),
            ),
            const SizedBox(
              height: 25,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 16.0,
                //vertical: 20.0,
              ),
              child: CustomButton(
                text: 'SIGN UP',
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const CreateAccountScreen()));
                },
                backgroundColor: const Color.fromARGB(255, 223, 213, 213),
                textColor: Colors.black,
              ),
            ),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}
