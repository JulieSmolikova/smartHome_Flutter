import 'package:flutter/material.dart';
import 'package:sleek_circular_slider/sleek_circular_slider.dart';
import 'package:smart_home/constants.dart';

class CircleBox extends StatefulWidget {
  const CircleBox({Key? key}) : super(key: key);

  @override
  State<CircleBox> createState() => _CircleBoxState();
}

class _CircleBoxState extends State<CircleBox> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      color: Colors.transparent,
      width: size.width,
      height: size.height * 0.45,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Positioned(
              top: 85,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text('Low',
                      style: TextStyle(
                          fontSize: 18,
                          fontFamily: 'Orbitron',
                          color: Colors.white70.withOpacity(0.4),
                          fontWeight: FontWeight.bold)),
                  const SizedBox(
                    width: 85,
                  ),
                  Image.asset(
                    'assets/icons/off.png',
                    height: 80,
                  ),
                  const SizedBox(
                    width: 85,
                  ),
                  Text('High',
                      style: TextStyle(
                          fontSize: 18,
                          fontFamily: 'Orbitron',
                          color: Colors.white70.withOpacity(0.4),
                          fontWeight: FontWeight.bold))
                ],
              )),
          Positioned(
            top: 27,
            child: SleekCircularSlider(
              appearance: CircularSliderAppearance(
                  size: 240,
                  customWidths: CustomSliderWidths(
                      trackWidth: 2,
                      progressBarWidth: 5,
                      shadowWidth: 10,
                      handlerSize: 10),
                  infoProperties: InfoProperties(
                    mainLabelStyle: const TextStyle(
                        color: Colors.transparent,
                        fontWeight: FontWeight.bold,
                        fontSize: 24),
                  ),
                  customColors: CustomSliderColors(
                      dotColor: Colors.white,
                      trackGradientStartAngle: 20,
                      trackGradientEndAngle: 180,
                      trackColors: [
                        Colors.white,
                        Colors.blue.shade100,
                        Colors.blue.shade200,
                        Colors.white,
                      ],
                      gradientStartAngle: 20,
                      gradientEndAngle: 180,
                      progressBarColors: [
                        Colors.white,
                        Colors.blue.shade100,
                        Colors.blue.shade200,
                        Colors.white,
                      ]),
                  startAngle: 150,
                  angleRange: 120,
                  counterClockwise: true),
              min: 0,
              max: 100,
              initialValue: 20,
              onChange: (double value) {},
            ),
          ),
          Positioned(
            top: 25,
            child: SleekCircularSlider(
              appearance: CircularSliderAppearance(
                size: 200,
                customWidths: CustomSliderWidths(
                    trackWidth: 7,
                    progressBarWidth: 7,
                    shadowWidth: 10,
                    handlerSize: 13),
                infoProperties: InfoProperties(
                  mainLabelStyle: const TextStyle(
                      color: Colors.transparent,
                      fontWeight: FontWeight.bold,
                      fontSize: 24),
                ),
                customColors: CustomSliderColors(
                    dotColor: Colors.white,
                    trackGradientStartAngle: 0,
                    trackGradientEndAngle: 360,
                    trackColors: [
                      Colors.yellow,
                      Colors.green,
                      Colors.teal.shade300,
                      Colors.purple,
                      Colors.pinkAccent,
                      Colors.red,
                      Colors.orange,
                      Colors.yellow,
                    ],
                    gradientStartAngle: 0,
                    gradientEndAngle: 360,
                    progressBarColors: [
                      Colors.yellow,
                      Colors.green,
                      Colors.teal.shade300,
                      Colors.purple,
                      Colors.pinkAccent,
                      Colors.red,
                      Colors.orange,
                      Colors.yellow,
                    ]),
                startAngle: 330,
                angleRange: 360,
                //counterClockwise: true
              ),
              min: 0,
              max: 100,
              initialValue: 100,
              onChange: (double value) {},
            ),
          )
        ],
      ),
    );
  }
}
