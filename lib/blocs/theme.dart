
import 'package:flutter/material.dart';

class ThemeChanger with ChangeNotifier {
  final darkTheme = ThemeData(
    primarySwatch: Colors.grey,
    primaryColor: Colors.black,
    brightness: Brightness.dark,
    backgroundColor: Color(0xFF000000),
    accentColor: Colors.white,
    accentIconTheme: IconThemeData(color: Colors.black),
    dividerColor: Colors.black54,
  );

  final lightTheme = ThemeData(
    primarySwatch: Colors.grey,
    primaryColor: Colors.white,
    brightness: Brightness.light,
    backgroundColor: Color(0xFFE5E5E5),
    accentColor: Colors.black,
    accentIconTheme: IconThemeData(color: Colors.white),
    dividerColor: Colors.white54,
  );

  bool _isDarkTheme = true;

  ThemeChanger(this._isDarkTheme);

  getTheme() => _isDarkTheme?darkTheme:lightTheme;
  switchThem() {
    _isDarkTheme = !_isDarkTheme;
    notifyListeners();
  }
}