import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.text,
    required this.onPressed,
    required this.backgroundColor,
    required this.textColor,
    this.fullSize = true,
  });

  final String text;
  final VoidCallback onPressed;
  final Color backgroundColor;
  final Color textColor;
  final bool fullSize;

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: PointyClipper(),
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: backgroundColor,
          minimumSize: fullSize ? const Size(double.infinity, 50) : null,
        ),
        child: Text(
          text,
          style: GoogleFonts.bebasNeue(
            color: textColor,
            fontSize: 20,
            fontWeight: FontWeight.w100,
          ),
        ),
      ),
    );
  }
}

class PointyClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    path.moveTo(20, 0); // Start point (left tip)
    path.lineTo(size.width - 20, 0); // Top edge to right tip
    path.lineTo(size.width, size.height / 2); // Right tip
    path.lineTo(size.width - 20, size.height); // Bottom right edge
    path.lineTo(20, size.height); // Bottom left edge
    path.lineTo(0, size.height / 2); // Left tip
    path.close(); // Close the path
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false; // No need to reclip
  }
}
