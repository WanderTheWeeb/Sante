import 'package:flutter/material.dart';
import 'package:sante2/src/widgets/SectionText.dart';
import 'package:sante2/src/widgets/SectionTitle.dart';

class Aclaraciones extends StatelessWidget {
  const Aclaraciones({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Center(child: Text('Aclaraciones')),
        ),
        body: Padding(
            padding: const EdgeInsets.all(20.0),
            child: ListView(children: const [
              SectionTitle('1. Complemento, no Sustituto:'),
              SectionText(
                  'Santé se concibe como una herramienta de apoyo y orientación en tu búsqueda de bienestar mental. No debe considerarse como un reemplazo de la atención de un profesional de salud mental con licencia. Los profesionales de salud mental cuentan con la formación y experiencia necesaria para abordar de manera integral tus necesidades emocionales y mentales.'),
              SectionTitle('2. Consulta a un Profesional de Salud Mental:'),
              SectionText(
                  'Si estás lidiando con problemas graves de salud mental, un diagnóstico, un tratamiento específico o una crisis, te recomendamos encarecidamente que busques la ayuda de un profesional de salud mental con licencia. Estos expertos están capacitados para proporcionar diagnósticos precisos y desarrollar planes de tratamiento personalizados.'),
              SectionTitle('3. Evaluación Profesional:'),
              SectionText(
                  'Los profesionales de salud mental pueden llevar a cabo una evaluación completa de tu situación y proporcionarte intervenciones basadas en evidencia. Esto garantiza que recibas el tratamiento adecuado y una atención personalizada que se ajuste a tus necesidades.'),
              SectionTitle('4. Comunicación Abierta:'),
              SectionText(
                  'Si decides utilizar Santé en conjunción con la atención de un profesional de salud mental, asegúrate de mantener una comunicación abierta y honesta con tu terapeuta o médico. Compartir tu experiencia con la aplicación puede ayudar a tu profesional a brindarte un apoyo más efectivo.')
            ])));
  }
}
