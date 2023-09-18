import 'package:flutter/material.dart';

class DripText extends StatelessWidget {
  final String text;
  final Color color;

  const DripText(this.text, {super.key, this.color = Colors.blueGrey});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(color: color),
    );
  }
}
