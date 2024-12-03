import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sportify/screens/tab.dart';
import 'package:sportify/widgets/custom_button.dart';
import 'package:sportify/widgets/custom_textfield.dart';
import 'package:sportify/widgets/logo.dart';

class CreateAccountScreen extends StatefulWidget {
  const CreateAccountScreen({super.key});

  @override
  State<CreateAccountScreen> createState() => _CreateAccountScreenState();
}

class _CreateAccountScreenState extends State<CreateAccountScreen> {
  final firstnameController = TextEditingController();

  final lastnameController = TextEditingController();

  final emailController = TextEditingController();

  final passwordController = TextEditingController();

  bool _isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Expanded(
              child: Container(
                color: const Color.fromRGBO(255, 80, 80, 1),
                child: Stack(
                  children: [
                    Positioned(
                      right: 0,
                      top: 35,
                      child: Opacity(
                        opacity: 0.2,
                        child: Text(
                          'JOIN',
                          style: GoogleFonts.bebasNeue(
                            fontSize: 128,
                            fontWeight: FontWeight.w700,
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
                          alignment: const AlignmentDirectional(-0.7, 0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "CREATE YOUR SPORTIFY ID",
                                textAlign: TextAlign.start,
                                style: GoogleFonts.bebasNeue(
                                  fontSize: 28,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.white,
                                ),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Text(
                                "Get news, game updates highlights and more\ninfo on your favorite teams",
                                style: GoogleFonts.manrope(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.white,
                                ),
                              )
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
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: CustomTextfield(
                controller: firstnameController,
                hintText: 'First Name',
                obscureText: false,
              ),
            ),
            const SizedBox(
              height: 17,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: CustomTextfield(
                controller: lastnameController,
                hintText: 'Last Name',
                obscureText: false,
              ),
            ),
            const SizedBox(
              height: 17,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: CustomTextfield(
                controller: emailController,
                hintText: 'Email',
                obscureText: false,
              ),
            ),
            const SizedBox(
              height: 17,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: CustomTextfield(
                controller: passwordController,
                hintText: 'Password',
                obscureText: true,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              'Password must be atleast 8 character long and include 1 capital\nletter and 1 symbol',
              textAlign: TextAlign.start,
              style: GoogleFonts.manrope(
                color: Colors.black,
                fontSize: 12.0,
                fontWeight: FontWeight.w400,
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            CheckboxListTile(
              title: Text.rich(
                TextSpan(
                  text: 'I agree to the ', // Normal text
                  style: GoogleFonts.manrope(
                    color: Colors.black,
                    fontSize: 14.0,
                    fontWeight: FontWeight.w400,
                  ),
                  children: [
                    TextSpan(
                      text: 'Terms', // Bold and underlined text
                      style: GoogleFonts.manrope(
                        color: Colors.black,
                        fontSize: 14.0,
                        fontWeight: FontWeight.bold,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                    TextSpan(
                      text: ' and ', // Normal text
                      style: GoogleFonts.manrope(
                        color: Colors.black,
                        fontSize: 14.0,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    TextSpan(
                      text: 'Privacy Policy', // Bold and underlined text
                      style: GoogleFonts.manrope(
                        color: Colors.black,
                        fontSize: 14.0,
                        fontWeight: FontWeight.bold,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ],
                ),
              ),
              value: _isChecked,
              onChanged: (bool? value) {
                setState(() {
                  _isChecked = value ?? false;
                });
              },
              controlAffinity: ListTileControlAffinity.leading,
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
                  text: 'CREATE ACCOUNT',
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
            Text(
              'By agreeing to the above terms, you are consenting that your\npersonal information will be collected, stored, and processed in\nthe United States and the European Union on behalf of Sportify\nProperties, Inc.',
              style: GoogleFonts.manrope(
                color: Colors.black,
                fontSize: 12.0,
              ),
            ),
            const SizedBox(
              height: 40,
            ),
          ],
        ),
      ),
    );
  }
}
