
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'CustomDrawer.dart';

class TravelPrayer extends StatelessWidget {
  TravelPrayer();

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
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "יְהִי רָצוֹן מִלְפָנֶיךָ יי אֱלֹהֵינוּ וֵאלֹהֵי אֲבוֹתֵינוּ, שֶׁתּוֹלִיכֵנוּ לְשָׁלוֹם, וְתַצְעִידֵנוּ לְשָׁלוֹם, וְתִסְמְכֵנוּ לְשָׁלוֹם. וְתַצִּילֵנוּ מִכַּף כָּל אוֹיֵב וְאוֹרֵב בַּדֶּרֶךְ, וְתִתְּנֵנוּ לְחֵן לְחֶסֶד וּלְרַחֲמִים בְּעֵינֶיךָ וּבְעֵינֵי כָל רֹאֵינוּ. כִּי אַתָּה שׁוֹמֵעַ תְּפִלָּת עַמְּךָ יִשְׁרָאֵל בְּרַחֲמִים. בָּרוּךְ אַתָּה יי, שׁוֹמֵעַ תְּפִלָּה:",
                  textAlign: TextAlign.justify,
                  textDirection: TextDirection.rtl,
                  style: GoogleFonts.suezOne(fontSize: 24),
                ),
              ),
            ],
          )),
    );
  }
}
