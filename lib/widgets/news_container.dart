import 'package:flutter/material.dart';
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
          children: [
            Image.asset(image),
            CustomButton(
              text: '04:22',
              onPressed: () {},
              backgroundColor: Colors.red,
              textColor: Colors.white,
              fullSize: false,
            ),
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        const Text('Qatar World Cup 2022'),
        Text(
          title,
          style: const TextStyle(
            fontSize: 15.0,
            fontWeight: FontWeight.w800,
            color: Colors.black,
          ),
        ),
      ],
    );
  }
}
