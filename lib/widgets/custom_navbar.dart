import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sportify/providers/screen_state.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomNavbar extends StatelessWidget {
  const CustomNavbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: ClipPath(
        clipper: PointyClipper2(),
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
                        // Icon(
                        //   Icons.home,
                        //   color:
                        //       screenState.activeScreen == ActiveScreen.dashboard
                        //           ? Colors.red
                        //           : Colors.black,
                        //   size: 30,
                        // ),
                        SvgPicture.asset(
                          'assets/home.svg',
                          colorFilter: ColorFilter.mode(
                            screenState.activeScreen == ActiveScreen.dashboard
                                ? const Color.fromRGBO(255, 80, 80, 1)
                                : Colors.black,
                            BlendMode.srcIn,
                          ),
                          //key: ValueKey(screenState.activeScreen),
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
                        // Icon(
                        //   Icons.newspaper_rounded,
                        //   color: screenState.activeScreen == ActiveScreen.news
                        //       ? Colors.red
                        //       : Colors.black,
                        //   size: 30,
                        // ),
                        SvgPicture.asset(
                          'assets/paper.svg',
                          colorFilter: ColorFilter.mode(
                            screenState.activeScreen == ActiveScreen.news
                                ? const Color.fromRGBO(255, 80, 80, 1)
                                : Colors.black,
                            BlendMode.srcIn,
                          ),
                          //key: ValueKey(screenState.activeScreen),
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
                        // Icon(
                        //   Icons.content_paste_go,
                        //   color: screenState.activeScreen == ActiveScreen.plays
                        //       ? Colors.red
                        //       : Colors.black,
                        //   size: 30,
                        // ),
                        SvgPicture.asset(
                          'assets/play.svg',
                          colorFilter: ColorFilter.mode(
                            screenState.activeScreen == ActiveScreen.plays
                                ? const Color.fromRGBO(255, 80, 80, 1)
                                : Colors.black,
                            BlendMode.srcIn,
                          ),
                          //key: ValueKey(screenState.activeScreen),
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
                        // Icon(
                        //   Icons.person,
                        //   color:
                        //       screenState.activeScreen == ActiveScreen.profile
                        //           ? Colors.red
                        //           : Colors.black,
                        //   size: 30,
                        // ),
                        SvgPicture.asset(
                          'assets/user.svg',
                          colorFilter: ColorFilter.mode(
                            screenState.activeScreen == ActiveScreen.profile
                                ? const Color.fromRGBO(255, 80, 80, 1)
                                : Colors.black,
                            BlendMode.srcIn,
                          ),
                          //key: ValueKey(screenState.activeScreen),
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

class PointyClipper2 extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    path.moveTo(20, 0); // Start from slightly inside the left
    path.lineTo(size.width - 20, 0); // Top edge
    path.lineTo(size.width, size.height / 2); // Top right curve
    path.lineTo(size.width - 20, size.height); // Bottom right
    path.lineTo(20, size.height); // Bottom left
    path.lineTo(0, size.height / 2); // Top left curve
    path.close(); // Close the path
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
