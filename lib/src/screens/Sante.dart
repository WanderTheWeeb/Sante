import 'package:flutter/material.dart';
import 'package:sante2/src/screens/ChatScreen.dart';

class Sante extends StatelessWidget {
  const Sante({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: const Center(child: Text("Sante")),
          elevation: 8,
          backgroundColor: Colors.transparent, // Hacerlo transparente
          flexibleSpace: Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [Color.fromRGBO(42, 157, 143, 1.0), Color.fromRGBO(24, 90, 82, 1.0)],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
            ),
          ),
        ),

        body:const ChatScreen()
    );
  }
}
