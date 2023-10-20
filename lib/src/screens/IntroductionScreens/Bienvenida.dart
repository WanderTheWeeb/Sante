import 'package:flutter/material.dart';
import 'package:sante2/src/widgets/SectionText.dart';
import 'package:sante2/src/widgets/SectionTitle.dart';

class Bienvenida extends StatelessWidget {
  const Bienvenida({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: const Center(child: Text('Bienvenido a Santé')),
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
        body: Padding(
            padding: const EdgeInsets.all(20.0),
            child: ListView(children: [
              const Center(
                  child: SectionTitle('Tu Espacio de Bienestar Mental')),
              const SizedBox(height: 16),
              const SectionText(
                  'En Santé, nuestra misión es proporcionarte las herramientas y el apoyo necesarios para que puedas cuidar de tu salud mental de la manera más eficaz y comprensiva. Reconocemos que la salud mental es una parte esencial de tu bienestar general, y estamos comprometidos a ayudarte a superar las barreras que puedan dificultar el acceso a la atención psicológica de calidad.'),
              const SizedBox(height: 16),
              Image.asset('assets/images/IntroImage.jpg',
                  height: 350, alignment: Alignment.center)
            ])));
  }
}
