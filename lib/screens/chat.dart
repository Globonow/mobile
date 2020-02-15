import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:globo_now/components/generic_navbar_page.dart';
import 'package:globo_now/components/message_bubble.dart';
import 'package:globo_now/components/standard_flash.dart';
import 'package:globo_now/utilities/themes.dart';

class Chat extends StatelessWidget {
  static final String routeId = '/chat';

  @override
  Widget build(BuildContext context) {
    MediaQueryData mediaQuery = MediaQuery.of(context);
    Map<String, dynamic> themeColors = CurrentTheme().getThemeColors();
    return GenericNavbar(
      leftNavbarIcon: FontAwesomeIcons.angleLeft,
      leftIconCallback: () {
        Navigator.pop(context);
      },
      child: Column(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: <Color>[themeColors['header'], Colors.black26])),
            height: mediaQuery.size.height * 0.17,
            width: mediaQuery.size.width,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Icon(
                  FontAwesomeIcons.thumbtack,
                  color: themeColors['primary'],
                  size: 30,
                ),
                MessageBubble(),
              ],
            ),
          ),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(colors: <Color>[
                  themeColors['background']['top'],
                  themeColors['background']['bot']
                ], begin: Alignment.topCenter, end: Alignment.bottomCenter),
              ),
              child: StreamBuilder(
                builder: (context, snapshot) {
                  return Container();
                },
              ),
              //TODO: MessageBubbles
            ),
          ),
          Container(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8.0),
                    child: TextField(
                      textInputAction: TextInputAction.send,
                      style: TextStyle(color: themeColors['primary']),
                      maxLines: null,
                      decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: themeColors['primary'], width: 0.2),
                            borderRadius: BorderRadius.circular(30)),
                        border: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: themeColors['primary']),
                            borderRadius: BorderRadius.circular(30)),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 32.0),
                  child: Icon(
                    FontAwesomeIcons.solidPaperPlane,
                    color: themeColors['primary'],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
