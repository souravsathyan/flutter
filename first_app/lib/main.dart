import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: Scaffold(body: const GradientContainer())));
}

class GradientContainer extends StatelessWidget {
  const GradientContainer({super.key});

  @override
  Widget build(context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            Color.fromARGB(255, 242, 123, 123),
            Color.fromARGB(255, 123, 139, 242),
          ],
        ),
      ),
      child: const Center(child: StyledText()),
    );
  }
}

class StyledText extends StatelessWidget {
  const StyledText({super.key});

  @override
  Widget build(context) {
    return Text(
      'Hello World',
      style: TextStyle(color: Colors.white, fontSize: 30),
    );
  }
}
