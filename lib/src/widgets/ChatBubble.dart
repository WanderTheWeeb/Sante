import 'package:flutter/material.dart';

class ChatBubble extends StatelessWidget {
  final String message;
  final bool isUserMessage;

  ChatBubble({required this.message, required this.isUserMessage});

  @override
  Widget build(BuildContext context) {
    return Wrap(
      alignment: isUserMessage ? WrapAlignment.end : WrapAlignment.start,
      children: [
        Container(
          margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
          padding: const EdgeInsets.all(12),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: const Color.fromRGBO(255, 156, 233, 1),
          ),
          child: Text(
            message,
            style: const TextStyle(fontSize: 16),
          ),
        ),
      ],
    );
  }
}
