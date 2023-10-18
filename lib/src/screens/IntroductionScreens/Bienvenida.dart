import 'package:flutter/material.dart';
import 'package:sante2/src/widgets/SectionText.dart';
import 'package:sante2/src/widgets/SectionTitle.dart';

class Bienvenida extends StatelessWidget {
  const Bienvenida({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Center(child: Text('Bienvenido a Santé')),
        ),
        body: Padding(
            padding: const EdgeInsets.all(20.0),
            child: ListView(children: const [
              Center(child: SectionTitle('Tu Espacio de Bienestar Mental')),
              SectionText('En Santé, nuestra misión es proporcionarte las herramientas y el apoyo necesarios para que puedas cuidar de tu salud mental de la manera más eficaz y comprensiva. Reconocemos que la salud mental es una parte esencial de tu bienestar general, y estamos comprometidos a ayudarte a superar las barreras que puedan dificultar el acceso a la atención psicológica de calidad.'),

            ])));
  }
}
