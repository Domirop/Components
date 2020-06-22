import 'package:flutter/material.dart';

class AlertCard extends StatelessWidget {
  Color color;
  double height;
  double width;
  Widget firstWidget;
  Widget secondWidget;
  MainAxisAlignment mainAxisAlignment;
  CrossAxisAlignment crossAxisAlignment;

  AlertCard(this.color, this.height, this.width, this.firstWidget,
      this.secondWidget, this.mainAxisAlignment, this.crossAxisAlignment);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
      ),
      height: this.height,
      width: this.width,
      color: this.color,
      child: Row(
        mainAxisAlignment: this.mainAxisAlignment,
        crossAxisAlignment: this.crossAxisAlignment,
        children: <Widget>[
          this.firstWidget,
          this.secondWidget,
        ],
      ),
    );
  }
}
