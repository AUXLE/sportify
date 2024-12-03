import 'package:flutter/material.dart';

class Logo extends StatelessWidget {
  const Logo({
    super.key,
    required this.image,
    required this.color,
  });

  final String image;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 20.0,
        left: 16.0,
      ),
      child: Row(
        //mainAxisAlignment: MainAxisAlignment.,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Image.asset(image),
              const SizedBox(
                width: 6.74,
              ),
              Text(
                'SPORTIFY',
                style: TextStyle(
                  //fontFamily: ,
                  fontSize: 21.05,
                  fontWeight: FontWeight.w600,
                  color: color,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
