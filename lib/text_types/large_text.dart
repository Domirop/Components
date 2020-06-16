import 'package:flutter/material.dart';

class LargeText extends StatelessWidget {
  String text;
  Color color;
  FontWeight boolText;
  double size;
  LargeText(String text, FontWeight boolText, double size, Color color);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: size,
        color: color,
        fontWeight: boolText,
      ),
    );
  }
}
