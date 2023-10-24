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
    String imagePath,
    ) {
  return Container(
    padding: const EdgeInsets.all(10),
    margin: const EdgeInsets.all(5),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(15),
      gradient: const LinearGradient(
        colors: [Colors.blueGrey, Colors.black87],
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
      ),
    ),
    child: Row(
      children: [
        Padding(
          padding: const EdgeInsets.all(10),
          child: CircleAvatar(
            backgroundColor: Colors.black87,
            radius: 30,
            child: CircleAvatar(
              radius: 28,
              backgroundImage: AssetImage(imagePath),
            ),
          ),
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                username,
                style: const TextStyle(color: Colors.white, fontSize: 20),
              ),
              const Divider(
                color: Colors.white,
                endIndent: 20,
              ),
              Text(
                userDescription,
                style: const TextStyle(color: Colors.white, fontSize: 14),
              ),
              const SizedBox(height: 10),
              Align(
                alignment: Alignment.center,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.black,
                    backgroundColor: Colors.amber,
                  ),
                  onPressed: () {},
                  child: const Text('Atender'),
                ),
              ),
            ],
          ),
        ),
      ],
    ),
  );
}
