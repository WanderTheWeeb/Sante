import 'package:flutter/material.dart';
import 'package:sante2/utils/utils.dart';

class RequestMenu extends StatelessWidget {
  const RequestMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Mensajes"),
        elevation: 8,
        backgroundColor: Colors.transparent,
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromRGBO(42, 157, 143, 1.0),
                Color.fromRGBO(24, 90, 82, 1.0),
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.all(8),
        children: [
          UserRequest(
            'Anonimo',
            'Tengo problemas con mi familia debido a que siempre me ignoran y siento que no prestan atención...',
          ),
          UserRequest(
            'Anonimo',
            'Siento que no pertenezco a este mundo, tengo la percepcion de la realidad bien alterada...',
          )
        ],
      ),
    );
  }
}
