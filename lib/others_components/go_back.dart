import 'package:flutter/material.dart';

class GoBack extends StatelessWidget {
  BuildContext screen;
  String text;
  double height;
  double width;

  GoBack(this.screen, this.text);

  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    return Padding(
      padding: EdgeInsets.only(left: width * 0.025, top: height * 0.001),
      child: GestureDetector(
        onTap: () {
          Navigator.pop(screen);
        },
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.navigate_before,
              color: Colors.white,
              size: 35.0,
            ),
            Expanded(
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  text,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18.0,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
