import 'package:flutter/material.dart';
import 'package:sante2/src/widgets/SectionText.dart';
import 'package:sante2/src/widgets/SectionTitle.dart';

class TerminosCondiciones extends StatelessWidget {
  const TerminosCondiciones({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('Términos y Condiciones de Uso')),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: ListView(
          children: const [
            SectionTitle('1. Confidencialidad y Privacidad:'),
            SectionText(
              'Respetamos tu privacidad y la confidencialidad de tus datos. Toda la información compartida con nuestros profesionales de salud mental se manejará de manera confidencial, de acuerdo con las leyes y regulaciones aplicables.',
            ),
            SectionTitle(
              '2. Uso Responsable:',
            ),
            SectionText(
              'La aplicación Santé es una plataforma destinada al apoyo de la salud mental. Esperamos que todos los usuarios se comporten de manera respetuosa y ética al interactuar con los profesionales y otros usuarios.',
            ),
            SectionTitle(
              '3. Contenido y Recursos:',
            ),
            SectionText(
              'El contenido proporcionado en la aplicación Santé tiene fines informativos y de apoyo. No debe sustituir el consejo o el tratamiento médico profesional. Consulta a un profesional de salud mental calificado para tus necesidades específicas',
            ),
            SectionTitle(
              '4. Seguridad:',
            ),
            SectionText(
              'Mantén tus credenciales de inicio de sesión seguras y no compartas tu cuenta. Santé no solicitará información personal sensible, como contraseñas, a través de la aplicación. Reporta cualquier actividad sospechosa de inmediato.',
            ),
            SectionTitle(
              '5. Atención de Crisis:',
            ),
            SectionText(
              'Si estás experimentando una emergencia o crisis mental, te instamos a buscar ayuda de inmediato a través de recursos locales de emergencia o de atención médica. Santé no es un servicio de atención de crisis.',
            ),
            SectionTitle(
              '6. Actualizaciones y Cambios:',
            ),
            SectionText(
              'Nos reservamos el derecho de realizar cambios en la aplicación y en estos términos y condiciones en cualquier momento. Te informaremos sobre las actualizaciones importantes.',
            ),
            SectionTitle(
              '7. Responsabilidad:',
            ),
            SectionText(
              'Santé no se hace responsable por las decisiones tomadas por los usuarios basadas en la información proporcionada en la aplicación. El uso de Santé es responsabilidad del usuario.',
            ),
            SectionTitle(
              '8. Contacto:',
            ),
            SectionText(
              'Si tienes preguntas, inquietudes o comentarios sobre nuestra aplicación o nuestros términos y condiciones, no dudes en contactarnos a través de nuestra sección de soporte.',
            ),
          ],
        ),
      ),
    );
  }
}
