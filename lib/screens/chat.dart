import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:globo_now/components/generic_navbar_page.dart';
import 'package:globo_now/components/standard_flash.dart';

class Chat extends StatelessWidget {
  static final String routeId = '/chat';

  @override
  Widget build(BuildContext context) {
    return GenericNavbar(
      leftNavbarIcon: FontAwesomeIcons.angleLeft,
      child: Column(
        children: <Widget>[
          StandardFlash(),
        ],
      ),
    );
  }
}
