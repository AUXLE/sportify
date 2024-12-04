import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Highlights extends StatelessWidget {
  const Highlights({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          Stack(children: [
            const Positioned(
              child: Icon(
                Icons.play_arrow,
              ),
            ),
            Image.asset('assets/football_jump.png'),
          ]),
          const SizedBox(
            width: 10,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                decoration: const BoxDecoration(
                  color: Color.fromRGBO(238, 237, 237, 1),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Text(
                    'Highlights',
                    style: GoogleFonts.manrope(
                      fontSize: 10,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
              Text(
                'PORTUGAL V SWITZERLAND',
                style: GoogleFonts.bebasNeue(
                  fontSize: 18.0,
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                ),
              ),
              Text(
                'Watch the highlights from the\nmatch between...',
                style: GoogleFonts.manrope(
                  //fontFamily: ,
                  fontSize: 10,
                  fontWeight: FontWeight.w400,
                  color: const Color.fromRGBO(91, 87, 87, 1),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
