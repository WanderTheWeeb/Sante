import 'package:flutter/material.dart';
import 'package:sante2/src/screens/ChatScreen.dart';
import 'package:sante2/src/screens/Sante.dart';
import 'package:sante2/src/screens/Usuarios/UserProfile.dart';

import 'src/screens/IntroductionScreen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      routes: {
        '/home' : (context) => const Sante(),
        '/IntroductionScreen' : (context) => const IntroductionScreen(),
        '/ChatScreen' : (context) => const ChatScreen(),
        '/perfil' : (context) => const UserProfile(),
      },
      home: const IntroductionScreen(),

    );
  }
}
