import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sportify/widgets/custom_button.dart';

class NewsContainer extends StatelessWidget {
  const NewsContainer({
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
        Stack(
          clipBehavior: Clip.none,
          children: [
            Image.asset(image),
            Positioned(
              bottom: -24,
              left: 35,
              child: CustomButton(
                text: '04:22',
                onPressed: () {},
                backgroundColor: Colors.red,
                textColor: Colors.white,
                fullSize: false,
                time: true,
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 30,
        ),
        Text(
          'Qatar World Cup 2022',
          style: GoogleFonts.manrope(
            fontWeight: FontWeight.w500,
            fontSize: 12,
          ),
        ),
        Text(
          title,
          textAlign: TextAlign.center,
          style: GoogleFonts.manrope(
            fontSize: 14.0,
            fontWeight: FontWeight.w600,
            color: Colors.black,
          ),
        ),
      ],
    );
  }
}
