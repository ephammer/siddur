import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:siddur/tools/util/geo_Location.dart';
import 'package:siddur/tools/util/zmanim_calculator.dart';
import 'package:siddur/tools/zmanim_calendar.dart';

import 'CustomDrawer.dart';

class ZmanimPage extends StatefulWidget{
  @override
  ZmanimPageState createState() => ZmanimPageState();

}

class ZmanimPageState extends State<ZmanimPage>{
  String _result = "Unknown";

  getLocation()async{
    Position position = await Geolocator().getLastKnownPosition(desiredAccuracy: LocationAccuracy.low);
    print(position);
    GeoLocation geoLocation = GeoLocation.setLocation("",
        position.latitude,
        position.longitude, DateTime.now());
//    geoLocation.elevation = position.altitude;
    print(geoLocation);
    ZmanimCalendar zmanimCalendar = ZmanimCalendar.intGeolocation(geoLocation);
    print(zmanimCalendar);
    setState(() {
      _result =zmanimCalendar.getChatzos().toString();
    });
  }

  @override
  void initState() {
    super.initState();
    getLocation();
  }

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
        title: Text('Travel Prayer'),
      ),
      body: Center(
          child: ListView(
            children: [
              Text(_result)
            ],
          )),
    );
  }

}