import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfileOtherOptions extends StatelessWidget {
  const ProfileOtherOptions({
    super.key,
    required this.title,
  });

  final String title;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: GoogleFonts.manrope(
            fontSize: 16,
            fontWeight: FontWeight.w500,
            color: Colors.black,
          ),
        ),
        const Icon(Icons.navigate_next),
      ],
    );
  }
}
