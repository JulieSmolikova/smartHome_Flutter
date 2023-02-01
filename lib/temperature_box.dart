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
        RotatedBox(
          quarterTurns: -1,
          child: ListWheelScrollView(
            perspective: 0.007,
              diameterRatio: 4,
              squeeze: 0.9,
              offAxisFraction: 1.5,
              physics: const FixedExtentScrollPhysics(),
              onSelectedItemChanged: (index) => setState(() {
                isSelected = index;
              }),
              itemExtent: 100,
              children: List.generate(
                  31,
                  (index) => RotatedBox(quarterTurns: 1,
                  child: AnimatedSize(
                    duration: const Duration(milliseconds: 100),
                    child: Text('${index + 15}',
                    style: TextStyle(
                      fontFamily: 'Orbitron',
                      fontSize: isSelected == index ? 40 : 20,
                      fontWeight: isSelected == index ? FontWeight.bold : FontWeight.normal,
                      color: isSelected == index ? Colors.yellow.withOpacity(0.8) : Colors.white.withOpacity(0.5),
                    ),),
                  ),))),
        )
      ],
    );
  }
}
