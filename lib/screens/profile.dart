import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sportify/widgets/custom_button.dart';
import 'package:sportify/widgets/logo.dart';
import 'package:sportify/widgets/profile_other_options.dart';
import 'package:sportify/widgets/profile_text_box.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                color: const Color.fromRGBO(255, 80, 80, 1),
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
                          color: Colors.white,
                        ),
                        const SizedBox(
                          height: 55.0,
                        ),
                        Container(
                          alignment: const AlignmentDirectional(-0.85, 0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "WELCOME TO SPORTIFY ID",
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
                                "Your Sportify ID grants you access to the\nexclusive offers, personalized content, and\nmore- so you can keep being one of the best\nfans out there.",
                                textAlign: TextAlign.start,
                                style: GoogleFonts.manrope(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.white,
                                ),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              CustomButton(
                                text: 'SIGN IN OR JOIN',
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                backgroundColor: Colors.black,
                                textColor: Colors.white,
                                fullSize: false,
                              ),
                              const SizedBox(
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
              const SizedBox(
                height: 20,
              ),
              const ProfileTextBox(
                title: 'MY TEAMS',
                content:
                    'Follow your favorite teams for personalized\ncontent and recommendations.',
              ),
              const SizedBox(
                height: 10,
              ),
              const ProfileTextBox(
                title: 'MY PLAYERS',
                content:
                    'Follow your favorite for personalized content\nand recommendations.',
              ),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "OTHER OPTIONS",
                      textAlign: TextAlign.start,
                      style: GoogleFonts.bebasNeue(
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                        color: Colors.black,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const ProfileOtherOptions(title: 'Notifications'),
                    const SizedBox(
                      height: 20,
                    ),
                    const ProfileOtherOptions(title: 'Privacy'),
                    const SizedBox(
                      height: 20,
                    ),
                    const ProfileOtherOptions(title: 'Customer Support'),
                    const SizedBox(
                      height: 20,
                    ),
                    const ProfileOtherOptions(title: 'App info'),
                    const SizedBox(
                      height: 20,
                    ),
                    const ProfileOtherOptions(title: 'App info'),
                  ],
                ),
              ),
              const SizedBox(
                height: 80,
              ),
              //const Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}
