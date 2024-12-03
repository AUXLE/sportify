import 'package:flutter/material.dart';

class Highlights extends StatelessWidget {
  const Highlights({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          Image.asset('assets/football_jump.png'),
          const SizedBox(
            width: 10,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 221, 218, 218),
                ),
                child: const Padding(
                  padding: EdgeInsets.all(5.0),
                  child: Text('Highlights'),
                ),
              ),
              const Text(
                'PORTUGAL V SWITZERLAND',
                style: TextStyle(
                  fontSize: 15.0,
                  fontWeight: FontWeight.w800,
                  color: Colors.black,
                ),
              ),
              const Text(
                'Watch the highlights from the\nmatch between...',
                style: TextStyle(
                  //fontFamily: ,
                  fontSize: 10,
                  fontWeight: FontWeight.w600,
                  color: Colors.grey,
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
