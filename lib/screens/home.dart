import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:globo_now/components/generic_navbar_page.dart';
import 'package:globo_now/components/generic_card.dart';
import 'package:globo_now/screens/community_dashboard.dart';
import 'package:globo_now/screens/flashes.dart';
import 'package:globo_now/screens/schedule.dart';
import 'package:globo_now/screens/splash.dart';

class Home extends StatelessWidget {
  static final String routeId = '/';

  @override
  Widget build(BuildContext context) {
    MediaQueryData mediaQuery = MediaQuery.of(context);
    return GenericNavbar(
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            GenericCard(
              onPressed: () {
                Navigator.pushNamed(context, Flashes.routeId);
              },
              height: 280,
              width: 350,
              isLive: true,
              bigText: 'AGORA',
              smallText: 'FUTEBOL',
              imageURI: 'https://s03.video.glbimg.com/x720/6956542.jpg',
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Container(
                    child: GenericCard(
                      onPressed: () {
                        Navigator.pushNamed(context, Schedule.routeId);
                      },
                      height: 170,
                      width: 160,
                      smallText: 'Programação',
                      imageURI:
                          'https://cache.olhardigital.com.br/uploads/acervo_imagens/2019/03/r16x9/20190322051919_1200_675.jpg',
                    ),
                  ),
                  Container(
                    child: GenericCard(
                      onPressed: () {
                        Navigator.pushNamed(
                            context, CommunityDashboard.routeId);
                      },
                      height: 170,
                      width: 160,
                      smallText: 'Comunidade',
                      imageURI:
                          'https://58e68bf56934d95555dd054c.static-01.com/l/images/48e4e0fedff7f715db46ef94e2c4f46895f6041b.png',
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
