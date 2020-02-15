import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:globo_now/components/generic_navbar_page.dart';
import 'package:globo_now/components/standard_button.dart';
import 'package:globo_now/screens/chat.dart';
import 'package:globo_now/utilities/themes.dart';

const programs = [
  {
    'name': 'JORNAL NACIONAL',
    'img_url':
        'https://upload.wikimedia.org/wikipedia/en/0/09/Jornal_Nacional_%28logo%29.png',
    'description':
        'As principais notícias do Brasil e do mundo, com apresentação de William Bonner e Renata Vasconcellos.'
  },
  {
    'name': 'É DE CASA',
    'img_url':
        'https://upload.wikimedia.org/wikipedia/pt/1/19/%C3%89_de_Casa.png'
  },
  {
    'name': 'DOMINGÃO DO FAUSTÃO',
    'img_url':
        'https://upload.wikimedia.org/wikipedia/pt/6/61/Doming%C3%A3o_do_Faust%C3%A3o.jpg'
  },
  {
    'name': 'AVENIDA BRASIL',
    'img_url':
        'https://uploads.metropoles.com/wp-content/uploads/2019/12/16143052/avenida-brasil4.jpg'
  },
  {
    'name': 'BBB',
    'img_url':
        'https://emtempo.com.br/img/inline/180000/big-brother_00182367_0_201912171300.jpg'
  },
  {
    'name': 'ESPORTE ESPETACULAR',
    'img_url':
        'https://i0.wp.com/oportaln10.com.br/entretenimento/wp-content/uploads/2017/01/esporte-espetacular.jpg?resize=800%2C375&ssl=1'
  }
];

class CommunityDashboard extends StatelessWidget {
  static final String routeId = '/community';

  @override
  Widget build(BuildContext context) {
    Map<String, dynamic> themeColors = CurrentTheme().getThemeColors();
    MediaQueryData mediaQuery = MediaQuery.of(context);
    return GenericNavbar(
      leftNavbarIcon: FontAwesomeIcons.angleLeft,
      leftIconCallback: () {
        Navigator.pop(context);
      },
      rightNavbarIcon: FontAwesomeIcons.userAlt,
      child: Column(
        children: <Widget>[
          Container(
            height: mediaQuery.size.height * 0.25,
            width: mediaQuery.size.width,
            color: themeColors['optional-header'],
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        height: 80,
                        width: 80,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: NetworkImage(programs[0]['img_url']),
                                fit: BoxFit.cover),
                            borderRadius: BorderRadius.circular(20)),
                      ),
                      Container(
                        width: 200,
                        padding: EdgeInsets.only(left: 8.0),
                        child: RichText(
                            textAlign: TextAlign.justify,
                            text: TextSpan(children: <InlineSpan>[
                              WidgetSpan(
                                  child: Icon(
                                Icons.brightness_1,
                                color: Colors.redAccent,
                                size: 15,
                              )),
                              WidgetSpan(
                                  child: SizedBox(
                                width: 5,
                              )),
                              TextSpan(text: programs[0]['name']),
                              TextSpan(
                                  text: '\n${programs[0]['description']}',
                                  style: TextStyle(fontSize: 10)),
                            ])),
                      ),
                    ],
                  ),
                  StandardButton(
                    height: 40,
                    width: 200,
                    text: 'PARTICIPAR NO CHAT',
                    onPressed: () {
                      Navigator.pushNamed(context, Chat.routeId);
                    },
                  )
                ],
              ),
            ),
          ),
          Expanded(
            child: Container(
              height: 350,
              width: 400,
              child: ListView.builder(
                itemCount: programs.length,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    height: mediaQuery.size.height * 0.17,
                    width: mediaQuery.size.width,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: <Color>[
                          themeColors['background']['top'],
                          themeColors['background']['bot']
                        ],
                      ),
                    ),
                    child: Stack(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(top: 4.0),
                          child: Text(
                            'ENTRETENIMENTO',
                            style: TextStyle(
                                letterSpacing: 3,
                                color: Colors.white,
                                fontFamily: 'Roboto',
                                fontSize: 15),
                          ),
                        ),
                        ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: programs.length,
                            itemBuilder: (context, index) {
                              return Container(
                                margin: EdgeInsets.only(
                                    top: 30, bottom: 5, left: 20),
                                width: 60,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: NetworkImage(
                                        programs[index]['img_url']),
                                  ),
                                ),
                              );
                            }),
                      ],
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
