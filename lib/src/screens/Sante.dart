import 'package:flutter/material.dart';

class Sante extends StatelessWidget {
  const Sante({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Organizaciones"),
        elevation: 8,
        backgroundColor: const Color.fromRGBO(169, 81, 222, 1.0),
      ),
      body: const Center(child: Text("Organizaciones")),
    );
  }
}
