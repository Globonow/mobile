import 'package:flutter/material.dart';
import 'package:globo_now/utilities/themes.dart';

class BackgroundContainer extends StatelessWidget {
  final Widget child;

  BackgroundContainer({this.child});

  @override
  Widget build(BuildContext context) {
    Map<String, dynamic> themeColors = CurrentTheme().getThemeColors();
    MediaQueryData mediaQuery = MediaQuery.of(context);
    return Container(
      height: mediaQuery.size.height,
      width: mediaQuery.size.width,
      decoration: BoxDecoration(
        gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: <Color>[
              themeColors['background']['top'],
              themeColors['background']['bot'],
            ]),
      ),
      child: this.child,
    );
  }
}
