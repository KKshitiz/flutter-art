import 'package:flutter/material.dart';
import 'package:flutter_art/art/polaroid-camera/widgets/widgets.dart';

class PolaroidCameraPage extends StatelessWidget {
  const PolaroidCameraPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            CameraBody(),
            CameraBase(),
          ],
        ),
      ),
    );
  }
}

class CameraBody extends StatelessWidget {
  const CameraBody({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          height: 310,
          width: 545,
          decoration: const BoxDecoration(
            color: Color(0xffefedf0),
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(40),
              topRight: Radius.circular(40),
            ),
          ),
        ),
        Positioned(
          top: 15,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              const SizedBox(width: 25),
              const Lens(),
              Container(
                height: 25,
                width: 25,
                decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.black,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black26,
                        spreadRadius: 2,
                        blurRadius: 6,
                        offset: Offset(-4, -4),
                      ),
                    ]),
              ),
            ],
          ),
        ),
        const Positioned(
          left: 20,
          bottom: 10,
          child: ShutterButton(),
        ),
        Positioned(
          top: 20,
          left: 20,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Flash(),
              const SizedBox(width: 20),
              Column(
                children: [
                  const SizedBox(height: 20),
                  Container(
                    height: 20,
                    width: 20,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color(0xffe6e2e3),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black38,
                          offset: Offset(0.8, 1),
                          blurRadius: 1,
                        ),
                        BoxShadow(
                          color: Colors.white54,
                          offset: Offset(-2, -2),
                          blurRadius: 2,
                          spreadRadius: 2,
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 10),
                  Container(
                    height: 20,
                    width: 20,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.black,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.white38,
                        ),
                      ],
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
        Positioned(
          top: 20,
          right: 20,
          child: Column(
            children: [
              const Sensor(),
              const SizedBox(height: 15),
              Container(
                width: 50,
                height: 20,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  gradient: const LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Color(0xffca7a00),
                      Color(0xffb96c01),
                    ],
                  ),
                  border: Border.all(
                    color: Colors.white,
                    width: 0.5,
                  ),
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.black54,
                      blurRadius: 2,
                      blurStyle: BlurStyle.inner,
                      offset: Offset(0, 0),
                    ),
                  ],
                ),
                child: Container(
                  decoration: const BoxDecoration(
                    color: Color(0xfffcc70a),
                    shape: BoxShape.circle,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black54,
                        blurRadius: 2,
                        offset: Offset(-1, 0),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}

class Sensor extends StatelessWidget {
  const Sensor({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 110,
      width: 110,
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.circular(20),
          boxShadow: const [
            BoxShadow(
              color: Colors.black87,
              offset: Offset(-3.5, -3.5),
            ),
            BoxShadow(
              color: Colors.white,
              blurRadius: 4,
              offset: Offset(-1, -1),
            ),
            BoxShadow(
              color: Colors.black87,
              offset: Offset(-3.5, 2.2),
            ),
            BoxShadow(
              color: Colors.white,
              blurRadius: 4,
              offset: Offset(-1, 0.5),
            ),
          ]),
      child: Container(
        decoration: BoxDecoration(
          color: const Color(0xff464344),
          border: Border.all(width: 4),
          borderRadius: BorderRadius.circular(23),
          boxShadow: const [
            BoxShadow(
              color: Colors.white38,
              spreadRadius: 0.2,
              offset: Offset(-1.5, 0),
              blurRadius: 3,
            ),
          ],
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(23),
          child: Column(
            children: [
              Container(
                height: 10,
                width: 46,
                decoration: const BoxDecoration(
                  color: Colors.white24,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.elliptical(50, 10),
                    bottomRight: Radius.elliptical(50, 10),
                  ),
                  boxShadow: [
                    // BoxShadow(
                    //   color: Colors.white70,
                    //   spreadRadius: 0.2,
                    //   offset: Offset(-1.5, 0),
                    //   blurRadius: 3,
                    // ),
                  ],
                ),
              ),
              const Spacer(),
              Container(
                height: 36,
                width: 36,
                decoration: BoxDecoration(
                  color: Colors.white70,
                  borderRadius: BorderRadius.circular(8),
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.white70,
                      spreadRadius: 0.2,
                      offset: Offset(-1.5, 0),
                      blurRadius: 3,
                    ),
                  ],
                ),
              ),
              const Spacer(),
              const SizedBox(height: 4),
              Container(
                height: 4,
                width: 40,
                decoration: const BoxDecoration(
                  color: Colors.white24,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.elliptical(50, 10),
                    topRight: Radius.elliptical(50, 10),
                  ),
                  boxShadow: [
                    // BoxShadow(
                    //   color: Colors.white70,
                    //   spreadRadius: 0.2,
                    //   offset: Offset(-1.5, 0),
                    //   blurRadius: 3,
                    // ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CameraBase extends StatelessWidget {
  const CameraBase({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.topCenter,
      children: [
        Container(
          height: 160,
          width: 580,
          clipBehavior: Clip.antiAlias,
          decoration: const BoxDecoration(
            gradient: LinearGradient(colors: [
              Colors.black12,
              Color(0xff1c1b1b),
              Colors.black12,
            ], stops: [
              0.05,
              0.5,
              0.95,
            ]),
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(10),
              topRight: Radius.circular(10),
              bottomLeft: Radius.elliptical(35, 30),
              bottomRight: Radius.elliptical(35, 30),
            ),
          ),
          child: Column(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 30,
                    width: 200,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(20),
                      ),
                    ),
                  ),
                  const Spacer(),
                  Container(
                    height: 35,
                    width: 135,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(10),
                        bottomRight: Radius.circular(10),
                      ),
                      gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                            Color(0xff8b8786),
                            Color(0xff464344),
                            Color(0xff474344),
                            Color(0xff464344),
                            Color(0xff8b8786),
                          ],
                          stops: [
                            0,
                            0.4,
                            0.45,
                            0.55,
                            1,
                          ]),
                    ),
                    child: Align(
                      child: Container(
                        width: 80,
                        height: 20,
                        alignment: Alignment.centerRight,
                        decoration: BoxDecoration(
                          color: const Color(0xff555153),
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(
                            color: Colors.black,
                            width: 0.5,
                          ),
                        ),
                        child: Container(
                          height: 20,
                          width: 20,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.black45,
                            // boxShadow: [
                            //   BoxShadow(
                            //     color: Colors.green,
                            //     offset: Offset(0, 4),
                            //     blurRadius: 1,
                            //     spreadRadius: 1,
                            //   )
                            // ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  const Spacer(),
                  Container(
                    height: 30,
                    width: 200,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(20),
                      ),
                    ),
                  )
                ],
              ),
              const Spacer(),
              const PhotographEmitter(),
              Row(
                children: const [
                  Expanded(child: PolaroidLogo()),
                  Text(
                    "Polaroid",
                    style: TextStyle(
                      fontSize: 26,
                      fontWeight: FontWeight.w500,
                      color: Color(0xffcdccc8),
                    ),
                  ),
                  Spacer(),
                ],
              ),
              Container(
                height: 30,
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Color(0xff494544),
                        Color(0xff433f3e),
                        Color(0xff242020),
                      ],
                      stops: [
                        0.04,
                        0.1,
                        1.0
                      ]),
                ),
              ),
            ],
          ),
        ),
        Container(
          width: 560,
          height: 6,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              stops: [
                0.1,
                0.4,
                0.6,
                0.8,
                0.9,
              ],
              colors: [
                Colors.white70,
                Colors.white38,
                Colors.white24,
                Colors.white10,
                Colors.transparent,
              ],
            ),
          ),
        )
      ],
    );
  }
}

class PhotographEmitter extends StatelessWidget {
  const PhotographEmitter({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: 8,
          height: 40,
          decoration: BoxDecoration(
            color: const Color(0xff474548),
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(3),
              bottomLeft: Radius.circular(3),
            ),
            border: Border.all(
              color: Colors.black,
              width: 0.3,
            ),
          ),
        ),
        Column(
          children: [
            Container(
              width: 470,
              height: 3,
              decoration: const BoxDecoration(
                color: Color(0xff474548),
              ),
            ),
            Container(
              height: 34,
              width: 470,
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Color(0xff1c1b1b),
                    Colors.black12,
                    Color(0xff1c1b1b),
                  ],
                  stops: [0.2, 0.5, 0.8],
                ),
              ),
            ),
            Container(
              width: 470,
              height: 3,
              decoration: const BoxDecoration(
                color: Color(0xff474548),
              ),
            ),
          ],
        ),
        Container(
          width: 8,
          height: 40,
          decoration: BoxDecoration(
            color: const Color(0xff474548),
            borderRadius: const BorderRadius.only(
              topRight: Radius.circular(3),
              bottomRight: Radius.circular(3),
            ),
            border: Border.all(
              color: Colors.black,
              width: 0.3,
            ),
          ),
        ),
      ],
    );
  }
}
