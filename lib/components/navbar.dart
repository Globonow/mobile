import 'package:flutter/material.dart';
import 'package:globo_now/utilities/themes.dart';

// ignore: must_be_immutable
class Navbar extends StatelessWidget {
  MediaQueryData mediaQuery;
  final IconData leftIcon;
  final IconData rightIcon;
  final Function leftIconCallback;
  final Function rightIconCallback;

  Navbar(
      {this.leftIcon,
      this.rightIcon,
      this.leftIconCallback,
      this.rightIconCallback});

  @override
  Widget build(BuildContext context) {
    mediaQuery = MediaQuery.of(context);
    Map<String, dynamic> themeColors = CurrentTheme().getThemeColors();

    return Container(
      height: mediaQuery.size.height * 0.15,
      color: themeColors['header'],
      child: Padding(
        padding: const EdgeInsets.only(bottom: 8, left: 8, right: 8),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(bottom: 4.0),
              child: GestureDetector(
                onTap: this.leftIconCallback,
                child: Icon(
                  this.leftIcon,
                  color: themeColors['icons'],
                ),
              ),
            ),
            SizedBox(
                child: Image(
              image: AssetImage('assets/images/globonow-logo.png'),
              height: 35,
            )),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: GestureDetector(
                onTap: rightIconCallback,
                child: Icon(
                  this.rightIcon,
                  color: themeColors['icons'],
                  size: 20,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
