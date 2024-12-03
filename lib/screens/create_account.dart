import 'package:flutter/material.dart';
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
                          'JOIN',
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
                          alignment: const AlignmentDirectional(-0.5, 0),
                          child: const Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "CREATE YOUR SPORTIFY ID",
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
                              Text(
                                "Get news, game updates highlights and more\ninfo on your favorite teams",
                                style: TextStyle(
                                  fontSize: 16,
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
            CustomTextfield(
              controller: firstnameController,
              hintText: 'First Name',
              obscureText: false,
            ),
            const SizedBox(
              height: 17,
            ),
            CustomTextfield(
              controller: lastnameController,
              hintText: 'Last Name',
              obscureText: false,
            ),
            const SizedBox(
              height: 17,
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
            const Text(
              'Password must be atleast 8 character long and include 1 capital\nletter and 1 symbol',
              style: TextStyle(
                color: Color.fromARGB(255, 155, 148, 148),
                fontSize: 12.0,
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            CheckboxListTile(
              title: const Text('I agree to the Terms and Privacy Policy'),
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
            const Text(
              'By agreeing to the above terms, you are consenting that your\npersonal information will be collected, stored, and processed in\nthe United States and the European Union on behalf of Sportify\nProperties, Inc.',
              style: TextStyle(
                color: Color.fromARGB(255, 155, 148, 148),
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
