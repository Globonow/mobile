import 'package:flutter/material.dart';

enum Theme { Dark, Light }

class CurrentTheme {
  Theme _currentTheme = Theme.Dark;

  // ignore: non_constant_identifier_names
  final _DarkThemeColors = {
    'primary': Color(0xff00ff80),
    'background': {'top': Color(0xff494949), 'bot': Color(0xff1e1e1e)},
    'header': Color(0xff222222),
    'optional-header': Color(0xff606060),
    'banner-bottom': Color(0xff111111),
    'text': Color(0xffefefef),
    'icons': Color(0xffefefef),
  };

  // ignore: non_constant_identifier_names
  final _LightThemeColors = {};

  Map<String, dynamic> getThemeColors() {
    return this._currentTheme == Theme.Dark
        ? this._DarkThemeColors
        : this._LightThemeColors;
  }

  Theme getCurrentTheme() {
    return this._currentTheme;
  }

  void setCurrentTheme(Theme theme) {
    this._currentTheme = theme;
  }
}
