import 'package:flutter/material.dart';
import 'package:sante2/src/screens/ChatScreen.dart';
import 'package:sante2/src/screens/Sante.dart';
import 'package:sante2/src/screens/Usuarios/UserProfile.dart';
import 'package:sante2/src/screens/psicologos/RegisterPsico.dart';
import 'package:sante2/src/screens/psicologos/RequestMenu.dart';

import 'src/screens/IntroductionScreen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      theme: ThemeData(
        inputDecorationTheme: const InputDecorationTheme(

          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(color:Color.fromRGBO(42, 157, 143, 1.0)), // Cambia el color del foco a verde
          ),
        ),
      ),
      routes: {
        '/home' : (context) => const Sante(),
        '/IntroductionScreen' : (context) => const IntroductionScreen(),
        '/ChatScreen' : (context) => const ChatScreen(),
        '/perfil' : (context) => const UserProfile(),
        '/psycho': (context) => const RegisterScreen(),
      },
      home: const IntroductionScreen(),

    );
  }
}
