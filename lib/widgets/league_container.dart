import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LeagueContainer extends StatelessWidget {
  const LeagueContainer({
    super.key,
    required this.image,
    required this.title,
  });

  final String image;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: const BoxDecoration(
            color: Color.fromRGBO(238, 237, 237, 1),
          ),
          width: 80,
          height: 80,
          child: Image.asset(image),
        ),
        const SizedBox(
          height: 20,
        ),
        Text(
          title,
          textAlign: TextAlign.center,
          style: GoogleFonts.manrope(
            fontWeight: FontWeight.w600,
            fontSize: 12,
          ),
        ),
      ],
    );
  }
}
