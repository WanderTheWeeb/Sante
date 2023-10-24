import 'package:flutter/material.dart';
import 'package:sante2/utils/utils.dart';


class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Registro de usuario"),
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
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            buildTextField('Nombre Completo', 'Nombre Completo'),
            const SizedBox(height: 10),
            Row(
              children: [
                Expanded(
                  child: buildTextField('Edad', 'Edad'),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: buildTextField('Género', 'Género'),
                ),
              ],
            ),
            const SizedBox(height: 10),
            buildTextField('Correo', 'Correo'),
            const SizedBox(height: 10),
            buildTextField('Teléfono', 'Teléfono'),
            const SizedBox(height: 20),
            buildTextField('Cédula Profesional', 'Cédula Profesional'),
            const SizedBox(height: 20),
            buildDropdown(),
            const SizedBox(height: 20),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Color.fromRGBO(42, 157, 143, 1.0),
              ),
              onPressed: () {},
              child: const Text('Subir Documento de Identidad'),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Color.fromRGBO(42, 157, 143, 1.0),
              ),
              onPressed: () {},
              child: const Text('Registrarse'),
            ),
          ],
        ),
      ),
    );
  }


  Widget buildDropdown() {
    final List<String> specialities = [
      'Psicología',
      'Psicología Clínica',
      'Psicología Educativa',
      'Otra',
    ];

    String _selectedSpeciality = specialities[0];

    return DropdownButtonFormField(
      value: _selectedSpeciality,
      items: specialities.map((speciality) {
        return DropdownMenuItem(
          value: speciality,
          child: Text(speciality),
        );
      }).toList(),
      onChanged: (value) {
        setState(() {
          _selectedSpeciality = value.toString();
        });
      },
      decoration: const InputDecoration(
        labelText: 'Especialidad',
        labelStyle: TextStyle(
          color: Color.fromRGBO(42, 157, 143, 1.0), // Establece el color del label al tomar el foco
        ),
      ),
    );
  }
}
