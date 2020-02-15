import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:globo_now/components/background_container.dart';
import 'package:globo_now/components/generic_navbar_page.dart';
import 'package:globo_now/components/standard_flash.dart';
import 'package:globo_now/utilities/themes.dart';

class Flashes extends StatelessWidget {
  static final String routeId = '/flashes';

  @override
  Widget build(BuildContext context) {
    Map<String, dynamic> themeColors = CurrentTheme().getThemeColors();
    MediaQueryData mediaQuery = MediaQuery.of(context);
    return GenericNavbar(
      leftNavbarIcon: FontAwesomeIcons.angleLeft,
      leftIconCallback: () {
        Navigator.pop(context);
      },
      child: Center(
        child: Container(
          width: mediaQuery.size.width * 0.8,
          height: mediaQuery.size.height * 0.6,
          child: Carousel(
            images: _getFlashes(),
            autoplay: false,
            dotSize: 3,
            dotIncreasedColor: themeColors['primary'],
            dotBgColor: Colors.transparent,
            animationDuration: Duration(days: 2),
          ),
        ),
      ),
    );
  }

  List<Widget> _getFlashes() {
    List<StandardFlash> flashesList = List();

    //TODO: ACIDIONAR FLASHES DINAMICAMENTE VINDOS DO BACKEND

    flashesList.add(StandardFlash());
    flashesList.add(StandardFlash());
    flashesList.add(StandardFlash());

    //--//

    return flashesList;
  }
}
