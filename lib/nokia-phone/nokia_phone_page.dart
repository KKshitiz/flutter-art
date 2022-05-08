import 'package:flutter/material.dart';

class NokiaPhonePage extends StatelessWidget {
  const NokiaPhonePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        fit: StackFit.loose,
        children: [
          Align(
            child: Container(
              width: 273,
              height: 596,
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
              decoration: BoxDecoration(
                color: const Color(0xFF414244),
                borderRadius: BorderRadius.circular(80),
                boxShadow: const [
                  BoxShadow(
                    color: Colors.black,
                    offset: Offset(0, 6),
                  )
                ],
              ),
              child: Column(
                children: const [
                  SizedBox(height: 8),
                  Screen(),
                  SizedBox(height: 14),
                  Keypad(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class Keypad extends StatelessWidget {
  const Keypad({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: const [
                  KeypadKey(child: FunctionKeyContent()),
                  SizedBox(height: 6),
                  KeypadKey(
                      child: FunctionKeyContent(
                    color: Colors.green,
                  )),
                ],
              ),
              const HomeKey(),
              Column(
                children: const [
                  KeypadKey(child: FunctionKeyContent()),
                  SizedBox(height: 6),
                  KeypadKey(
                      child: FunctionKeyContent(
                    color: Colors.red,
                  )),
                ],
              ),
            ],
          ),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              KeypadKey(child: Text("1 ~")),
              KeypadKey(child: Text("2 abc")),
              KeypadKey(child: Text("def 3")),
            ],
          ),
          const SizedBox(height: 6),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              KeypadKey(child: Text("4 ghi")),
              KeypadKey(child: Text("5 jkl")),
              KeypadKey(child: Text("mno 6")),
            ],
          ),
          const SizedBox(height: 6),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              KeypadKey(child: Text("7 pqrs")),
              KeypadKey(child: Text("8 tuv")),
              KeypadKey(child: Text("wxyz 9")),
            ],
          ),
          const SizedBox(height: 6),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              KeypadKey(
                child: Text("* +"),
                isLastLeft: true,
              ),
              KeypadKey(child: Text("0 ~")),
              KeypadKey(
                child: Text("~ #"),
                isLastRight: true,
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class FunctionKeyContent extends StatelessWidget {
  const FunctionKeyContent({
    Key? key,
    this.color,
  }) : super(key: key);
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 4,
      width: 20,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: color ?? Colors.white),
    );
  }
}

class Screen extends StatelessWidget {
  const Screen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.topCenter,
      children: [
        Container(
          height: 250,
          width: 240,
          padding: const EdgeInsets.all(4),
          decoration: BoxDecoration(
            color: const Color(0xFFdce2e3),
            borderRadius: BorderRadius.circular(50),
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(50),
            child: Container(
              decoration: BoxDecoration(
                color: const Color(0xFF27292b),
                borderRadius: BorderRadius.circular(50),
              ),
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Stack(
                children: [
                  // Align(
                  //   alignment: const Alignment(-0.4, 0),
                  //   child: Container(
                  //     width: 700,
                  //     height: 700,
                  //     color: Colors.black,
                  //     transform: Matrix4.rotationZ(-pi / 6),
                  //     transformAlignment: Alignment.center,
                  //   ),
                  // ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "NOKIA",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      const SizedBox(height: 25),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(8),
                        child: Image.network(
                          "https://i.pinimg.com/originals/e5/0c/c6/e50cc6fce3321a71d03526429c7b9c00.jpg",
                          width: 190,
                          height: 130,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
        Container(
          width: 70,
          height: 8,
          decoration: const BoxDecoration(color: Colors.black),
          transformAlignment: Alignment.center,
        )
      ],
    );
  }
}

class HomeKey extends StatelessWidget {
  const HomeKey({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 70,
      height: 80,
      decoration: BoxDecoration(
        color: const Color(0xFF5c5d61),
        borderRadius: BorderRadius.circular(10),
      ),
      padding: const EdgeInsets.all(3),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
        ),
        padding: const EdgeInsets.all(2),
        child: Container(
          decoration: BoxDecoration(
            color: const Color(0xFF17181a),
            borderRadius: BorderRadius.circular(10),
          ),
        ),
      ),
    );
  }
}

class KeypadKey extends StatelessWidget {
  const KeypadKey({
    Key? key,
    required this.child,
    this.isLastLeft = false,
    this.isLastRight = false,
  }) : super(key: key);
  final Widget child;
  final bool isLastLeft;
  final bool isLastRight;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 33,
      width: 66,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: const Color(0xFF151517),
        borderRadius: BorderRadius.only(
          topLeft: const Radius.circular(8),
          topRight: const Radius.circular(8),
          bottomLeft: Radius.circular(isLastLeft ? 25 : 8),
          bottomRight: Radius.circular(isLastRight ? 25 : 8),
        ),
        boxShadow: const [
          BoxShadow(
            color: Colors.black,
            spreadRadius: 0.5,
          ),
          BoxShadow(
            color: Colors.black38,
            spreadRadius: 1,
            blurRadius: 8,
          ),
        ],
      ),
      child: child,
    );
  }
}
