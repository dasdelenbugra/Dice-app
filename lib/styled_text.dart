import 'package:flutter/material.dart';

class StyledText extends StatelessWidget {
  const StyledText(this.text, {super.key});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(
        fontStyle: FontStyle.italic,
        fontSize: 39,
        color: Colors.white,
        backgroundColor: Color.fromARGB(255, 113, 111, 111),
      ),
    );
  }
}
