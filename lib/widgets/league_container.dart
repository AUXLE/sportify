import 'package:flutter/material.dart';

class LeagueContainer extends StatelessWidget {
  const LeagueContainer({
    super.key,
    required this.image,
  });

  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Color.fromRGBO(238, 237, 237, 1),
      ),
      width: 80,
      height: 80,
      child: Image.asset(image),
    );
  }
}
