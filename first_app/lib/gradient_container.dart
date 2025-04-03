import 'package:first_app/dice_roller.dart';
import 'package:flutter/material.dart';

var alignStart = Alignment.topLeft;
final alignEnd = Alignment.bottomRight;

class GradientContainer extends StatelessWidget {
  GradientContainer({super.key, required this.color});

  final List<Color> color;

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: alignStart,
          end: alignEnd,
          colors: color,
        ),
      ),
      child: Center(child: DiceRoller()),
    );
  }
}
