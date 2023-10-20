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
        backgroundColor: const Color.fromRGBO(169, 81, 222, 1.0),
      ),
      body:const ChatScreen()
    );
  }
}
