import 'package:flutter/material.dart';

import 'src/screens/IntroductionScreen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: IntroductionScreen(), // Muestra la pantalla de introducción
    );
  }
}
