import 'package:flutter/material.dart';
import 'package:globo_now/screens/chat.dart';
import 'package:globo_now/screens/community_dashboard.dart';
import 'package:globo_now/screens/community_first_visit.dart';
import 'package:globo_now/screens/flashes.dart';
import 'package:globo_now/screens/flashs_first_visit.dart';
import 'package:globo_now/screens/home.dart';
import 'package:globo_now/screens/schedule.dart';
import 'package:globo_now/screens/splash.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Globo Now',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: Flashes.routeId,
      routes: {
        Home.routeId: (context) => Home(),
        Splash.routeId: (context) => Splash(),
        Schedule.routeId: (context) => Schedule(),
        FlashsFirstVisit.routeId: (context) => FlashsFirstVisit(),
        CommunityFirstVisit.routeId: (context) => CommunityFirstVisit(),
        CommunityDashboard.routeId: (context) => CommunityDashboard(),
        Chat.routeId: (context) => Chat(),
        Flashes.routeId: (context) => Flashes(),
      },
    );
  }
}
