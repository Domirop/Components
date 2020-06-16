import 'package:flutter/material.dart';

class SmallText extends StatelessWidget {
  String text;
  FontWeight boolText;
  double size;
  Color color;

  SmallText(this.text, this.boolText, this.size, this.color);

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
