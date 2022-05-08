import 'package:flutter/material.dart';
import 'package:flutter_art/watch/watch_colors.dart';

class ThinHand extends StatelessWidget {
  const ThinHand({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const double width = 2.5;

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          width: width,
          height: 150,
          alignment: Alignment.topCenter,
          decoration: const BoxDecoration(
            color: WatchColors.primary,
            boxShadow: [
              BoxShadow(
                color: Colors.black,
                offset: Offset(2, 0),
                blurRadius: 3,
                spreadRadius: 1,
              )
            ],
          ),
          child: Container(
            height: 40,
            width: width,
            decoration: const BoxDecoration(
              color: Colors.white,
            ),
          ),
        ),
        const SizedBox(
          width: 10,
          height: 150,
        )
      ],
    );
  }
}
