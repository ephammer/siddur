import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
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

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<ThemeChanger>(
      create: (_) => ThemeChanger(false),
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

    AppBar appBar = AppBar(
      leading: Builder(
        builder: (context) {
          return IconButton(
            icon: Icon(Icons.menu),
            onPressed: () => CustomDrawer.of(context).open(),
          );
        },
      ),
      title: Text('Siddur Home Page'),
    );
    Widget child = mainScreen.getPage();
    child = CustomDrawer(child: child);
    return new MaterialApp(
      theme: theme.getTheme(),
      title: 'Siddur',
      home: child,
    );
  }
}

class MyHomePage extends StatefulWidget {
  final AppBar appBar;

  MyHomePage({Key key, @required this.appBar}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    // Checks if layout is desktop
    final bool isDesktop = isDisplayDesktop(context);

    return Scaffold(
      appBar: widget.appBar,
      body: Center(
          child: ListView(
        children: [],
      )),
    );
  }
}