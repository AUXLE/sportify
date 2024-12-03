import 'package:flutter/material.dart';

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
          const Row(
            children: [
              Text(
                'View all',
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                  color: Colors.red,
                ),
              ),
              Icon(
                Icons.navigate_next_rounded,
                color: Colors.red,
              ),
            ],
          )
        ],
      ),
    );
  }
}
