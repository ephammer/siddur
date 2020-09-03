import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:siddur/blocs/page_changer.dart';
import 'package:siddur/pages/CustomDrawer.dart';
import 'package:siddur/pages/bedtime_shema_page.dart';
import 'package:siddur/tools/adaptive.dart';

import 'blocs/theme.dart';

void main() {
  runApp(
    MyApp(),
  );
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => new _MyAppState();
}
class _MyAppState extends State<MyApp>{
  bool _isDark;



  @override
  void initState()  {
    super.initState();
    SharedPreferences.getInstance().then((SharedPreferences sp) {
      bool boolValue = sp.getBool('isThemeBrightnessDark')??true;
      setState(() {
        _isDark =   boolValue;

      });
    });

  }
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return(_isDark==null)?Container(): ChangeNotifierProvider<ThemeChanger>(
      create: (_) => ThemeChanger(_isDark),
      child: ChangeNotifierProvider<PageChanger>(
          create: (_) => PageChanger(),
          child: new _MaterialApp()),
    );
  }
}

class _MaterialApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final theme = Provider.of<ThemeChanger>(context);
    final mainScreen = Provider.of<PageChanger>(context);
    Widget child = mainScreen.getPage();
    child = CustomDrawer(child: child);
    return new MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: theme.getTheme(),
      title: 'Siddur',
      home: child,
    );
  }
}
