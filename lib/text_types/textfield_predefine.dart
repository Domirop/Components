import 'package:flutter/material.dart';

class TextFieldPredefine extends StatelessWidget {
  TextEditingController controller;
  TextInputType textType;
  Color cursorColor;
  InputDecoration decoration;
  TextStyle textStyle;
  int maxLength;
  Function onchangeFunction;
  bool obscureText;
  ToolbarOptions toolbarOptions;
  bool enable;

  TextFieldPredefine(
      this.controller,
      this.textType,
      this.decoration,
      this.textStyle,
      this.cursorColor,
      this.maxLength,
      this.onchangeFunction,
      this.obscureText,
      this.toolbarOptions,
      this.enable);

  @override
  Widget build(BuildContext context) {
    return TextField(
        enabled: enable,
        enableInteractiveSelection: false,
        toolbarOptions: toolbarOptions,
        controller: controller,
        keyboardType: textType,
        cursorColor: cursorColor,
        decoration: decoration,
        style: textStyle,
        maxLength: maxLength,
        obscureText: obscureText,
        onChanged: onchangeFunction);
  }
}
