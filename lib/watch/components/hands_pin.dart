import 'package:flutter/material.dart';
import 'package:flutter_art/watch/watch_colors.dart';

class HandsPin extends StatelessWidget {
  const HandsPin({
    Key? key,
    this.diameter = 20,
  }) : super(key: key);
  final double diameter;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          width: diameter,
          height: diameter,
          decoration: const BoxDecoration(
              shape: BoxShape.circle, color: WatchColors.primary),
        ),
        Container(
          width: 3,
          height: 3,
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.black,
          ),
        ),
      ],
    );
  }
}
