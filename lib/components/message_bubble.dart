import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:globo_now/utilities/themes.dart';

class MessageBubble extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Map<String, dynamic> themeColors = CurrentTheme().getThemeColors();
    return Row(
      children: <Widget>[
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: themeColors['primary'],
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(left: 12.0),
                child: Text(
                  'joaozinho123',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 10),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10.0),
                child: Text('Olá mundo!'),
              ),
            ],
          ),
          height: 30,
          width: 150,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: Icon(
            FontAwesomeIcons.heart,
            color: themeColors['primary'],
            size: 25,
          ),
        ),
      ],
    );
  }
}
