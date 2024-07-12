import 'package:first_app/gradiant_container.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
          body: GradiantContainer(
        colors: [
          Color.fromARGB(255, 27, 2, 109),
          Color.fromARGB(255, 27, 3, 244),
        ],
      )),
    ),
  );
}
