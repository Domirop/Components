import 'package:components/text_types/large_text.dart';
import 'package:components/text_types/medium_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class NetworkError extends StatelessWidget {
  double height;
  double width;
  LargeText largeText;
  MediumText mediumText1;
  MediumText mediumText2;

  NetworkError(this.height, this.width, this.largeText, this.mediumText1,
      this.mediumText2);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: height * 0.2),
      child: Center(
        child: Column(
          children: <Widget>[
            largeText,
            Padding(
              padding: EdgeInsets.only(top: height * 0.05),
              child: SvgPicture.asset("assets/images/ufo.svg"),
            ),
            Padding(
              padding: EdgeInsets.only(top: height * 0.05),
              child: mediumText1,
            ),
            mediumText2,
          ],
        ),
      ),
    );
  }
}
