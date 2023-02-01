import 'package:flutter/material.dart';
import 'package:smart_home/pendant_light.dart';
import 'package:smart_home/living_room.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/pendant_light': (context) => const PendantLight(),
        '/living_room': (context) => const LivingRoom(),
      },
      initialRoute: '/pendant_light',
      home: Scaffold(),
    );
  }
}
