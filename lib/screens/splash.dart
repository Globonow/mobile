import 'package:flutter/material.dart';
import 'package:globo_now/components/background_container.dart';
import 'package:globo_now/utilities/themes.dart';

class Splash extends StatelessWidget {
  static final String routeId = '/splash';

  @override
  Widget build(BuildContext context) {
    Map<String, dynamic> themeColors = CurrentTheme().getThemeColors();
    return BackgroundContainer(
      child: Center(
        child: SizedBox(
          child: Image(
            image: AssetImage('assets/images/globonow-logo.png'),
          ),
        ),
      ),
    );
  }
}
