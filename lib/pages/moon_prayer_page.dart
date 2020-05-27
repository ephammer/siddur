import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'CustomDrawer.dart';

class MoonPrayerPage extends StatelessWidget {
  MoonPrayerPage();

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
        title: Text('Moon Prayer',style: GoogleFonts.merriweather(),),
      ),
      body: Center(
          child: ListView(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "בָּרוּךְ אַתָּה יְיָ, אֱלהֵינוּ מֶלֶךְ הָעולָם. אֲשֶׁר בְּמַאֲמָרו בָּרָא שְׁחָקִים. וּבְרוּחַ פִּיו כָּל צְבָאָם. חֹק וּזְמַן נָתַן לָהֶם שֶׁלּא יְשַׁנּוּ אֶת תַּפְקִידָם. שָׂשִׂים וּשְׂמֵחִים לַעֲשות רְצוֹן קוֹנָם, פּועֵל אֱמֶת שֶׁפְּעֻלָּתוֹ אֱמֶת. וְלַלְּבָנָה אָמַר שֶׁתִּתְחַדֵּשׁ, עֲטֶרֶת תִּפְאֶרֶת לַעֲמוּסֵי בָטֶן, שֶׁהֵם עֲתִידִים לְהִתְחַדֵּשׁ כְּמותָהּ וּלְפָאֵר לְיוצְרָם עַל שֵׁם כְּבוֹד מַלְכוּתוֹ: בָּרוּךְ אַתָּה יְיָ \' מְחַדֵּשׁ חֳדָשִׁים:",
                  textAlign: TextAlign.justify,
                  textDirection: TextDirection.rtl,
                  style: GoogleFonts.suezOne(fontSize: 24),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "בָּרוּךְ יוצְרֵךְ, בָּרוּךְ עושֵֹךְ, בָּרוּךְ קוֹנֵךְ, בָּרוּךְ בּוֹרְאֵךְ.",
                  textAlign: TextAlign.justify,
                  textDirection: TextDirection.rtl,
                  style: GoogleFonts.suezOne(fontSize: 24),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "כְּשֵׁם שֶׁאֲנִי רוֹקֵד כְּנֶגְדֵּךְ וְאֵינִי יָכוֹל לִגַּע בָּךְ, כַּךְ לֹא יוּכְלוּ כָּל לֹא יוּכְלוּ כָּל אוֹיְבַי לִגַע בִּי לְרָעָה.",
                  textAlign: TextAlign.justify,
                  textDirection: TextDirection.rtl,
                  style: GoogleFonts.suezOne(fontSize: 24),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "",
                  textAlign: TextAlign.justify,
                  textDirection: TextDirection.rtl,
                  style: GoogleFonts.suezOne(fontSize: 24),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "תִּפּל עֲלֵיהֶם אֵימָתָה וָפַחַד, בִּגְדֹל זְרוֹעֲךָ יִדְּמוּ כָּאָבֶן: כָּאָבֶן יִדְּמוּ זְרוֹעֲךָ בִּגְדֹל וָפַחַד אֵימָתָה עֲלֵיהֶם תִּפּל.",
                  textAlign: TextAlign.justify,
                  textDirection: TextDirection.rtl,
                  style: GoogleFonts.suezOne(fontSize: 24),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "דָּוִד מֶלֶךְ יִשרָאֵל חַי וְקַיָּם.",
                  textAlign: TextAlign.center,
                  textDirection: TextDirection.rtl,
                  style: GoogleFonts.suezOne(fontSize: 24),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "שָׁלוֹם עֲלֵיכֶם.\nעֲלֵיכֶם שָׁלוֹם.",
                  textAlign: TextAlign.center,
                  textDirection: TextDirection.rtl,
                  style: GoogleFonts.suezOne(fontSize: 24),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "סִימָן טוֹב וּמַזָל טוֹב יְהֵא לָנוּ וּלְכָל יִשְׂרָאֵל. אָמֵן.",
                  textAlign: TextAlign.center,
                  textDirection: TextDirection.rtl,
                  style: GoogleFonts.suezOne(fontSize: 24),
                ),
              ),

            ],
          )),
    );
  }
}
