import 'package:flutter/material.dart';

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
          style: const TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.w400,
            color: Colors.black,
          ),
        ),
        const Icon(Icons.navigate_next),
      ],
    );
  }
}
