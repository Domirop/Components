library components;

import 'package:components/buttons/button.dart';
import 'package:components/errors_elements/network_error.dart';
import 'package:components/errors_elements/text_error.dart';
import 'package:components/others_components/calendar.dart';
import 'package:components/others_components/confirm_dialog.dart';
import 'package:components/others_components/go_back.dart';
import 'package:components/text_types/large_text.dart';
import 'package:components/text_types/medium_text.dart';
import 'package:components/text_types/small_text.dart';
import 'package:components/text_types/textfield_predefine.dart';
import 'package:flutter/material.dart';

class Components {

  static MyButton smallButton(Function function, Widget widget,
      {double height,
      double horizontalPadding = 35.0,
      double verticalMargin = 10.0,
      Color color = Colors.white,
      double width}) {
    return MyButton(function, widget, height, horizontalPadding, verticalMargin,
        color, width);
  }

  static SmallText smallText(String text,
      {FontWeight boolText = FontWeight.bold,
      double size = 12,
      Color color = Colors.white}) {
    return SmallText(text, boolText, size, color);
  }

  static MediumText mediumText(String text,
      {FontWeight boolText = FontWeight.bold,
      double size = 16,
      Color color = Colors.white}) {
    return MediumText(text, boolText, size, color);
  }

  static LargeText largeText(String text,
      {FontWeight boolText = FontWeight.bold,
      double size = 20,
      Color color = Colors.white}) {
    return LargeText(text, boolText, size, color);
  }

  static TextError errorText(String text, {Color color}) {
    color == null ? color = Color.fromRGBO(230, 73, 90, 1) : color = color;
    return TextError(
      text,
      color,
    );
  }

  static TextFieldPredefine textFieldPredefine(TextEditingController controller,
      TextInputType textType, InputDecoration decoration, TextStyle textStyle,
      {Color cursorColor = Colors.white,
      int maxLength,
      Function onchangeFunction,
      bool obscureText = false,
      ToolbarOptions toolbarOptions,
      bool enable = true}) {
    return TextFieldPredefine(controller, textType, decoration, textStyle,
        cursorColor, maxLength, onchangeFunction, obscureText, toolbarOptions, enable);
  }

  static NetworkError networkError(double height, double width) {
    LargeText largeText =
        Components.largeText("¡Vaya! Parece que no tienes internet");
    MediumText mediumText1 =
        Components.mediumText("No podemos obtener los datos");
    MediumText mediumText2 =
        Components.mediumText("Por favor revisa tu conexión a internet");
    return NetworkError(height, width, largeText, mediumText1, mediumText2);
  }

  static GoBack goBack(BuildContext screen, String text) {
    return GoBack(screen, text);
  }

  static Widget confirmDialog(Widget widget, Function function,
      {bool multiOptions = true}) {
    return ConfirmDialog(widget, function, multiOptions);
  }
}
