import 'package:flutter/material.dart';
import 'package:smart_home/constants.dart';

class Button extends StatefulWidget {
  final Color color;
  final Color colorBox;
  final Widget child;
  final Widget childUp;
  final Widget childDown;

  const Button(
      {Key? key,
      required this.color,
      required this.colorBox,
      required this.child,
      required this.childUp,
      required this.childDown})
      : super(key: key);

  @override
  State<Button> createState() => _ButtonState();
}

class _ButtonState extends State<Button> {
  bool isSwitched = true;

  @override
  Widget build(BuildContext context) {
    return Container(
        height: MediaQuery.of(context).size.height * 0.16,
        width: MediaQuery.of(context).size.width * 0.19,
        color: Colors.transparent,
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          GestureDetector(
              onTap: (() {
                setState(() {
                  isSwitched = !isSwitched;
                });
              }),
              child: Stack(
                alignment: Alignment.topCenter,
                children: [
                  AnimatedOpacity(
                    curve: Curves.easeInOutQuart,
                    opacity: isSwitched ? 1 : 0,
                    duration: const Duration(milliseconds: 500),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.02,
                        ),
                        const Text('ON', style: styleBottom),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.002,
                        ),
                        Container(
                          width: 30,
                          height: 1,
                          color: Colors.greenAccent,
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.02,
                        ),
                        Container(
                          height: MediaQuery.of(context).size.height * 0.03,
                          width: MediaQuery.of(context).size.width * 0.1,
                          decoration: BoxDecoration(
                            color: Colors.transparent,
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: Center(child: widget.childUp),
                        ),
                      ],
                    ),
                  ),
                  AnimatedOpacity(
                    curve: Curves.easeInOutQuart,
                    opacity: isSwitched ? 0 : 1,
                    duration: const Duration(milliseconds: 500),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.07,
                        ),
                        Container(
                          height: MediaQuery.of(context).size.height * 0.03,
                          width: MediaQuery.of(context).size.width * 0.1,
                          decoration: BoxDecoration(
                            color: Colors.transparent,
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: Center(child: widget.childDown),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.02,
                        ),
                        const Text(
                          'OFF',
                          style: styleBottom,
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.004,
                        ),
                        Container(
                          width: 30,
                          height: 1,
                          color: Colors.red,
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height * 0.16,
                    width: MediaQuery.of(context).size.width * 0.19,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        border: Border.all(
                            width: 1, color: Colors.white70.withOpacity(0.3)),
                        color: Colors.white.withOpacity(0.2)),
                  ),
                  AnimatedPositioned(
                    curve: Curves.easeInOutBack,
                    top: isSwitched ? 44 : -15,
                    duration: const Duration(milliseconds: 500),
                    child: AnimatedCrossFade(
                      firstChild: Container(
                        width: MediaQuery.of(context).size.width * 0.18,
                        height: MediaQuery.of(context).size.height * 0.12,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            gradient: LinearGradient(
                                colors: [widget.color, Colors.transparent],
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter)),
                      ),
                      secondChild: Container(
                        width: MediaQuery.of(context).size.width * 0.18,
                        height: MediaQuery.of(context).size.height * 0.12,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            gradient: LinearGradient(
                                colors: [
                                  Colors.transparent,
                                  widget.color,
                                ],
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter)),
                      ),
                      crossFadeState: isSwitched
                          ? CrossFadeState.showFirst
                          : CrossFadeState.showSecond,
                      duration: const Duration(milliseconds: 500),
                    ),
                  ),
                  AnimatedPositioned(
                      curve: Curves.easeInOutBack,
                      top: isSwitched ? 82 : 15,
                      duration: const Duration(milliseconds: 500),
                      child: Container(
                        height: MediaQuery.of(context).size.height * 0.04,
                        width: MediaQuery.of(context).size.width * 0.1,
                        decoration: BoxDecoration(
                          color: widget.colorBox,
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Center(child: widget.child),
                      )),
                ],
              ))
        ]));
  }
}
