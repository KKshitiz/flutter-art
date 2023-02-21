import 'package:flutter/material.dart';

class PolaroidLogo extends StatelessWidget {
  const PolaroidLogo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          height: 4,
          width: 40,
          color: const Color(0xff0e9ee0),
        ),
        const SizedBox(height: 2),
        Container(
          height: 8,
          width: 40,
          color: const Color(0xff0eae4f),
        ),
        const SizedBox(height: 2),
        Container(
          height: 8,
          width: 40,
          color: const Color(0xffffb404),
        ),
        const SizedBox(height: 3),
        Container(
          height: 8,
          width: 40,
          color: const Color(0xfffe8204),
        ),
        const SizedBox(height: 5),
        Container(
          height: 10,
          width: 40,
          color: const Color(0xffe02d28),
        ),
      ],
    );
  }
}
