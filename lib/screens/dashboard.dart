import 'package:flutter/material.dart';
import 'package:sportify/widgets/custom_button.dart';
import 'package:sportify/widgets/custom_textfield.dart';
import 'package:sportify/widgets/highlights.dart';
import 'package:sportify/widgets/league_container.dart';
import 'package:sportify/widgets/logo.dart';
import 'package:sportify/widgets/news_container.dart';
import 'package:sportify/widgets/slider_title.dart';

class DashboardScreen extends StatelessWidget {
  DashboardScreen({super.key});

  final searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Logo(
                  image: 'assets/logo_red.png',
                  color: Colors.black,
                ),
                Icon(Icons.notifications),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            CustomTextfield(
              controller: searchController,
              hintText: 'Team, sport or venue',
              obscureText: false,
            ),
            const SizedBox(
              height: 10,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Padding(
                padding: const EdgeInsets.only(left: 16.0),
                child: Row(
                  children: [
                    CustomButton(
                      text: '🔥 Trending',
                      onPressed: () {},
                      backgroundColor: Colors.black,
                      textColor: Colors.white,
                      fullSize: false,
                    ),
                    CustomButton(
                      text: '⚽️ Football',
                      onPressed: () {},
                      backgroundColor: Colors.white,
                      textColor: Colors.black,
                      fullSize: false,
                    ),
                    CustomButton(
                      text: '🏀 Basketball',
                      onPressed: () {},
                      backgroundColor: Colors.white,
                      textColor: Colors.black,
                      fullSize: false,
                    ),
                    CustomButton(
                      text: '🏏 Cricket',
                      onPressed: () {},
                      backgroundColor: Colors.white,
                      textColor: Colors.black,
                      fullSize: false,
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 16.0),
                        child: Row(
                          children: [
                            Image.asset('assets/stadium.png'),
                            const SizedBox(
                              width: 20,
                            ),
                            Image.asset('assets/stadium.png'),
                            const SizedBox(
                              width: 20,
                            ),
                            Image.asset('assets/stadium.png'),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const SliderTitle(title: 'FIFA WORLD CUP'),
                    const SizedBox(
                      height: 10,
                    ),
                    const SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Padding(
                        padding: EdgeInsets.only(left: 16.0),
                        child: Row(
                          children: [
                            Highlights(),
                            SizedBox(
                              width: 20,
                            ),
                            Highlights(),
                            SizedBox(
                              width: 20,
                            ),
                            Highlights(),
                            SizedBox(
                              width: 20,
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const SliderTitle(title: 'ALL LEAGUES'),
                    const SizedBox(
                      height: 10,
                    ),
                    const SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Padding(
                        padding: EdgeInsets.only(left: 16.0),
                        child: Row(
                          children: [
                            LeagueContainer(image: 'assets/lion.png'),
                            SizedBox(
                              width: 20,
                            ),
                            LeagueContainer(image: 'assets/cbf.png'),
                            SizedBox(
                              width: 20,
                            ),
                            LeagueContainer(image: 'assets/ball.png'),
                            SizedBox(
                              width: 20,
                            ),
                            LeagueContainer(image: 'assets/korean.png'),
                            SizedBox(
                              width: 20,
                            ),
                            LeagueContainer(image: 'assets/lion.png'),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Padding(
                      padding: EdgeInsets.all(16.0),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              NewsContainer(
                                  image: 'assets/football_kick.png',
                                  title:
                                      'Best of Portugal goals\nagainst Switzerland'),
                              NewsContainer(
                                  image: 'assets/messi.png',
                                  title: 'Messi goals agains\nSwitzerland')
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              NewsContainer(
                                  image: 'assets/qatar_stadium.png',
                                  title:
                                      'Best of Portugal goals\nagainst Switzerland'),
                              NewsContainer(
                                  image: 'assets/fans.png',
                                  title: 'Messi goals agains\nSwitzerland')
                            ],
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
