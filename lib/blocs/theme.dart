import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ThemeChanger with ChangeNotifier {
  static final _textThemeDark = GoogleFonts.merriweatherTextTheme()
      .apply(bodyColor: Colors.white70, displayColor: Colors.white30);
  static final _textThemeLight = GoogleFonts.merriweatherTextTheme()
      .apply(bodyColor: Colors.black, displayColor: Colors.black45,decorationColor: Colors.black,);

  final darkTheme = ThemeData(
    primarySwatch: Colors.grey,
    primaryColor: Colors.black,
    brightness: Brightness.dark,
    backgroundColor: Color(0xFF000000),
    accentColor: Colors.white,
    accentIconTheme: IconThemeData(color: Colors.black),
    dividerColor: Colors.black54,
    textTheme: _textThemeDark,
  );
  final lightTheme = ThemeData(
    primarySwatch: Colors.grey,
    primaryColor: Colors.white,
    brightness: Brightness.light,
    backgroundColor: Color(0xFFFFFFFF),
    accentColor: Colors.black,
    accentIconTheme: IconThemeData(color: Colors.white),
    dividerColor: Colors.white54,
    textTheme: _textThemeLight,
    textSelectionColor: Colors.black45,
      selectedRowColor: Colors.black45,
    textSelectionHandleColor: Colors.black45,

  );

  bool _isDarkTheme = true;

  ThemeChanger(this._isDarkTheme);

  getTheme() => _isDarkTheme ? darkTheme : lightTheme;

  isDark() => _isDarkTheme;

  switchThem() {
    _isDarkTheme = !_isDarkTheme;
    notifyListeners();
  }
}
