import 'package:flutter/material.dart';
import 'package:sante2/src/widgets/SectionText.dart';
import 'package:sante2/src/widgets/SectionTitle.dart';

Widget TextSectionV1(String title, String text) => Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(12.0),
          child: Container(
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey[300]!),
              borderRadius: BorderRadius.circular(8),
            ),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              SectionTitle(title),
              const SizedBox(height: 16),
              SectionText(text),
              const SizedBox(height: 16)
            ]),
          ),
        ),
      ],
    );

Widget TileDrawer(BuildContext context, String folderName, String title, IconData iconData) {
  final route = '/$folderName'; // Aquí se concatena el nombre de la carpeta
  return ListTile(
    onTap: () {
      Navigator.pushNamed(context, route);
    },
    title: Text(
      title,
      style: const TextStyle(color: Colors.white),
    ),
    leading: Icon(
      iconData,
      color: Colors.white,
    ),
  );
}

Widget UserRequest(
    String username,
    String userDescription,
    ) {
  return Container(
    padding: const EdgeInsets.all(10),
    margin: const EdgeInsets.all(5),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(15),
      gradient: LinearGradient(
        colors: [Colors.teal, Colors.blue],
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
      ),
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          username,
          style: TextStyle(color: Colors.white, fontSize: 20),
        ),
        const Divider(
          color: Colors.white,
          endIndent: 20,
        ),
        Text(
          userDescription,
          style: TextStyle(color: Colors.white, fontSize: 14),
        ),
        const SizedBox(height: 10),
        Align(
          alignment: Alignment.bottomRight,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              foregroundColor: Colors.black,
              backgroundColor: Colors.amber, // Cambia el color de fondo del botón
            ),
            onPressed: () {},
            child: const Text('Atender'),
          ),
        ),
      ],
    ),
  );
}


Widget buildTextField(String label, String hint) {
  return TextField(
    onChanged: (value) {},
    decoration: InputDecoration(
      labelText: label,
      labelStyle: const TextStyle(
      ),
      hintText: hint,
    ),
  );
}

