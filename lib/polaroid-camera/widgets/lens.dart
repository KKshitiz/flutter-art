import 'package:flutter/material.dart';

class Lens extends StatelessWidget {
  const Lens({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          height: 210,
          width: 210,
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            color: Color(0xFF090808),
            boxShadow: [
              BoxShadow(
                color: Colors.black45,
                spreadRadius: 20,
                offset: Offset(30, 50),
                blurRadius: 45,
              )
            ],
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 30,
                width: 80,
                decoration: const BoxDecoration(
                  color: Color(0xff26372f),
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.elliptical(100, 15),
                    bottomRight: Radius.elliptical(100, 15),
                  ),
                ),
              ),
              const SizedBox(height: 35),
              Container(
                height: 30,
                width: 70,
                decoration: const BoxDecoration(
                  color: Color(0xff26372f),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.elliptical(100, 45),
                    topRight: Radius.elliptical(100, 45),
                  ),
                ),
              ),
            ],
          ),
        ),
        Container(
          width: 200,
          height: 200,
          decoration: BoxDecoration(
            color: Colors.transparent,
            shape: BoxShape.circle,
            border: Border.all(
              width: 62,
              color: Colors.black,
            ),
          ),
        ),
        Container(
          width: 75,
          height: 75,
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.black26,
          ),
        ),
        Container(
          width: 1,
          height: 1,
          decoration: const BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.white24,
                blurRadius: 20,
                spreadRadius: 17,
              ),
            ],
          ),
        ),
        Container(
          width: 1,
          height: 1,
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.pink.withOpacity(0.2),
                blurRadius: 15,
                spreadRadius: 13,
                offset: const Offset(0, -12),
              ),
              BoxShadow(
                color: Colors.purple.withOpacity(0.2),
                blurRadius: 15,
                spreadRadius: 13,
                offset: const Offset(0, -11),
              ),
              BoxShadow(
                color: Colors.green.withOpacity(0.2),
                blurRadius: 15,
                spreadRadius: 13,
                offset: const Offset(0, -10),
              ),
            ],
          ),
        ),
        for (int i = 0; i < 10; i++)
          LensRing(
            radius: (38.4 + i * 4),
            color: const Color(0xff838184).withOpacity(0.4),
            width: 1.7,
          ),
        for (int i = 0; i < 10; i++)
          LensRing(
            radius: (39.6 + i * 4),
            color: Colors.black87,
            width: 1.2,
          ),
        const LensRing(
          radius: (84),
          color: Colors.white30,
          width: 1.2,
        ),
      ],
    );
  }
}

class LensRing extends StatelessWidget {
  const LensRing({
    Key? key,
    required this.radius,
    required this.width,
    required this.color,
  }) : super(key: key);
  final double radius;
  final double width;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: radius * 2,
      height: radius * 2,
      decoration: BoxDecoration(
        color: Colors.transparent,
        shape: BoxShape.circle,
        border: Border.all(
          width: width,
          color: color,
        ),
      ),
    );
  }
}
