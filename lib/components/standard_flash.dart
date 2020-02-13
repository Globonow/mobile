import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';

class StandardFlash extends StatefulWidget {
  StandardFlash();

  @override
  _StandardFlashState createState() => _StandardFlashState();
}

class _StandardFlashState extends State<StandardFlash> {
  @override
  Widget build(BuildContext context) {
    MediaQueryData mediaQuery = MediaQuery.of(context);
    return Card(
      elevation: 12,
      color: Colors.red,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: Container(
        width: 240,
        height: 300,
      ),
    );
  }
}
