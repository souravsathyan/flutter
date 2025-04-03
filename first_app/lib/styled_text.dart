import 'package:flutter/material.dart';

class Styledtext extends StatelessWidget {
  const Styledtext(this.text, {super.key});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(text, style: TextStyle(color: Colors.white, fontSize: 34));
  }
}
