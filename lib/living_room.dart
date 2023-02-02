import 'package:flutter/material.dart';
import 'package:smart_home/gradient_text.dart';
import 'package:smart_home/constants.dart';
import 'package:smart_home/button.dart';
import 'package:smart_home/temperature_box.dart';
import 'package:smart_home/temperature_painter.dart';
import 'package:smart_home/painter_temp_box.dart';

class LivingRoom extends StatefulWidget {
  const LivingRoom({Key? key}) : super(key: key);

  @override
  State<LivingRoom> createState() => _LivingRoomState();
}

class _LivingRoomState extends State<LivingRoom> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          backgroundColor: const Color(0xff1a1c29),
          body: Stack(
            alignment: Alignment.center,
            children: [
              Positioned(
                top: 0,
                right: 0,
                child: SizedBox(
                  height: size.height * 0.5,
                  width: size.width,
                  child: Column(
                    children: [
                      SizedBox(
                        height: size.height * 0.4,
                        child: Image.asset(
                          'assets/images/room.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                      Container(
                        height: size.height * 0.07,
                        width: size.width,
                        decoration: BoxDecoration(
                            color: KDBlue.withOpacity(0.7),
                            boxShadow: const [
                              BoxShadow(
                                  color: Colors.black,
                                  blurRadius: 80,
                                  spreadRadius: 45,
                                  offset: Offset(35, -35))
                            ]),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            const SizedBox(
                              width: 30,
                            ),
                            Icon(
                              Icons.circle,
                              color: Colors.greenAccent,
                              size: size.height * 0.02,
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            const Text(
                              'Available Devices',
                              style: styleBottom,
                            ),
                            SizedBox(
                              width: size.width * 0.25,
                            ),
                            Image.asset(
                              'assets/icons/menu.png',
                              height: size.height * 0.03,
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                top: 0,
                left: 0,
                child: Container(
                  height: size.height * 0.4,
                  width: size.width * 0.2,
                  color: Colors.black54.withOpacity(0.7),
                  padding: const EdgeInsets.only(top: 15, bottom: 5),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      GestureDetector(
                          onTap: (() {
                            setState(() {
                              Navigator.of(context).pushNamed('/pendant_light');
                            });
                          }),
                          child: Image.asset(
                            'assets/icons/back.png',
                            height: size.height * 0.04,
                          )),
                      const RotatedBox(
                        quarterTurns: 1,
                        child: GradientText('Living Room',
                            style: styleGradient2,
                            gradient: LinearGradient(
                                colors: [KBlue, KPink],
                                begin: Alignment.topRight,
                                end: Alignment.bottomLeft,
                                stops: [0.3, 1])),
                      )
                    ],
                  ),
                ),
              ),
              Positioned(
                top: size.height * 0.48,
                left: 0,
                child: Container(
                  height: size.height * 0.22,
                  width: size.width,
                  color: Colors.transparent,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            SizedBox(
                              height: MediaQuery.of(context).size.height * 0.02,
                            ),
                            Button(
                                color: KBlueButton,
                                colorBox: KBlueButton,
                                child: Image.asset(
                                  'assets/icons/tv.png',
                                  height: 18,
                                ),
                                childUp: Image.asset(
                                  'assets/icons/up.png',
                                  height: 18,
                                ),
                                childDown: Image.asset(
                                  'assets/icons/down.png',
                                  height: 18,
                                )),
                            SizedBox(
                              height: MediaQuery.of(context).size.height * 0.02,
                            ),
                            const Text('TV', style: styleBottom)
                          ]),
                      SizedBox(width: size.width * 0.11),
                      Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            SizedBox(
                              height: MediaQuery.of(context).size.height * 0.02,
                            ),
                            Button(
                              color: KPinkButton,
                              colorBox: KPinkButton,
                              child: Image.asset(
                                'assets/icons/bulb.png',
                                height: 20,
                              ),
                              childUp: Image.asset(
                                'assets/icons/up.png',
                                height: 18,
                              ),
                              childDown: Image.asset(
                                'assets/icons/down.png',
                                height: 18,
                              ),
                            ),
                            SizedBox(
                              height: MediaQuery.of(context).size.height * 0.02,
                            ),
                            const Text('Light', style: styleBottom)
                          ]),
                      SizedBox(width: size.width * 0.11),
                      Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            SizedBox(
                              height: MediaQuery.of(context).size.height * 0.02,
                            ),
                            Button(
                                color: KVioletButton,
                                colorBox: KVioletButton,
                                child: Image.asset(
                                  'assets/icons/wifi.png',
                                  height: 18,
                                ),
                                childUp: Image.asset(
                                  'assets/icons/up.png',
                                  height: 18,
                                ),
                                childDown: Image.asset(
                                  'assets/icons/down.png',
                                  height: 18,
                                )),
                            SizedBox(
                              height: MediaQuery.of(context).size.height * 0.02,
                            ),
                            const Text('Wi-Fi', style: styleBottom)
                          ])
                    ],
                  ),
                ),
              ),
              Positioned(
                top: size.height * 0.69,
                child: Container(
                  height: size.height * 0.15,
                  width: size.width,
                  color: Colors.transparent,
                  child: CustomPaint(painter: PainterTempBox()),
                ),
              ),
              Positioned(
                  top: size.height * 0.735,
                  left: size.width * 0.627,
                  child: Container(
                      height: size.height * 0.05,
                      width: size.width * 0.1,
                      color: Colors.transparent,
                      child: Text('o',
                          style: TextStyle(
                              fontSize: 17,
                              fontFamily: 'good',
                              color: Colors.white70.withOpacity(0.5),
                              fontWeight: FontWeight.bold)))),
              Positioned(
                  top: size.height * 0.78,
                  left: size.width * 0.61,
                  child: Container(
                    height: size.height * 0.05,
                    width: size.width * 0.1,
                    color: Colors.transparent,
                    child: Text('c',
                        style: TextStyle(
                            fontSize: 16,
                            fontFamily: 'Orbitron',
                            color: Colors.white70.withOpacity(0.5),
                            fontWeight: FontWeight.bold)),
                  )),
              Positioned(
                  top: size.height * 0.69,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        height: size.height * 0.15,
                        width: size.width,
                        color: Colors.transparent,
                        child: const TemperatureBox(),
                      ),
                      Container(
                        height: size.height * 0.13,
                        width: size.width,
                        color: Colors.transparent,
                        child: CustomPaint(
                          painter: TempetaturePainter(),
                          child: SizedBox(
                              child: Center(
                                  child: Text('Temperature',
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontFamily: 'Orbitron',
                                          color:
                                              Colors.white70.withOpacity(0.5),
                                          fontWeight: FontWeight.bold)))),
                        ),
                      ),
                    ],
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
