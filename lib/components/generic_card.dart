import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:globo_now/utilities/themes.dart';

class GenericCard extends StatelessWidget {
  final double height;
  final double width;
  final bool isLive;
  final String imageURI;
  final String bigText;
  final String smallText;

  GenericCard(
      {@required this.height,
      @required this.width,
      this.isLive = false,
      @required this.imageURI,
      this.bigText,
      this.smallText});

  @override
  Widget build(BuildContext context) {
    Map<String, dynamic> themeColors = CurrentTheme().getThemeColors();
    return Container(
      child: Stack(
        alignment: this.isLive ? Alignment.bottomLeft : Alignment.bottomCenter,
        children: <Widget>[
          Container(
            height: this.height,
            width: this.width,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(40),
              image: DecorationImage(
                  image: NetworkImage(this.imageURI), fit: BoxFit.cover),
            ),
            foregroundDecoration: BoxDecoration(
              borderRadius: BorderRadius.circular(40),
              gradient: LinearGradient(colors: <Color>[
                Colors.transparent,
                themeColors['background']['bot']
              ], begin: Alignment.topCenter, end: Alignment.bottomCenter),
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.only(left: 20.0, right: 20.0, bottom: 12.0),
            child: RichText(
              text: TextSpan(
                text: '',
                children: this.getCardText(themeColors),
              ),
            ),
          ),
        ],
      ),
    );
  }

  List<InlineSpan> getCardText(Map<String, dynamic> themeColors) {
    if (this.isLive) {
      return <InlineSpan>[
        TextSpan(text: this.bigText, style: TextStyle(fontSize: 30)),
        WidgetSpan(
          child: Icon(
            FontAwesomeIcons.bolt,
            color: themeColors['primary'],
          ),
        ),
        TextSpan(text: '\n'),
        TextSpan(
          text: this.smallText,
          style: TextStyle(
              fontSize: 26,
              fontFamily: 'RobotoBlack',
              fontStyle: FontStyle.italic,
              color: themeColors['primary']),
        ),
      ];
    } else {
      return <InlineSpan>[
        TextSpan(
          text: this.smallText,
          style: TextStyle(
              fontSize: 20,
              fontFamily: 'Roboto',
              fontStyle: FontStyle.italic,
              color: themeColors['text']),
        ),
      ];
    }
  }
}
