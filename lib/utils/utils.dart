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
          child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            SectionTitle(title),
            const SizedBox(height: 16),
            SectionText(text),
            const SizedBox(height: 16)
          ]),
        ),
      ),

    ],
  );

Widget TileDrawer(String title, IconData iconData) {
  return ListTile(
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




