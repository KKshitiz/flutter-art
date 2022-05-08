import 'package:flutter/material.dart';

class NokiaPhonePage extends StatelessWidget {
  const NokiaPhonePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          Container(
            height: 700,
            width: 350,
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
            decoration: BoxDecoration(
              color: const Color(0xFF414244),
              borderRadius: BorderRadius.circular(70),
              boxShadow: const [
                BoxShadow(
                  color: Colors.black,
                  offset: Offset(0, 6),
                )
              ],
            ),
            child: Column(
              children: [
                Container(
                  height: 320,
                  width: 320,
                  padding: const EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    color: const Color(0xFFdce2e3),
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: Container(
                    decoration: BoxDecoration(
                      color: const Color(0xFF27292b),
                      borderRadius: BorderRadius.circular(50),
                    ),
                    padding: const EdgeInsets.symmetric(horizontal: 25),
                    child: Column(
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
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const KeypadKey(child: Text("data")),
                    HomeKey(),
                    const KeypadKey(child: Text("data")),
                  ],
                ),
                const SizedBox(height: 30),
              ],
            ),
          ),
        ],
      ),
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
      width: 80,
      height: 80,
      decoration: BoxDecoration(
        color: const Color(0xFF5c5d61),
        borderRadius: BorderRadius.circular(15),
      ),
      padding: const EdgeInsets.all(5),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
        ),
        padding: const EdgeInsets.all(2),
        child: Container(
          decoration: BoxDecoration(
            color: const Color(0xFF17181a),
            borderRadius: BorderRadius.circular(15),
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
  }) : super(key: key);
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 35,
      width: 60,
      decoration: BoxDecoration(
        color: const Color(0xFF151517),
        borderRadius: BorderRadius.circular(8),
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
    );
  }
}
