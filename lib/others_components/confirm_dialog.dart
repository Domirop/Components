import 'package:components/components.dart';
import 'package:flutter/material.dart';

class ConfirmDialog extends StatefulWidget {
  Widget widget;
  Function function;
  bool multiOptions;
  BuildContext context;

  ConfirmDialog(this.widget, this.function, this.multiOptions);

  @override
  _ConfirmDialogState createState() => _ConfirmDialogState();
}

class _ConfirmDialogState extends State<ConfirmDialog> {
  double height;
  double WIDHT;

  @override
  void initState() {
    widget.context = context;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    WIDHT = MediaQuery.of(context).size.width;
    Widget button =
        widget.multiOptions == true ? buttonsOptions() : buttonSimple();
    return AlertDialog(
      backgroundColor: Color.fromRGBO(30, 31, 32, 1),
      title: Center(child: widget.widget),
      content: button,
    );
  }

  Widget buttonsOptions() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: <Widget>[
        Components.smallButton(
          () => {Navigator.pop(context)},
          Components.smallText("No"),
          color: Color.fromRGBO(230, 73, 90, 1),
          height: height * 0.04,
        ),
        Components.smallButton(
          widget.function,
          Components.smallText("Sí"),
          color: Color.fromRGBO(230, 73, 90, 1),
          height: height * 0.04,
        ),
      ],
    );
  }

  Widget buttonSimple() {
    return Components.smallButton(
      () => {Navigator.pop(context)},
      Components.smallText("Aceptar"),
      color: Color.fromRGBO(230, 73, 90, 1),
      height: height * 0.05,
    );
  }
}
