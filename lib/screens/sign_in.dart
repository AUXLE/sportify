import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
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
    final screenHeight = MediaQuery.of(context).size.height;
    // final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: screenHeight * 0.3,
                color: const Color.fromRGBO(255, 80, 80, 1),
                child: Stack(
                  children: [
                    Positioned(
                      right: 0,
                      top: 60,
                      child: Opacity(
                        opacity: 0.2,
                        child: Text(
                          'SIGN IN',
                          style: GoogleFonts.bebasNeue(
                            fontSize: 128,
                            fontWeight: FontWeight.w700,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        const Logo(
                          image: 'assets/logo_white.png',
                          color: Colors.white,
                        ),
                        const SizedBox(height: 20.0),
                        Container(
                          alignment: Alignment.centerLeft,
                          padding: const EdgeInsets.symmetric(horizontal: 16.0),
                          child: Text(
                            "SIGN IN WITH YOUR\nSPORTIFY ID",
                            textAlign: TextAlign.start,
                            style: GoogleFonts.bebasNeue(
                              fontSize: 30,
                              fontWeight: FontWeight.w700,
                              color: Colors.white,
                              height: 1.1,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Column(
                  children: [
                    CustomTextfield(
                      controller: emailController,
                      hintText: 'Email',
                      obscureText: false,
                    ),
                    const SizedBox(height: 17),
                    CustomTextfield(
                      controller: passwordController,
                      hintText: 'Password',
                      obscureText: true,
                    ),
                    const SizedBox(height: 10),
                    Align(
                      alignment: Alignment.centerRight,
                      child: Text(
                        'Forgot password?',
                        style: TextStyle(
                          color: Colors.grey.shade600,
                          fontSize: 12.0,
                          decoration: TextDecoration.underline,
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                    CustomButton(
                      text: 'SIGN IN',
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const TabScreen()),
                        );
                      },
                      backgroundColor: Colors.black,
                      textColor: Colors.white,
                    ),
                    const SizedBox(height: 30),
                    Text(
                      'Your Sportify account is now Sportify ID. If you\'ve signed into\nthe app before, use the same credentials here. otherwise',
                      textAlign: TextAlign.start,
                      style: GoogleFonts.manrope(
                        color: Colors.black,
                        fontSize: 12.0,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    const SizedBox(height: 25),
                    const Text(
                      'OR',
                      style: TextStyle(fontSize: 20),
                    ),
                    const SizedBox(height: 25),
                    CustomButton(
                      text: 'SIGN UP',
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  const CreateAccountScreen()),
                        );
                      },
                      backgroundColor: const Color.fromRGBO(214, 213, 213, 1),
                      textColor: Colors.black,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
