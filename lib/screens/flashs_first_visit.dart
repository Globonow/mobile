import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:globo_now/components/background_container.dart';
import 'package:globo_now/components/standard_button.dart';
import 'package:globo_now/utilities/themes.dart';

class FlashsFirstVisit extends StatelessWidget {
  static final String routeId = '/flash-first';

  @override
  Widget build(BuildContext context) {
    Map<String, dynamic> themeColors = CurrentTheme().getThemeColors();
    return BackgroundContainer(
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(32.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SizedBox(
                height: 36,
                child: Image(
                  image: AssetImage('assets/images/globonow-logo.png'),
                ),
              ),
              SizedBox(
                height: 150,
                child: Icon(
                  FontAwesomeIcons.bolt,
                  color: themeColors['primary'],
                  size: 90.41,
                ),
              ),
              SizedBox(
                child: RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(children: <TextSpan>[
                    TextSpan(
                      text: 'As',
                      style: TextStyle(fontSize: 16, fontFamily: 'Roboto'),
                    ),
                    TextSpan(
                      text: ' Flash Infos ',
                      style: TextStyle(
                          color: themeColors['primary'],
                          fontSize: 16,
                          fontFamily: 'Roboto'),
                    ),
                    TextSpan(
                      text:
                          'do GloboNow irão deixar você por dentro de tudo que está acontecendo na programação da Globo em tempo real!',
                      style: TextStyle(fontSize: 16, fontFamily: 'Roboto'),
                    ),
                  ]),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20.0),
                child: SizedBox(
                  child: StandardButton(
                    text: 'ENTENDI',
                    height: 40,
                    width: 140,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
