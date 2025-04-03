import 'package:flutter/material.dart';
import 'package:first_app/gradient_container.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        body: GradientContainer(
          color: [
            Color.fromARGB(255, 242, 123, 123),
            Color.fromARGB(255, 123, 139, 242),
          ],
        ),
      ),
    ),
  );
}
