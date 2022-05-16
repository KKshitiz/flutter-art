import 'package:flutter/material.dart';

class ShutterButton extends StatelessWidget {
  const ShutterButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          padding: const EdgeInsets.all(6),
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            color: Color(0xffdfdad7),
            boxShadow: [
              BoxShadow(
                color: Colors.white70,
                offset: Offset(-1, -5),
                blurRadius: 5,
                spreadRadius: 2,
              ),
              BoxShadow(
                color: Colors.black45,
                blurRadius: 10,
                offset: Offset(1, 4),
              ),
            ],
          ),
          child: Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.black),
              color: Colors.redAccent,
              shape: BoxShape.circle,
            ),
          ),
        ),
        Container(
          height: 44,
          width: 44,
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            boxShadow: [
              BoxShadow(
                color: Colors.white,
                spreadRadius: 1,
                blurRadius: 1,
                blurStyle: BlurStyle.outer,
              ),
            ],
          ),
        )
      ],
    );
  }
}
