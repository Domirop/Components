import 'package:components/components.dart';
import 'package:flutter/cupertino.dart';
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
        FlatButton(
          onPressed: () => Navigator.pop(context),
          color: Color.fromRGBO(230, 73, 90, 1),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            side: BorderSide(width: 1.0),
          ),
          child: Text(
            "No",
            style: TextStyle(
              color: Colors.white
            ),
          ),
        ),
        FlatButton(
          onPressed: widget.function,
          color: Color.fromRGBO(230, 73, 90, 1),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
            side: BorderSide(width: 1.0),
          ),
          child: Text(
            "Sí",
            style: TextStyle(
                color: Colors.white
            ),
          ),
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
