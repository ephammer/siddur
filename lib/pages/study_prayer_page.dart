import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'CustomDrawer.dart';

class StudyPrayerPage extends StatelessWidget {
  StudyPrayerPage();

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
        title: Text('Study Prayer'),
      ),
      body: Center(
          child: ListView(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "יְהִי רָצוֹן מִלְפָנֶיךָ ה\' אֱלֹהַי וֵאלֹהֵי אֲבוֹתַי, שֶלֹּא יֶאֱרַע דְבַר תַּקָלָה עַל יָדִי, וְלֹא אֹמַר עַל טָמֵא טָהוֹר וְלֹא עַל טָהוֹר טָמֵא, וְלֹא אֶכָשֵל בִּדְבַר הֲלָכָה וְיִשְֹמְחוּ בִי חֲבֵרַי, וְלֹא יִכָּשְלוּ חֲבֵרַי בִּדְבַר הֲלָכָה וְאֶשְֹמַח בָּהֶם.",
                  textAlign: TextAlign.justify,
                  textDirection: TextDirection.rtl,
                  style: GoogleFonts.suezOne(fontSize: 24),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "מוֹדֶה אֲנִי מִלְפָנֶיךָ ה\' אֱלֹהַי וֵאלֹהֵי אֲבוֹתַי שֶׁשַֹמְתָּ חֶלְקִי מִיּוֹשְבֵי בֵית הַמִּדְרָשׁ וְלֹא שַּמתָּ חֶלְקִי מִיּוֹשְבֵי קְרָנוֹת. שֶׁאֲנִי מַשְׁכִּים והם מַשְׁכִּימִים, אֲנִי מַשְׁכִּים לְדִבְרֵי תוֹרָה וְהֵם מַשְׁכִּימִים לִדבָרִים בְּטֵלִים. אֲנִי עָמֵל וְהֵם עֲמֵלִים, אֲנִי עָמֵל וּמְקַבֵּל שָֹכָר וְהֵם עֲמֵלִים וְאֵינָם מְקַבְּלִים שָֹכָר, אֲנִי רָץ וְהֵם רָצִים, אֲנִי רָץ לְחַיֵּי הָעוֹלָם הַבָּא וְהֵם רָצִים לִבְאֵר שָׁחַת.",
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
