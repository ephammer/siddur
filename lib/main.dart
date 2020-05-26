import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:siddur/pages/CustomDrawer.dart';
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
      child: new _MaterialApp(),
    );
  }
}

class _MaterialApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final theme = Provider.of<ThemeChanger>(context);

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
    Widget child = MyHomePage(appBar: appBar);
    child = CustomDrawer(child: child);
    return new MaterialApp(
      title: 'Siddur',
      theme: theme.getTheme(),

//        ThemeData(
////        primarySwatch: Colors.indigo,
//            primaryColor: Color(0xffffffff),
//            primaryColorBrightness: Brightness.light,
//            primaryColorDark: Color(0xffcccccc),
//            accentColor: Color(0xff9b0000),
//            brightness: Brightness.light,
//            textTheme: GoogleFonts.ralewayTextTheme(),
//            primaryTextTheme: GoogleFonts.ralewayTextTheme(),
//            colorScheme: ColorScheme(
//                primary: Color(0xffffffff),
//                primaryVariant: Color(0xffcccccc),
//                secondary: Color(0xffd50000),
//                secondaryVariant: Color(0xff9b0000),
//                surface: Color(0xffffffff),
//                background: Color(0xffffffff),
//                error: Color(0xffd50000),
//                onPrimary: Color(0xff000000),
//                onSecondary: Color(0xffffffff),
//                onSurface: Color(0xff000000),
//                onBackground: Color(0xff000000),
//                onError: Color(0xffd50000),
//                brightness: Brightness.light)),
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
