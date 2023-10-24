import 'package:flutter/material.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  String _selectedSpeciality = 'Psicología';

  // Define una lista de especialidades de psicólogos para el menú desplegable.
  final List<String> _specialities = [
    'Psicología',
    'Psicología Clínica',
    'Psicología Educativa',
    'Otra'
  ];

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
            TextField(
              onChanged: (value) {},
              decoration: const InputDecoration(labelText: 'Nombre Completo'),
            ),
            const SizedBox(height: 10),
            Row(
              children: [
                Expanded(
                  child: TextField(
                    onChanged: (value) {},
                    decoration: const InputDecoration(labelText: 'Edad'),
                  ),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: TextField(
                    onChanged: (value) {},
                    decoration: const InputDecoration(labelText: 'Género'),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            TextField(
              onChanged: (value) {},
              decoration: const InputDecoration(labelText: 'Correo'),
            ),
            const SizedBox(height: 10),
            TextField(
              onChanged: (value) {},
              decoration: const InputDecoration(labelText: 'Teléfono'),
            ),
            const SizedBox(height: 20),
            TextField(
              onChanged: (value) {},
              decoration:
                  const InputDecoration(labelText: 'Cédula Profesional'),
            ),
            const SizedBox(height: 20),
            DropdownButtonFormField(
              value: _selectedSpeciality,
              items: _specialities.map((speciality) {
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
              decoration: const InputDecoration(labelText: 'Especialidad'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              style: const ButtonStyle(
                backgroundColor: MaterialStatePropertyAll(
                  Color.fromRGBO(42, 157, 143, 1.0),
                ),
              ),
              onPressed: () {},
              child: const Text('Subir Documento de Identidad'),
            ),
            ElevatedButton(
              style: const ButtonStyle(
                backgroundColor: MaterialStatePropertyAll(
                  Color.fromRGBO(42, 157, 143, 1.0),
                ),
              ),
              onPressed: () {},
              child: const Text('Registrarse'),
            ),
          ],
        ),
      ),
    );
  }
}