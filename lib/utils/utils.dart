import 'package:flutter/material.dart';
import 'package:sante2/src/widgets/SectionText.dart';
import 'package:sante2/src/widgets/SectionTitle.dart';

Widget TextSectionV1(String title, String text) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      SectionTitle(title),
      const SizedBox(height: 16),
      SectionText(text),
      const SizedBox(height: 16),
    ],
  );
}