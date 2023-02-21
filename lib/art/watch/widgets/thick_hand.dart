import 'package:flutter/material.dart';
import 'package:flutter_art/art/watch/watch_colors.dart';

class ThickHand extends StatelessWidget {
  const ThickHand({
    Key? key,
    required this.length,
  }) : super(key: key);
  final double length;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          width: 9,
          height: length,
          alignment: Alignment.bottomCenter,
          padding: const EdgeInsets.only(left: 2.2, right: 2.2),
          decoration: BoxDecoration(
            color: WatchColors.primary,
            borderRadius: BorderRadius.circular(40),
            boxShadow: const [
              BoxShadow(
                color: Colors.black,
                offset: Offset(2, 0),
                blurRadius: 3,
                spreadRadius: 1,
              )
            ],
          ),
          child: Container(
            height: 80,
            color: Colors.black,
          ),
        ),
        SizedBox(
          width: 10,
          height: length,
        )
      ],
    );
  }
}
