import 'package:flutter/material.dart';
import 'package:sportify/providers/screen_state.dart';
import 'package:provider/provider.dart';
import 'package:sportify/screens/dashboard.dart';
import 'package:sportify/screens/news.dart';
import 'package:sportify/screens/plays.dart';
import 'package:sportify/screens/profile.dart';
import 'package:sportify/widgets/custom_navbar.dart';

class TabScreen extends StatelessWidget {
  const TabScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Consumer<ScreenState>(
            builder: (context, screenState, child) {
              switch (screenState.activeScreen) {
                case ActiveScreen.dashboard:
                  return DashboardScreen();
                case ActiveScreen.news:
                  return const NewsScreen();
                case ActiveScreen.plays:
                  return const PlaysScreen();
                case ActiveScreen.profile:
                  return const ProfileScreen();
                default:
                  return const Center(
                      child: Text("Oops... There is an Error 😢"));
              }
            },
          ),
          const Align(
            alignment: Alignment.bottomCenter,
            child: CustomNavbar(),
          ),
        ],
      ),
    );
  }
}
