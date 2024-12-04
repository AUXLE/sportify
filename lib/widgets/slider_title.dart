import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SliderTitle extends StatelessWidget {
  const SliderTitle({
    super.key,
    required this.title,
  });

  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: const TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w800,
              color: Colors.black,
            ),
          ),
          Row(
            children: [
              Text(
                'View all',
                style: GoogleFonts.manrope(
                  fontSize: 12,
                  fontWeight: FontWeight.w600,
                  color: Colors.red,
                ),
              ),
              const Icon(
                Icons.navigate_next_rounded,
                color: Color.fromRGBO(255, 80, 80, 1),
              ),
            ],
          )
        ],
      ),
    );
  }
}
