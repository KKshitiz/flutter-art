import 'dart:async';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:flutter_art/watch/watch_colors.dart';
import 'package:flutter_art/watch/widgets/hands_pin.dart';
import 'package:flutter_art/watch/widgets/thick_hand.dart';
import 'package:flutter_art/watch/widgets/thin_hand.dart';

class WatchPage extends StatefulWidget {
  const WatchPage({Key? key}) : super(key: key);

  @override
  State<WatchPage> createState() => _WatchPageState();
}

class _WatchPageState extends State<WatchPage>
    with SingleTickerProviderStateMixin {
  late Timer timer;
  late DateTime dateTime;
  late int milliseconds;
  late int seconds;
  late int minutes;
  late int hours;

  @override
  void initState() {
    super.initState();
    updateTime();
    timer = Timer.periodic(const Duration(milliseconds: 50), (_) {
      updateTime();
    });
  }

  @override
  void dispose() {
    super.dispose();
    timer.cancel();
  }

  void updateTime() {
    setState(() {
      dateTime = DateTime.now();
      milliseconds = dateTime.millisecond;
      seconds = dateTime.second;
      minutes = dateTime.minute;
      hours = dateTime.hour;
    });
  }

  @override
  Widget build(BuildContext context) {
    const double dialDiameter = 400;
    const double pinHolderDiameter = 20;
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          Container(
            width: 200,
            height: 800,
            decoration: const BoxDecoration(
              color: Colors.black45,
            ),
          ),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              const SizedBox(width: dialDiameter),
              Container(
                width: 30,
                height: 60,
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Color(0xFFdfc6a0),
                      Color(0xFFefd9b9),
                      Color(0xFFf7e7cf),
                      Color(0xFF8c7158),
                      Color(0xFFe6c49b),
                      Color(0xFFe4c297),
                      Color(0xFFbc956d),
                      Color(0xFFa79581),
                    ],
                  ),
                ),
              ),
            ],
          ),
          Container(
            width: dialDiameter,
            height: dialDiameter,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: WatchColors.primary,
              boxShadow: [
                BoxShadow(
                  spreadRadius: 0,
                  blurRadius: 5,
                  color: Colors.black,
                  blurStyle: BlurStyle.outer,
                )
              ],
            ),
          ),
          Container(
            width: dialDiameter - 40,
            height: dialDiameter - 40,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              gradient: RadialGradient(
                focalRadius: 0.5,
                colors: [
                  Color(0xff2c292a),
                  Color(0xFF2b2c31),
                ],
              ),
            ),
          ),
          Align(
            alignment: const Alignment(0, 0),
            child: Container(
              width: dialDiameter - 120,
              height: dialDiameter - 120,
              decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [
                      Color(0xff2c2d31),
                      Color(0xff0f0f12),
                    ],
                  ),
                  boxShadow: [
                    BoxShadow(
                      spreadRadius: 0,
                      blurRadius: 5,
                      color: Colors.black,
                      blurStyle: BlurStyle.outer,
                    )
                  ]),
            ),
          ),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              const SizedBox(width: 150),
              Container(
                padding: const EdgeInsets.all(2.5),
                decoration: BoxDecoration(
                  color: WatchColors.primary,
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Container(
                  height: 20,
                  width: 30,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(5),
                  ),
                  alignment: Alignment.center,
                  child: Text(
                    dateTime.day.toString(),
                    style: const TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
            ],
          ),
          Transform.rotate(
            angle: (2 * math.pi) * ((minutes + seconds / 60.0) / 60),
            child: const ThickHand(length: 120),
          ),
          Transform.rotate(
            angle: (2 * math.pi) * ((hours + minutes / 60.0) / 12),
            child: const ThickHand(length: 95),
          ),
          Transform.rotate(
            angle: (2 * math.pi) * ((seconds + milliseconds / 1000.0) / 60.0),
            child: const ThinHand(),
          ),
          const HandsPin(
            diameter: pinHolderDiameter,
          ),
        ],
      ),
    );
  }
}
