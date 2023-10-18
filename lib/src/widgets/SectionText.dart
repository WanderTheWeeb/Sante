import 'package:flutter/material.dart';

class SectionText extends StatelessWidget {
  final String text;

  const SectionText(this.text, {super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        text: text,
        style: const TextStyle(fontSize: 16, color: Colors.black87),
      ),
      textAlign: TextAlign.justify,
    );
  }
}