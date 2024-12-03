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
        color: Colors.grey,
      ),
      width: 100,
      height: 100,
      child: Image.asset(image),
    );
  }
}
