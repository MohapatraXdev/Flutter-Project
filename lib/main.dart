import 'package:flutter/material.dart';
import 'package:first_app/gradient_container.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        body: GradientContainer(
          Color.fromARGB(255, 104, 58, 183), // Color 1
          Color.fromARGB(193, 104, 58, 183), // Color 2
        ),
      ),
    ),
  );
}
