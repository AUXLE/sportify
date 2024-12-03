import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sportify/providers/screen_state.dart';
import 'package:sportify/widgets/custom_button.dart';

class CustomNavbar extends StatelessWidget {
  const CustomNavbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: ClipPath(
        clipper: PointyClipper(),
        child: Container(
          height: 70,
          margin: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 20.0),
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(30.0),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.1),
                blurRadius: 10.0,
                offset: const Offset(0, 5),
              ),
            ],
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              // Dashboard Button
              GestureDetector(
                onTap: () {
                  Provider.of<ScreenState>(context, listen: false)
                      .setActiveScreen(ActiveScreen.dashboard);
                },
                child: Consumer<ScreenState>(
                  builder: (context, screenState, child) {
                    return Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(
                          Icons.home,
                          color:
                              screenState.activeScreen == ActiveScreen.dashboard
                                  ? Colors.red
                                  : Colors.black,
                          size: 30,
                        ),
                      ],
                    );
                  },
                ),
              ),

              // Campaigns Button
              GestureDetector(
                onTap: () {
                  Provider.of<ScreenState>(context, listen: false)
                      .setActiveScreen(ActiveScreen.news);
                },
                child: Consumer<ScreenState>(
                  builder: (context, screenState, child) {
                    return Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(
                          Icons.newspaper_rounded,
                          color: screenState.activeScreen == ActiveScreen.news
                              ? Colors.red
                              : Colors.black,
                          size: 30,
                        ),
                      ],
                    );
                  },
                ),
              ),

              // User Data Button
              GestureDetector(
                onTap: () {
                  Provider.of<ScreenState>(context, listen: false)
                      .setActiveScreen(ActiveScreen.plays);
                },
                child: Consumer<ScreenState>(
                  builder: (context, screenState, child) {
                    return Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(
                          Icons.content_paste_go,
                          color: screenState.activeScreen == ActiveScreen.plays
                              ? Colors.red
                              : Colors.black,
                          size: 30,
                        ),
                      ],
                    );
                  },
                ),
              ),

              // Claim Coupon Button
              GestureDetector(
                onTap: () {
                  Provider.of<ScreenState>(context, listen: false)
                      .setActiveScreen(ActiveScreen.profile);
                },
                child: Consumer<ScreenState>(
                  builder: (context, screenState, child) {
                    return Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(
                          Icons.person,
                          color:
                              screenState.activeScreen == ActiveScreen.profile
                                  ? Colors.red
                                  : Colors.black,
                          size: 30,
                        ),
                      ],
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
