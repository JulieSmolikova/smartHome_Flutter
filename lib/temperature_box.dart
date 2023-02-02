import 'package:flutter/material.dart';

class TemperatureBox extends StatefulWidget {
  const TemperatureBox({Key? key}) : super(key: key);

  @override
  State<TemperatureBox> createState() => _TemperatureBoxState();
}

class _TemperatureBoxState extends State<TemperatureBox> {
  int isSelected = 0;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Positioned(
          top: 10,
          child: SizedBox(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 0.15,
            child: RotatedBox(
              quarterTurns: -1,
              child: ListWheelScrollView(
                  perspective: 0.008,
                  diameterRatio: 4,
                  squeeze: 0.89,
                  offAxisFraction: 1.5,
                  physics: const FixedExtentScrollPhysics(),
                  onSelectedItemChanged: (index) => setState(() {
                        isSelected = index;
                      }),
                  itemExtent: 115,
                  children: List.generate(
                      31,
                      (index) => RotatedBox(
                            quarterTurns: 1,
                            child: Center(
                              child: AnimatedSize(
                                duration: const Duration(milliseconds: 100),
                                child: Text(
                                  '${index + 15}',
                                  style: TextStyle(
                                    fontFamily: 'Orbitron',
                                    fontSize: isSelected == index ? 45 : 20,
                                    fontWeight: isSelected == index
                                        ? FontWeight.bold
                                        : FontWeight.normal,
                                    color: isSelected == index
                                        ? Color(0xffdacd66)
                                        : Colors.white.withOpacity(0.5),
                                  ),
                                ),
                              ),
                            ),
                          ))),
            ),
          ),
        )
      ],
    );
  }
}
