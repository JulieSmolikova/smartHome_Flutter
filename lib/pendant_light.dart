import 'package:flutter/material.dart';
import 'package:smart_home/backgroundPendantLight.dart';
import 'package:smart_home/gradient_text.dart';
import 'circle_box.dart';
import 'constants.dart';
import 'package:sleek_circular_slider/sleek_circular_slider.dart';

class PendantLight extends StatefulWidget {
  const PendantLight({Key? key}) : super(key: key);

  @override
  State<PendantLight> createState() => _PendantLightState();
}

class _PendantLightState extends State<PendantLight> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: SafeArea(
            child: Scaffold(
          backgroundColor: const Color(0xff1f2533),
          body: Stack(
            children: [
              // Positioned(
              //     top: size.height * 0.56,
              //     right: size.width * 0.35,
              //     child: Container(
              //       width: 130,
              //       height: 130,
              //       decoration: BoxDecoration(
              //           color: Colors.transparent,
              //           borderRadius: BorderRadius.circular(50),
              //           boxShadow: [
              //             BoxShadow(
              //                 color: Colors.white.withOpacity(0.3),
              //                 blurRadius: 100
              //             )]
              //       ),
              //     )),

              Positioned(
                  top: size.height * 0.34,
                  right: size.width * 0.32,
                  child: Container(
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                        color: Colors.transparent,
                        boxShadow: [
                          BoxShadow(
                              color: Colors.white.withOpacity(0.6),
                              blurRadius: 150)
                        ]),
                  )),

              Positioned(
                  top: size.height * 0.78,
                  right: size.width * 0.14,
                  child: Container(
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                        color: Colors.transparent,
                        boxShadow: [
                          BoxShadow(
                              color: Colors.white.withOpacity(0.6),
                              blurRadius: 150)
                        ]),
                  )),

              Positioned(
                  top: size.height * 0.78,
                  left: size.width * 0.14,
                  child: Container(
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                        color: Colors.transparent,
                        boxShadow: [
                          BoxShadow(
                              color: Colors.white.withOpacity(0.6),
                              blurRadius: 150)
                        ]),
                  )),

              Center(
                child: Container(
                  width: size.width,
                  height: size.height,
                  child: CustomPaint(
                    painter: BackgrounPendantLight(),
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(top: 20, left: 50, right: 30),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.asset('assets/icons/back.png',
                          height: size.height * 0.04),
                      GestureDetector(
                        onTap: (() {
                          setState(() {
                            Navigator.of(context).pushNamed('/living_room');
                          });
                        }),
                        child: Image.asset('assets/icons/menu.png',
                            height: size.height * 0.04),
                      ),
                    ]),
              ),

              Positioned(
                bottom: size.height * 0.023,
                child: Padding(
                  padding: const EdgeInsets.only(left: 28, right: 28),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Image.asset('assets/icons/stat.png',
                                  height: size.height * 0.04),
                              const SizedBox(
                                height: 8,
                              ),
                              const Text('statistics', style: styleBottom),
                            ]),
                        const SizedBox(
                          width: 42,
                        ),
                        Column(
                          children: const [
                            Text(' 36%',
                                style: TextStyle(
                                    fontSize: 23,
                                    fontFamily: 'Orbitron',
                                    color: Colors.white70,
                                    fontWeight: FontWeight.bold)),
                            SizedBox(
                              height: 8,
                            ),
                            Text('brightness', style: styleBottom)
                          ],
                        ),
                        const SizedBox(
                          width: 42,
                        ),
                        Column(
                          children: [
                            Image.asset('assets/icons/time.png',
                                height: size.height * 0.04),
                            const SizedBox(
                              height: 8,
                            ),
                            const Text('schedule', style: styleBottom),
                          ],
                        )
                      ]),
                ),
              ),

              Stack(
                children: [
                  Positioned(
                      top: 95,
                      right: 260,
                      child: RotatedBox(
                        quarterTurns: 1,
                        child: Container(
                          width: size.width,
                          height: size.height,
                          child: Text('Pendant Light',
                              style: TextStyle(
                                  fontSize: 50,
                                  fontFamily: 'Orbitron',
                                  fontWeight: FontWeight.bold,
                                  color: const Color(0xff6b93b7)
                                      .withOpacity(0.15))),
                        ),
                      )),
                  Positioned(
                    left: 95,
                    top: -20,
                    child: Container(
                        height: size.height * 0.45,
                        child: Image.asset(
                          'assets/images/lamp.png',
                        )),
                  ),
                ],
              ),

              const Positioned(
                bottom: 0,
                child: CircleBox(),
              ),

              Positioned(
                  top: 95,
                  right: 310,
                  child: RotatedBox(
                    quarterTurns: 1,
                    child: Container(
                      width: size.width * 0.9,
                      height: size.height * 0.4,
                      child: const GradientText('Pendant Light',
                          style: styleGradient,
                          gradient: LinearGradient(
                              colors: [
                                KBlue,
                                KPink
                                //Color(0xff6b93b7),
                                //Color(0xffc013a5),
                              ],
                              begin: Alignment.bottomLeft,
                              end: Alignment.topRight,
                              stops: [0.3, 1])),
                    ),
                  )),
            ],
          ),
        )));
  }
}
