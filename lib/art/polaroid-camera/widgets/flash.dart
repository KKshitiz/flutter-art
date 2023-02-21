import 'package:flutter/material.dart';

class Flash extends StatelessWidget {
  const Flash({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 170,
      width: 90,
      alignment: Alignment.topRight,
      decoration: BoxDecoration(
        color: const Color(0xfff4f0ef),
        borderRadius: BorderRadius.circular(20),
        boxShadow: const [
          BoxShadow(
            color: Colors.black38,
            blurRadius: 10,
            offset: Offset(-3, 4),
          ),
        ],
      ),
      child: Container(
        height: 165,
        width: 85,
        decoration: BoxDecoration(
          border: Border.all(width: 5),
          borderRadius: BorderRadius.circular(20),
          gradient: const LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Colors.white,
              Colors.black,
              Colors.white,
            ],
          ),
        ),
        child: Stack(
          alignment: Alignment.topCenter,
          children: [
            ListView(
              physics: const NeverScrollableScrollPhysics(),
              children: [
                for (int i = 0; i <= 40; i++)
                  const Divider(
                    height: 4,
                    thickness: 0.6,
                    color: Colors.white,
                  ),
              ],
            ),
            ListView(
              scrollDirection: Axis.horizontal,
              physics: const NeverScrollableScrollPhysics(),
              children: [
                const SizedBox(width: 16),
                for (int i = 0; i <= 10; i++)
                  const VerticalDivider(
                    width: 4,
                    thickness: 0.6,
                    color: Colors.white,
                  ),
                const SizedBox(width: 16),
              ],
            ),
            Container(
              color: Colors.white54,
              height: 20,
              width: 43,
            )
          ],
        ),
      ),
    );
  }
}
