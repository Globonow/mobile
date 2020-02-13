import 'package:flutter/material.dart';
import 'package:globo_now/components/navbar.dart';

import 'background_container.dart';

class GenericNavbar extends StatelessWidget {
  final Widget child;
  final IconData leftNavbarIcon;
  final IconData rightNavbarIcon;
  final Function leftIconCallback;
  final Function rightIconCallback;
  final bool isMenuIcon;
  final Widget drawer;
  static BuildContext _scaffoldContext;

  GenericNavbar(
      {this.child,
      this.leftNavbarIcon,
      this.rightNavbarIcon,
      this.drawer,
      this.rightIconCallback,
      this.leftIconCallback,
      this.isMenuIcon = false});

  @override
  Widget build(BuildContext context) {
    MediaQueryData mediaQuery = MediaQuery.of(context);
    _scaffoldContext = context;
    return Scaffold(
      drawer: this.drawer,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(mediaQuery.size.height),
        child: Navbar(
          leftIcon: this.leftNavbarIcon,
          rightIcon: this.rightNavbarIcon,
          leftIconCallback: this.leftIconCallback,
          rightIconCallback: this.rightIconCallback,
        ),
      ),
      body: BackgroundContainer(
        child: this.child,
      ),
    );
  }

  static BuildContext getScaffoldContext() {
    return _scaffoldContext;
  }
}
