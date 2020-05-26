import 'package:flutter/material.dart';
import 'package:siddur/pages/CustomDrawer.dart';
import 'package:siddur/tools/adaptive.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
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

    return MaterialApp(
      title: 'Siddur',
      theme: ThemeData(
        primarySwatch: Colors.indigo,
      ),
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
        )
      ),
    );
  }
}
