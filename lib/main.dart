import 'package:flutter/material.dart';
import 'package:fl_dadu/gradient_container.dart';

void main() {
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: GradientContainer(
          Color.fromARGB(255, 33, 5, 109),
          Color.fromARGB(255, 45, 21, 109),
        ),
      ),
    ),
  );
}
