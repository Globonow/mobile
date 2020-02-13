import 'package:flutter/material.dart';
import 'package:globo_now/utilities/themes.dart';

class StandardButton extends StatelessWidget {
  final double height;
  final double width;
  final String text;
  final Function onPressed;

  StandardButton({this.width, this.height, this.text, this.onPressed});

  @override
  Widget build(BuildContext context) {
    MediaQueryData mediaQuery = MediaQuery.of(context);
    Map<String, dynamic> themeColors = CurrentTheme().getThemeColors();
    return FlatButton(
      padding: EdgeInsets.symmetric(
        horizontal: mediaQuery.size.width * 0.001,
      ),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
      onPressed: this.onPressed,
      child: Container(
        height: this.height,
        width: this.width,
        decoration: BoxDecoration(
            border: Border.all(color: themeColors['primary']),
            borderRadius: BorderRadius.circular(20),
            gradient: LinearGradient(colors: <Color>[
              themeColors['background']['top'],
              themeColors['background']['bot']
            ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              this.text,
              style: TextStyle(color: themeColors['primary']),
            ),
          ),
        ),
      ),
    );
  }
}
