import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

import 'CustomDrawer.dart';

class AboutPage extends StatelessWidget {
  AboutPage();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      appBar: AppBar(
        leading: Builder(
          builder: (context) {
            return IconButton(
              icon: Icon(Icons.menu),
              onPressed: () => CustomDrawer.of(context).open(),
            );
          },
        ),
        title: Text(
          'About',
          style: GoogleFonts.merriweather(),
        ),
      ),
      body: ListView(
        children: [
          Align(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ClipOval(
                  child: Image.asset(
                "assets/profilpic.png",
                width: 100,
                height: 100,
                fit: BoxFit.fill,
              )),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(8),
            child: Card(
              elevation: 80,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: Text(
                        "Hi,",
                        textAlign: TextAlign.center,
                        style: GoogleFonts.pacifico(fontSize: 24),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: Text(
                        "My name is Ephraim Hammer, I am the developer of this app.",
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 18),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "If you have any feedback don't hesitate to get in contact.",
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 18),
                      ),
                    ),
                    RaisedButton(
                      color: Colors.blue,
                      key: key,
                      onPressed: () {
                        _launchURL();
                      },
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          mainAxisSize: MainAxisSize.min,
                          children: [
//                          Icon(Icons.int),
                            Text("ephrai.me",style: TextStyle(color: Colors.white),),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  _launchURL() async {
    print("plouf");
    const url = 'https://ephrai.me';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
}
