import 'package:flutter/material.dart';
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
                              const Text(
                                "WELCOME TO SPORTIFY ID",
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w800,
                                  color: Colors.white,
                                ),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              const Text(
                                "Your Sportify ID grants you access to the\nexclusive offers, personalized content, and\nmore- so you can keep being one of the best\nfans out there.",
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w800,
                                  color: Colors.white,
                                ),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              CustomButton(
                                text: 'SIGN IN OR JOIN',
                                onPressed: () {},
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
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "OTHER OPTIONS",
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w800,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    ProfileOtherOptions(title: 'Notifications'),
                    SizedBox(
                      height: 20,
                    ),
                    ProfileOtherOptions(title: 'Privacy'),
                    SizedBox(
                      height: 20,
                    ),
                    ProfileOtherOptions(title: 'Customer Support'),
                    SizedBox(
                      height: 20,
                    ),
                    ProfileOtherOptions(title: 'App info'),
                    SizedBox(
                      height: 20,
                    ),
                    ProfileOtherOptions(title: 'App info'),
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
