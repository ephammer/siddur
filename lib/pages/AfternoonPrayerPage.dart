import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';
import 'package:siddur/tools/hebrewcalendar/jewish_calendar.dart';
import 'package:siddur/ui-elements/song_of_the_day_widget.dart';

import 'CustomDrawer.dart';

class AfternoonPrayerPage extends StatefulWidget {
  @override
  _AfternoonPrayerPageState createState() => _AfternoonPrayerPageState();
}

class _AfternoonPrayerPageState extends State<AfternoonPrayerPage> {
  ItemScrollController itemScrollController;
  final ItemPositionsListener itemPositionsListener =
  ItemPositionsListener.create();

  // TODO: Implement pinch to zoom
  double _scaleFactor = 1.0;
  double _baseScaleFactor = 1.0;

  final TODAY = DateTime.now();
  final JEWISH_DATE_TODAY = JewishCalendar.fromDateTime(DateTime.now());
  final IS_TAANITH = JewishCalendar.fromDateTime(DateTime.now()).isTaanis();
  final IS_TEN_DAYS = JewishCalendar.fromDateTime(DateTime.now()).isTenDays();
  final IS_TACHANUN = JewishCalendar.fromDateTime(DateTime.now()).isTachanunMinche();


  List<Widget> morningPrayers = [
    // Ashrei
    Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
          "אַשְׁרֵי יושְׁבֵי בֵיתֶךָ. עוד יְהַלְלוּךָ סֶּלָה: אַשְׁרֵי הָעָם שֶׁכָּכָה לּו. אַשְׁרֵי הָעָם שֶׁה' אֱלהָיו: תְּהִלָּה לְדָוִד. אֲרומִמְךָ אֱלוהַי הַמֶּלֶךְ. וַאֲבָרְכָה שִׁמְךָ לְעולָם וָעֶד: בְּכָל יום אֲבָרְכֶךָּ. וַאֲהַלְלָה שִׁמְךָ לְעולָם וָעֶד: גָּדול ה' וּמְהֻלָּל מְאד. וְלִגְדֻלָּתו אֵין חֵקֶר: דּור לְדור יְשַׁבַּח מַעֲשיךָ. וּגְבוּרתֶיךָ יַגִּידוּ: הֲדַר כְּבוד הודֶךָ. וְדִבְרֵי נִפְלְאתֶיךָ אָשיחָה: וֶעֱזוּז נורְאתֶיךָ יאמֵרוּ. וּגְדֻלָּתְךָ אֲסַפְּרֶנָּה: זֵכֶר רַב טוּבְךָ יַבִּיעוּ. וְצִדְקָתְךָ יְרַנֵּנוּ: חַנּוּן וְרַחוּם ה'. אֶרֶךְ אַפַּיִם וּגְדָל חָסֶד: טוב ה' לַכּל. וְרַחֲמָיו עַל כָּל מַעֲשיו: יודוּךָ ה' כָּל מַעֲשיךָ. וַחֲסִידֶיךָ יְבָרְכוּכָה: כְּבוד מַלְכוּתְךָ יאמֵרוּ. וּגְבוּרָתְךָ יְדַבֵּרוּ: לְהודִיעַ לִבְנֵי הָאָדָם גְּבוּרתָיו. וּכְבוד הֲדַר מַלְכוּתו: מַלְכוּתְךָ מַלְכוּת כָּל עולָמִים. וּמֶמְשַׁלְתְּךָ בְּכָל דּור וָדר: סומֵךְ ה' לְכָל הַנּפְלִים. וְזוקֵף לְכָל הַכְּפוּפִים: עֵינֵי כל אֵלֶיךָ יְשבֵּרוּ. וְאַתָּה נותֵן לָהֶם אֶת אָכְלָם בְּעִתּו: פּותֵחַ אֶת יָדֶךָ. וּמַשבִּיעַ לְכָל חַי רָצון: צַדִּיק ה' בְּכָל דְּרָכָיו. וְחָסִיד בְּכָל מַעֲשיו קָרוב ה' לְכָל קרְאָיו. לְכל אֲשֶׁר יִקְרָאֻהוּ בֶאֱמֶת: רְצון יְרֵאָיו יַעֲשה. וְאֶת שַׁוְעָתָם יִשְׁמַע וְיושִׁיעֵם: שׁומֵר ה' אֶת כָּל אהֲבָיו. וְאֵת כָּל הָרְשָׁעִים יַשְׁמִיד: תְּהִלַּת ה' יְדַבֶּר פִּי. וִיבָרֵךְ כָּל בָּשר שֵׁם קָדְשׁו לְעולָם וָעֶד: וַאֲנַחְנוּ נְבָרֵךְ יָהּ מֵעַתָּה וְעַד עולָם. הַלְלוּיָהּ:",
          textAlign: TextAlign.justify,
          textDirection: TextDirection.rtl,
          style: GoogleFonts.suezOne(fontSize: 24),
        )),    // Seder HaKorbanoth
    // Shmonei Esrei
    Column(
      children: [
        Padding(padding: const EdgeInsets.all(16.0), child: Container()),
        Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "אֲדנָי שפָתַי תִּפְתָּח וּפִי יַגִּיד תְּהִלָּתֶךָ:",
              textAlign: TextAlign.center,
              textDirection: TextDirection.rtl,
              style: GoogleFonts.suezOne(fontSize: 24),
            )),
        Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "בָּרוּךְ אַתָּה ה' אֱלהֵינוּ וֵאלהֵי אֲבותֵינוּ. אֱלהֵי אַבְרָהָם. אֱלהֵי יִצְחָק. וֵאלהֵי יַעֲקב. הָאֵל הַגָּדול הַגִּבּור וְהַנּורָא אֵל עֶלְיון. גּומֵל חֲסָדִים טובִים. וְקונֵה הַכּל. וְזוכֵר חַסְדֵּי אָבות. וּמֵבִיא גואֵל לִבְנֵי בְנֵיהֶם לְמַעַן שְׁמו בְּאַהֲבָה.",
              textAlign: TextAlign.justify,
              textDirection: TextDirection.rtl,
              style: GoogleFonts.suezOne(fontSize: 24),
            )),
        Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "מֶלֶךְ עוזֵר וּמושִׁיעַ וּמָגֵן: בָּרוּךְ אַתָּה ה', מָגֵן אַבְרָהָם:",
              textAlign: TextAlign.justify,
              textDirection: TextDirection.rtl,
              style: GoogleFonts.suezOne(fontSize: 24),
            )),
        Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "אַתָּה גִּבּור לְעולָם אֲדנָי. מְחַיֵּה מֵתִים אַתָּה רַב לְהושִׁיעַ:",
              textAlign: TextAlign.justify,
              textDirection: TextDirection.rtl,
              style: GoogleFonts.suezOne(fontSize: 24),
            )),
        JewishCalendar.fromDateTime(DateTime.now()).isWinter()
            ? Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "מַשִּׁיב הָרוּחַ וּמורִיד הַגֶּשֶׁׁם,",
              textAlign: TextAlign.justify,
              textDirection: TextDirection.rtl,
              style: GoogleFonts.suezOne(fontSize: 24),
            ))
            : Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "מַשִּׁיב הָרוּחַ וּמורִיד הַטַּל,",
              textAlign: TextAlign.justify,
              textDirection: TextDirection.rtl,
              style: GoogleFonts.suezOne(fontSize: 24),
            )),
        Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "מְכַלְכֵּל חַיִּים בְּחֶסֶד. מְחַיֶּה מֵתִים בְּרַחֲמִים רַבִּים. סומֵךְ נופְלִים. וְרופֵא חולִים וּמַתִּיר אֲסוּרִים. וּמְקַיֵּם אֱמוּנָתו לִישֵׁנֵי עָפָר. מִי כָמוךָ בַּעַל גְּבוּרות וּמִי דומֶה לָּךְ. מֶלֶךְ מֵמִית וּמְחַיֶּה וּמַצְמִיחַ יְשׁוּעָה.",
              textAlign: TextAlign.justify,
              textDirection: TextDirection.rtl,
              style: GoogleFonts.suezOne(fontSize: 24),
            )),
        Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "וְנֶאֱמָן אַתָּה לְהַחֲיות מֵתִים: בָּרוּךְ אַתָּה ה', מְחַיֵּה הַמֵּתִים.",
              textAlign: TextAlign.justify,
              textDirection: TextDirection.rtl,
              style: GoogleFonts.suezOne(fontSize: 24),
            )),
        Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: ExpansionTile(
                  title: Center(
                      child: Text(
                        "Keddusha",
                      )),
                  children: [
                    Text(
                      "בחזרת הש”ץ:\nנְקַדֵּשׁ אֶת שִׁמְךָ בָּעולָם. כְּשֵׁם שֶׁמַּקְדִּישִׁים אותו בִּשְׁמֵי מָרום. כַּכָּתוּב עַל יַד נְבִיאֶךָ: וְקָרָא זֶה אֶל זֶה וְאָמַר:\nקו”ח: קָדושׁ. קָדושׁ. קָדושׁ ה' צְבָאות. מְלא כָל הָאָרֶץ כְּבודו:\nחזן: לְעֻמָתָם בָּרוּךְ יאמֵרוּ:\nקו”ח: בָּרוּךְ כְּבוד ה' מִמְּקומו:\nחזן: וּבְדִבְרֵי קָדְשְׁךָ כָּתוּב לֵאמר:",
                      textAlign: TextAlign.justify,
                      textDirection: TextDirection.rtl,
                      style: GoogleFonts.suezOne(fontSize: 24),
                    ),
                    JewishCalendar.fromDateTime(DateTime.now()).isTenDays()
                        ? Text(
                      "לחזן: לְדור וָדור נַגִּיד גָּדְלֶךָ וּלְנֵצַח נְצָחִים קְדֻשָּׁתְךָ נַקְדִּישׁ. וְשִׁבְחֲךָ אֱלהֵינוּ מִפִּינוּ לא יָמוּשׁ לְעולָם וָעֶד. כִּי אֵל מֶלֶךְ גָּדול וְקָדושׁ אָתָּה: בָּרוּךְ אַתָּה ה' הַמֶּלֶךְ הַקָּדושׁ.",
                      textAlign: TextAlign.justify,
                      textDirection: TextDirection.rtl,
                      style: GoogleFonts.suezOne(fontSize: 24),
                    )
                        : Text(
                      "לחזן: לְדור וָדור נַגִּיד גָּדְלֶךָ וּלְנֵצַח נְצָחִים קְדֻשָּׁתְךָ נַקְדִּישׁ. וְשִׁבְחֲךָ אֱלהֵינוּ מִפִּינוּ לא יָמוּשׁ לְעולָם וָעֶד. כִּי אֵל מֶלֶךְ גָּדול וְקָדושׁ אָתָּה: בָּרוּךְ אַתָּה ה' הָאֵל הַקָּדושׁ.",
                      textAlign: TextAlign.justify,
                      textDirection: TextDirection.rtl,
                      style: GoogleFonts.suezOne(fontSize: 24),
                    )
                  ],
                ),
              ),
            )),
        JewishCalendar.fromDateTime(DateTime.now()).isTenDays()
            ? Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "אַתָּה קָדושׁ וְשִׁמְךָ קָדושׁ וּקְדושִׁים בְּכָל יום יְהַלְּלוּךָ סֶּלָה: בָּרוּךְ אַתָּה ה', הַמֶּלֶךְ הַקָּדושׁ",
              textAlign: TextAlign.justify,
              textDirection: TextDirection.rtl,
              style: GoogleFonts.suezOne(fontSize: 24),
            ))
            : Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "אַתָּה קָדושׁ וְשִׁמְךָ קָדושׁ וּקְדושִׁים בְּכָל יום יְהַלְּלוּךָ סֶּלָה: בָּרוּךְ אַתָּה ה', הָאֵל הַקָּדושׁ",
              textAlign: TextAlign.justify,
              textDirection: TextDirection.rtl,
              style: GoogleFonts.suezOne(fontSize: 24),
            )),
        Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "אַתָּה חונֵן לְאָדָם דַּעַת. וּמְלַמֵּד לֶאֱנושׁ בִּינָה: חָנֵּנוּ מֵאִתְּךָ דֵעָה בִּינָה וְהַשכֵּל. בָּרוּךְ אַתָּה ה', חונֵן הַדָּעַת:",
              textAlign: TextAlign.justify,
              textDirection: TextDirection.rtl,
              style: GoogleFonts.suezOne(fontSize: 24),
            )),
        Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "הֲשִׁיבֵנוּ אָבִינוּ לְתורָתֶךָ, וְקָרְבֵנוּ מַלְכֵּנוּ לַעֲבודָתֶךָ, וְהַחֲזִירֵנוּ בִּתְשׁוּבָה שְׁלֵמָה לְפָנֶיךָ. בָּרוּךְ אַתָּה ה', הָרוצֶה בִּתְשׁוּבָה:",
              textAlign: TextAlign.justify,
              textDirection: TextDirection.rtl,
              style: GoogleFonts.suezOne(fontSize: 24),
            )),
        Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "סְלַח לָנוּ אָבִינוּ כִּי חָטָאנוּ. מְחַל לָנוּ מַלְכֵּנוּ כִּי פָשָׁעְנוּ. כִּי מוחֵל וְסולֵחַ אַתָּה. בָּרוּךְ אַתָּה ה', חַנּוּן הַמַּרְבֶּה לִסְלחַ:",
              textAlign: TextAlign.justify,
              textDirection: TextDirection.rtl,
              style: GoogleFonts.suezOne(fontSize: 24),
            )),
        Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "רְאֵה נָא בְעָנְיֵנוּ, וְרִיבָה רִיבֵנוּ, וּגְאָלֵנוּ מְהֵרָה לְמַעַן שְׁמֶךָ, כִּי גּואֵל חָזָק אַתָּה. בָּרוּךְ אַתָּה ה', גּואֵל יִשרָאֵל:",
              textAlign: TextAlign.justify,
              textDirection: TextDirection.rtl,
              style: GoogleFonts.suezOne(fontSize: 24),
            )),
        Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "רְפָאֵנוּ ה' וְנֵרָפֵא, הושִׁיעֵנוּ וְנִוָּשֵׁעָה, כִּי תְהִלָּתֵנוּ אָתָּה. וְהַעֲלֵה רְפוּאָה שְׁלֵמָה לְכָל מַכּותֵינוּ, כִּי אֵל מֶלֶךְ רופֵא נֶאֱמָן וְרַחֲמָן אַתָּה. בָּרוּךְ אַתָּה ה', רופֵא חולֵי עַמּו יִשרָאֵל.",
              textAlign: TextAlign.justify,
              textDirection: TextDirection.rtl,
              style: GoogleFonts.suezOne(fontSize: 24),
            )),
        JewishCalendar.fromDateTime(DateTime.now()).isWinter()
            ? Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "בָּרֵךְ עָלֵינוּ ה' אֱלהֵינוּ אֶת הַשָּׁנָה הַזּאת וְאֶת כָּל מִינֵי תְבוּאָתָהּ לְטובָה. וְתֵן טַל וּמָטָר לִבְרָכָה עַל פְּנֵי הָאֲדָמָה וְשבְּעֵנוּ מִטּוּבָהּ. וּבָרֵךְ שְׁנָתֵנוּ כַּשָּׁנִים הַטּובות. בָּרוּךְ אַתָּה ה', מְבָרֵךְ הַשָּׁנִים:",
              textAlign: TextAlign.justify,
              textDirection: TextDirection.rtl,
              style: GoogleFonts.suezOne(fontSize: 24),
            ))
            : Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "בָּרֵךְ עָלֵינוּ ה' אֱלהֵינוּ אֶת הַשָּׁנָה הַזּאת וְאֶת כָּל מִינֵי תְבוּאָתָהּ לְטובָה. וְתֵן בְּרָכָה עַל פְּנֵי הָאֲדָמָה וְשבְּעֵנוּ מִטּוּבָהּ. וּבָרֵךְ שְׁנָתֵנוּ כַּשָּׁנִים הַטּובות. בָּרוּךְ אַתָּה ה', מְבָרֵךְ הַשָּׁנִים:",
              textAlign: TextAlign.justify,
              textDirection: TextDirection.rtl,
              style: GoogleFonts.suezOne(fontSize: 24),
            )),
        Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "תְּקַע בְּשׁופָר גָּדול לְחֵרוּתֵנוּ. וְשא נֵס לְקַבֵּץ גָּלֻיּותֵינוּ. וְקַבְּצֵנוּ יַחַד מֵאַרְבַּע כַּנְפות הָאָרֶץ. בָּרוּךְ אַתָּה ה', מְקַבֵּץ נִדְחֵי עַמּו יִשרָאֵל:",
              textAlign: TextAlign.justify,
              textDirection: TextDirection.rtl,
              style: GoogleFonts.suezOne(fontSize: 24),
            )),
        JewishCalendar.fromDateTime(DateTime.now()).isTenDays()
            ? Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "הָשִׁיבָה שׁופְטֵינוּ כְּבָרִאשׁונָה וְיועֲצֵינוּ כְּבַתְּחִלָּה. וְהָסֵר מִמֶּנּוּ יָגון וַאֲנָחָה. וּמְלךְ עָלֵינוּ אַתָּה ה' לְבַדְּךָ בְּחֶסֶד וּבְרַחֲמִים. וְצַדְּקֵנוּ בַּמִשְׁפָּט. בָּרוּךְ אַתָּה ה',הַמֶּלֶךְ הַמִשְׁפָּט:",
              textAlign: TextAlign.justify,
              textDirection: TextDirection.rtl,
              style: GoogleFonts.suezOne(fontSize: 24),
            ))
            : Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "הָשִׁיבָה שׁופְטֵינוּ כְּבָרִאשׁונָה וְיועֲצֵינוּ כְּבַתְּחִלָּה. וְהָסֵר מִמֶּנּוּ יָגון וַאֲנָחָה. וּמְלךְ עָלֵינוּ אַתָּה ה' לְבַדְּךָ בְּחֶסֶד וּבְרַחֲמִים. וְצַדְּקֵנוּ בַּמִשְׁפָּט. בָּרוּךְ אַתָּה ה', מֶלֶךְ אוהֵב צְדָקָה וּמִשְׁפָּט:",
              textAlign: TextAlign.justify,
              textDirection: TextDirection.rtl,
              style: GoogleFonts.suezOne(fontSize: 24),
            )),
        Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "וְלַמַּלְשִׁינִים אַל תְּהִי תִקְוָה. וְכָל הָרִשְׁעָה כְּרֶגַע תּאבֵד. וְכָל אויְבֵי עַמְּךָ מְהֵרָה יִכָּרֵתוּ. וְהַזֵדִים מְהֵרָה תְעַקֵּר וּתְשַׁבֵּר וּתְמַגֵּר וְתַכְנִיעַ בִּמְהֵרָה בְיָמֵינוּ. בָּרוּךְ אַתָּה ה', שׁובֵר אויְבִים וּמַכְנִיעַ זֵדִים:",
              textAlign: TextAlign.justify,
              textDirection: TextDirection.rtl,
              style: GoogleFonts.suezOne(fontSize: 24),
            )),
        Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "עַל הַצַּדִּיקִים וְעַל הַחֲסִידִים. וְעַל זִקְנֵי עַמְּךָ בֵּית יִשרָאֵל. וְעַל פְּלֵיטַת סופְרֵיהֶם. וְעַל גֵּרֵי הַצֶּדֶק. וְעָלֵינוּ. יֶהֱמוּ רַחֲמֶיךָ ה' אֱלהֵינוּ. וְתֵן שכָר טוב לְכָל הַבּוטְחִים בְּשִׁמְךָ בֶּאֱמֶת. וְשים חֶלְקֵנוּ עִמָּהֶם לְעולָם וְלא נֵבושׁ כִּי בְךָ בָטָחְנוּ. בָּרוּךְ אַתָּה ה', מִשְׁעָן וּמִבְטָח לַצַּדִּיקִים:",
              textAlign: TextAlign.justify,
              textDirection: TextDirection.rtl,
              style: GoogleFonts.suezOne(fontSize: 24),
            )),
        Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "וְלִירוּשָׁלַיִם עִירְךָ בְּרַחֲמִים תָּשׁוּב. וְתִשְׁכּן בְּתוכָהּ כַּאֲשֶׁר דִּבַּרְתָּ. וּבְנֵה אותָהּ בְּקָרוב בְּיָמֵינוּ בִּנְיַן עולָם. וְכִסֵּא דָוִד מְהֵרָה לְתוכָהּ תָּכִין: בָּרוּךְ אַתָּה ה', בּונֵה יְרוּשָׁלָיִם:",
              textAlign: TextAlign.justify,
              textDirection: TextDirection.rtl,
              style: GoogleFonts.suezOne(fontSize: 24),
            )),
        Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "אֶת צֶמַח דָּוִד עַבְדְּךָ מְהֵרָה תַצְמִיחַ. וְקַרְנו תָּרוּם בִּישׁוּעָתֶךָ. כִּי לִישׁוּעָתְךָ קִוִּינוּ כָּל הַיּום. בָּרוּךְ אַתָּה ה', מַצְמִיחַ קֶרֶן יְשׁוּעָה:",
              textAlign: TextAlign.justify,
              textDirection: TextDirection.rtl,
              style: GoogleFonts.suezOne(fontSize: 24),
            )),
        Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "שְׁמַע קולֵנוּ. ה' אֱלהֵינוּ חוּס וְרַחֵם עָלֵינוּ. וְקַבֵּל בְּרַחֲמִים וּבְרָצון אֶת תְּפִלָּתֵנוּ. כִּי אֵל שׁומֵעַ תְּפִלּות וְתַחֲנוּנִים אָתָּה. וּמִלְּפָנֶיךָ מַלְכֵּנוּ. רֵיקָם אַל תְּשִׁיבֵנוּ: כִּי אַתָּה שׁומֵעַ תְּפִלַּת עַמְּךָ יִשרָאֵל בְּרַחֲמִים. בָּרוּךְ אַתָּה ה', שׁומֵעַ תְּפִלָּה:",
              textAlign: TextAlign.justify,
              textDirection: TextDirection.rtl,
              style: GoogleFonts.suezOne(fontSize: 24),
            )),
        Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "רְצֵה ה' אֱלהֵינוּ בְּעַמְּךָ יִשרָאֵל וּבִתְפִלָּתָם וְהָשֵׁב אֶת הָעֲבודָה לִדְבִיר בֵּיתֶךָ. וְאִשֵּׁי יִשרָאֵל וּתְפִלָּתָם. בְּאַהֲבָה תְקַבֵּל בְּרָצון. וּתְהִי לְרָצון תָּמִיד עֲבודַת יִשרָאֵל עַמֶּךָ:",
              textAlign: TextAlign.justify,
              textDirection: TextDirection.rtl,
              style: GoogleFonts.suezOne(fontSize: 24),
            )),
        JewishCalendar.fromDateTime(DateTime.now()).isRoshChodesh()
            ? Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "אֱלהֵינוּ וֵאלהֵי אֲבותֵינוּ. יַעֲלֶה וְיָבוא וְיַגִּיעַ. וְיֵרָאֶה וְיֵרָצֶה וְיִשָּׁמַע. וְיִפָּקֵד וְיִזָּכֵר זִכְרונֵנוּ וּפִקְדונֵנוּ וְזִכְרון אֲבותֵינוּ. וְזִכְרון מָשִׁיחַ בֶּן דָּוִד עַבְדֶּךָ. וְזִכְרון יְרוּשָׁלַיִם עִיר קָדְשֶׁךָ. וְזִכְרון כָּל עַמְּךָ בֵּית יִשרָאֵל. לְפָנֶיךָ. לִפְלֵיטָה לְטובָה. לְחֵן וּלְחֶסֶד וּלְרַחֲמִים. לְחַיִּים וּלְשָׁלום בְּיום ראשׁ הַחדֶשׁ הַזֶּה. זָכְרֵנוּ ה' אֱלהֵינוּ בּו לְטובָה. וּפָקְדֵנוּ בו לִבְרָכָה. וְהושִׁיעֵנוּ בו לְחַיִּים. וּבִדְבַר יְשׁוּעָה וְרַחֲמִים חוּס וְחָנֵּנוּ וְרַחֵם עָלֵינוּ וְהושִׁיעֵנוּ. כִּי אֵלֶיךָ עֵינֵינוּ. כִּי אֵל מֶלֶךְ חַנּוּן וְרַחוּם אָתָּה:",
              textAlign: TextAlign.justify,
              textDirection: TextDirection.rtl,
              style: GoogleFonts.suezOne(fontSize: 24),
            ))
            : Container(),
        // TODO: Add cholhamoed pessah and succoth
        Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "וְתֶחֱזֶינָה עֵינֵינוּ בְּשׁוּבְךָ לְצִיּון בְּרַחֲמִים: בָּרוּךְ אַתָּה ה', הַמַּחֲזִיר שְׁכִינָתו לְצִיּון:",
              textAlign: TextAlign.justify,
              textDirection: TextDirection.rtl,
              style: GoogleFonts.suezOne(fontSize: 24),
            )),
        Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "מודִים אֲנַחְנוּ לָךְ. שָׁאַתָּה הוּא ה' אֱלהֵינוּ וֵאלהֵי אֲבותֵינוּ לְעולָם וָעֶד. צוּר חַיֵּינוּ. מָגֵן יִשְׁעֵנוּ אַתָּה הוּא לְדור וָדור: נודֶה לְּךָ וּנְסַפֵּר תְּהִלָּתֶךָ עַל חַיֵּינוּ הַמְּסוּרִים בְּיָדֶךָ. וְעַל נִשְׁמותֵינוּ הַפְּקוּדות לָךְ. וְעַל נִסֶּיךָ שֶׁבְּכָל יום עִמָּנוּ. וְעַל נִפְלְאותֶיךָ וְטובותֶיךָ שֶׁבְּכָל עֵת. עֶרֶב וָבקֶר וְצָהֳרָיִם: הַטּוב כִּי לא כָלוּ רַחֲמֶיךָ. וְהַמְרַחֵם כִּי לא תַמּוּ חֲסָדֶיךָ. מֵעולָם קִוִּינוּ לָךְ:",
              textAlign: TextAlign.justify,
              textDirection: TextDirection.rtl,
              style: GoogleFonts.suezOne(fontSize: 24),
            )),
        Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: ExpansionTile(
                  title: Center(
                      child: Text(
                        "Modim D'Rabanan",
                      )),
                  children: [
                    Text(
                      "מודִים אֲנַחְנוּ לָךְ. שָׁאַתָּה הוּא ה' אֱלהֵינוּ וֵאלהֵי אֲבותֵינוּ. אֱלהֵי כָל בָּשר. יוצְרֵנוּ יוצֵר בְּרֵאשִׁית. בְּרָכות וְהודָאות לְשִׁמְךָ הַגָּדול וְהַקָּדושׁ. עַל שֶׁהֶחֱיִיתָנוּ וְקִיַּמְתָּנוּ. כֵּן תְּחַיֵּנוּ וּתְקַיְּמֵנוּ. וְתֶאֱסוף גָּלֻיּותֵינוּ לְחַצְרות קָדְשֶׁךָ. לִשְׁמור חֻקֶּיךָ. וְלַעֲשות רְצונֶךָ. וּלְעָבְדְךָ בְּלֵבָב שָׁלֵם. עַל שֶׁאָֽנוּ מודִים לָךְ. בָּרוּךְ  אַתָּה ה' אֵל הַהודָאוֹת:",
                      textAlign: TextAlign.justify,
                      textDirection: TextDirection.rtl,
                      style: GoogleFonts.suezOne(fontSize: 24),
                    ),
                  ],
                ),
              ),
            )),
        JewishCalendar.fromDateTime(DateTime.now()).isChanukah()
            ? Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "עַל הַנִּסִּים וְעַל הַפֻּרְקָן וְעַל הַגְּבוּרות וְעַל הַתְּשׁוּעות וְעַל הַמִּלְחָמות שֶׁעָשיתָ לַאֲבותֵינוּ בַּיָּמִים הָהֵם בִּזְּמַן הַזֶּה:\n בִּימֵי מַתִּתְיָהוּ בֶּן יוחָנָן כּהֵן גָּדול חַשְׁמונַאִי וּבָנָיו. כְּשֶׁעָמְדָה מַלְכוּת יָוָן הָרְשָׁעָה עַל עַמְּךָ יִשרָאֵל לְהַשְׁכִּיחָם תּורָתֶךָ וּלְהַעֲבִירָם מֵחֻקֵּי רְצונֶךָ: וְאַתָּה בְּרַחֲמֶיךָ הָרַבִּים עָמַדְתָּ לָהֶם בְּעֵת צָרָתָם. רַבְתָּ אֶת רִיבָם. דַנְתָּ אֶת דִּינָם. נָקַמְתָּ אֶת נִקְמָתָם. מָסַרְתָּ גִבּורִים בְּיַד חַלָּשִׁים. וְרַבִּים בְּיַד מְעַטִּים. וּטְמֵאִים בְּיַד טְהורִים. וּרְשָׁעִים בְּיַד צַדִּיקִים. וְזֵדִים בְּיַד עוסְקֵי תורָתֶךָ. וּלְךָ עָשיתָ שֵׁם גָּדול וְקָדושׁ בְּעולָמֶךָ. וּלְעַמְּךָ יִשרָאֵל עָשיתָ תְּשׁוּעָה גְדולָה וּפֻרְקָן כְּהַיּום הַזֶּה: וְאַחַר כֵּן בָּאוּ בָנֶיךָ לִדְבִיר בֵּיתֶךָ. וּפִנּוּ אֶת הֵיכָלֶךָ. וְטִהֲרוּ אֶת מִקְדָּשֶׁךָ. וְהִדְלִיקוּ נֵרות בְּחַצְרות קָדְשֶׁךָ. וְקָבְעוּ שְׁמונַת יְמֵי חֲנֻכָּה אֵלּוּ. לְהודות וּלְהַלֵּל לְשִׁמְךָ הַגָּדול:",
              textAlign: TextAlign.justify,
              textDirection: TextDirection.rtl,
              style: GoogleFonts.suezOne(fontSize: 24),
            ))
            : Container(),
        JewishCalendar.fromDateTime(DateTime.now()).isPurim()
            ? Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "עַל הַנִּסִּים וְעַל הַפֻּרְקָן וְעַל הַגְּבוּרות וְעַל הַתְּשׁוּעות וְעַל הַמִּלְחָמות שֶׁעָשיתָ לַאֲבותֵינוּ בַּיָּמִים הָהֵם בִּזְּמַן הַזֶּה:\nבִּימֵי מָרְדְּכַי וְאֶסְתֵּר בְּשׁוּשַׁן הַבִּירָה. כְּשֶׁעָמַד עֲלֵיהֶם הָמָן הָרָשָׁע. בִּקֵּשׁ לְהַשְׁמִיד לַהֲרוג וּלְאַבֵּד אֶת כָּל הַיְּהוּדִים מִנַּעַר וְעַד זָקֵן טַף וְנָשִׁים בְּיום אֶחָד. בִּשְׁלשָׁה עָשר לְחדֶשׁ שְׁנֵים עָשר. הוּא חדֶשׁ אֲדָר. וּשְׁלָלָם לָבוז: וְאַתָּה בְּרַחֲמֶיךָ הָרַבִּים. הֵפַרְתָּ אֶת עֲצָתו. וְקִלְקַלְתָּ אֶת מַחֲשַׁבְתּו. וַהֲשֵׁבותָ לּו גְּמוּלו בְּראשׁו. וְתָלוּ אותו וְאֶת בָּנָיו עַל הָעֵץ.",
              textAlign: TextAlign.justify,
              textDirection: TextDirection.rtl,
              style: GoogleFonts.suezOne(fontSize: 24),
            ))
            : Container(),
        Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "וְעַל כֻּלָּם יִתְבָּרַךְ וְיִתְרומַם שִׁמְךָ מַלְכֵּנוּ תָּמִיד לְעולָם וָעֶד:",
              textAlign: TextAlign.justify,
              textDirection: TextDirection.rtl,
              style: GoogleFonts.suezOne(fontSize: 24),
            )),
        JewishCalendar.fromDateTime(DateTime.now()).isTenDays()
            ? Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "וּכְתב לְחַיִּים טובִים כָּל בְּנֵי בְרִיתֶךָ:",
              textAlign: TextAlign.justify,
              textDirection: TextDirection.rtl,
              style: GoogleFonts.suezOne(fontSize: 24),
            ))
            : Container(),
        Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "וְכל הַחַיִּים יודוּךָ סֶּלָה. וִיהַלְלוּ אֶת שִׁמְךָ בֶּאֱמֶת. הָאֵל יְשׁוּעָתֵנוּ וְעֶזְרָתֵנוּ סֶלָה. בָּרוּךְ אַתָּה ה', הַטּוב שִׁמְךָ וּלְךָ נָאֶה לְהודות:",
              textAlign: TextAlign.justify,
              textDirection: TextDirection.rtl,
              style: GoogleFonts.suezOne(fontSize: 24),
            )),
        Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "שים שָׁלום טובָה וּבְרָכָה. חֵן וָחֶסֶד וְרַחֲמִים עָלֵינוּ וְעַל כָּל יִשרָאֵל עַמֶּךָ. בָּרְכֵנוּ אָבִינוּ כֻּלָּנוּ כְּאֶחָד בְּאור פָּנֶיךָ. כִּי בְאור פָּנֶיךָ נָתַתָּ לָּנוּ ה' אֱלהֵינוּ תּורַת חַיִּים וְאַהֲבַת חֶסֶד. וּצְדָקָה וּבְרָכָה וְרַחֲמִים וְחַיִּים וְשָׁלום. וְטוב בְּעֵינֶיךָ לְבָרֵךְ אֶת כָּל עַמְּךָ יִשרָאֵל בְּכָל עֵת וּבְכָל שָׁעָה בִּשְׁלומֶךָ:",
              textAlign: TextAlign.justify,
              textDirection: TextDirection.rtl,
              style: GoogleFonts.suezOne(fontSize: 24),
            )),
        JewishCalendar.fromDateTime(DateTime.now()).isTenDays()
            ? Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "בְּסֵפֶר חַיִּים. בְּרָכָה וְשָׁלום. וּפַרְנָסָה טובָה. נִזָּכֵר וְנִכָּתֵב לְפָנֶיךָ. אֲנַחְנוּ וְכָל עַמְּךָ בֵּית יִשרָאֵל. לְחַיִּים טובִים וּלְשָׁלום:",
              textAlign: TextAlign.justify,
              textDirection: TextDirection.rtl,
              style: GoogleFonts.suezOne(fontSize: 24),
            ))
            : Container(),
        Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "בָּרוּךְ אַתָּה ה', הַמְבָרֵךְ אֶת עַמּו יִשרָאֵל בַּשָּׁלום:",
              textAlign: TextAlign.justify,
              textDirection: TextDirection.rtl,
              style: GoogleFonts.suezOne(fontSize: 24),
            )),
        Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "אֱלהַי. נְצר לְשׁונִי מֵרָע וּשפָתַי מִדַּבֵּר מִרְמָה. וְלִמְקַלְלַי נַפְשִׁי תִדּם. וְנַפְשִׁי כֶּעָפָר לַכּל תִּהְיֶה. פְּתַח לִבִּי בְּתורָתֶךָ. וּבְמִצְותֶיךָ תִּרְדּף נַפְשִׁי. וְכָל הַחושְׁבִים עָלַי רָעָה. מְהֵרָה הָפֵר עֲצָתָם וְקַלְקֵל מַחֲשַׁבְתָּם: עֲשה לְמַעַן שְׁמֶךָ. עֲשה לְמַעַן יְמִינֶךָ. עֲשה לְמַעַן קְדֻשָּׁתֶךָ. עֲשה לְמַעַן תּורָתֶךָ. לְמַעַן יֵחָלְצוּן יְדִידֶיךָ הושִׁיעָה יְמִינְךָ וַעֲנֵנִי: יִהְיוּ לְרָצון אִמְרֵי פִי וְהֶגְיון לִבִּי לְפָנֶיךָ. ה' צוּרִי וְגואֲלִי: עשה שָׁלום בִּמְרומָיו. הוּא יַעֲשה שָׁלום עָלֵינוּ וְעַל כָּל יִשרָאֵל. וְאִמְרוּ אָמֵן:",
              textAlign: TextAlign.justify,
              textDirection: TextDirection.rtl,
              style: GoogleFonts.suezOne(fontSize: 24),
            )),
        Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "יְהִי רָצון מִלְּפָנֶיךָ ה' אֱלהֵינוּ וֵאלהֵי אֲבותֵינוּ. שֶׁיִּבָּנֶה בֵּית הַמִּקְדָּשׁ בִּמְהֵרָה בְיָמֵינוּ. וְתֵן חֶלְקֵנוּ בְּתורָתֶךָ:",
              textAlign: TextAlign.justify,
              textDirection: TextDirection.rtl,
              style: GoogleFonts.suezOne(fontSize: 24),
            )),
      ],
    ),
    // Avinu Malkeinu
    Column(
      children: [
        Padding(padding: const EdgeInsets.all(16.0), child: Container()),
        JewishCalendar.fromDateTime(DateTime.now()).isTenDays()
            ? Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "אָבִינוּ מַלְכֵּנוּ. חָטָאנוּ לְפָנֶיךָ:\n"
                  "אָבִינוּ מַלְכֵּנוּ. אֵין לָנוּ מֶלֶךְ אֶלָּא אָתָּה:\n"
                  "אָבִינוּ מַלְכֵּנוּ. עֲשה עִמָּנוּ לְמַעַן שְׁמֶךָ:"
                  "\nאָבִינוּ מַלְכֵּנוּ. חַדֵּשׁ עָלֵינוּ שָׁנָה טובָה:"
                  "\nאָבִינוּ מַלְכֵּנוּ. בַּטֵּל מֵעָלֵינוּ כָּל גְזֵרות קָשׁות:"
                  "\nאָבִינוּ מַלְכֵּנוּ. בַּטֵּל מַחְשְׁבות שונְאֵינוּ:"
                  "\nאָבִינוּ מַלְכֵּנוּ. הָפֵר עֲצַת אויְבֵינוּ:"
                  "\nאָבִינוּ מַלְכֵּנוּ. כַּלֵּה כָּל צַר וּמַשטִין מֵעָלֵינוּ:"
                  "\nאָבִינוּ מַלְכֵּנוּ. כַּלֵּה כָּל צַר וּמַשטִין מֵעָלֵינוּ:"
                  "\nאָבִינוּ מַלְכֵּנוּ. כַּלֵּה דֶבֶר וְחֶרֶב וְרָעָב וּשְׁבִי וּמַשְׁחִית וְעָון וּשְׁמַד מִבְּנֵי בְרִיתֶךָ:"
                  "\nאָבִינוּ מַלְכֵּנוּ. מְנַע מַגֵּפָה מִנַּחֲלָתֶךָ:"
                  "\nאָבִינוּ מַלְכֵּנוּ. סְלַח וּמְחַל לְכָל עֲונותֵינוּ:"
                  "\nאָבִינוּ מַלְכֵּנוּ. מְחֵה וְהַעֲבֵר פְּשָׁעֵינוּ וְחַטּאתֵינוּ מִנֶּגֶד עֵינֶיךָ:"
                  "\nאָבִינוּ מַלְכֵּנוּ. מְחק בְּרַחֲמֶיךָ הָרַבִּים כָּל שִׁטְרֵי חובותֵינוּ:"
                  "\nאָבִינוּ מַלְכֵּנוּ. הַחֲזִירֵנוּ בִּתְשׁוּבָה שְׁלֵמָה לְפָנֶיךָ:"
                  "\nאָבִינוּ מַלְכֵּנוּ. שְׁלַח רְפוּאָה שְׁלֵמָה לְחולֵי עַמֶּךָ:"
                  "\nאָבִינוּ מַלְכֵּנוּ. קְרַע. רועַ גְּזַר דִּינֵנוּ:"
                  "\nאָבִינוּ מַלְכֵּנוּ. זָכְרֵנוּ בְּזִכָּרון טוב לְפָנֶיךָ:"
                  "\nאָבִינוּ מַלְכֵּנוּ. כָּתְבֵנוּ בְּסֵפֶר חַיִּים טובִים:"
                  "\nאָבִינוּ מַלְכֵּנוּ. כָּתְבֵנוּ בְּסֵפֶר גְּאוּלָּה וִישׁוּעָה:"
                  "\nאָבִינוּ מַלְכֵּנוּ. כָּתְבֵנוּ בְּסֵפֶר פַּרְנָסָה וְכַלְכָּלָה:"
                  "\nאָבִינוּ מַלְכֵּנוּ. כָּתְבֵנוּ בְּסֵפֶר זְכֻיּות:"
                  "\nאָבִינוּ מַלְכֵּנוּ. כָּתְבֵנוּ בְּסֵפֶר סְלִיחָה וּמְחִילָה:"
                  "\nאָבִינוּ מַלְכֵּנוּ. הַצְמַח לָנוּ יְשׁוּעָה בְּקָרוב:"
                  "\nאָבִינוּ מַלְכֵּנוּ. הָרֵם קֶרֶן יִשרָאֵל עַמֶּךָ:"
                  "\nאָבִינוּ מַלְכֵּנוּ. הָרֵם קֶרֶן מְשִׁיחֶךָ:"
                  "\nאָבִינוּ מַלְכֵּנוּ. מַלֵּא יָדֵינוּ מִבִּרְכותֶיךָ:"
                  "\nאָבִינוּ מַלְכֵּנוּ. מַלֵּא אֲסָמֵינוּ שבָע:"
                  "\nאָבִינוּ מַלְכֵּנוּ. שְׁמַע קולֵנוּ חוּס וְרַחֵם עָלֵינוּ:"
                  "\nאָבִינוּ מַלְכֵּנוּ. קַבֵּל בְּרַחֲמִים וּבְרָצון אֶת תְּפִלָּתֵנוּ:"
                  "\nאָבִינוּ מַלְכֵּנוּ. פְּתַח שַׁעֲרֵי שָׁמַיִם לִתְפִלָּתֵנוּ:"
                  "\nאָבִינוּ מַלְכֵּנוּ. זְכר כִּי עָפָר אֲנָחְנוּ:"
                  "\nאָבִינוּ מַלְכֵּנוּ. נָא אַל תְּשִׁיבֵנוּ רֵיקָם מִלְּפָנֶיךָ:"
                  "\nאָבִינוּ מַלְכֵּנוּ. תְּהֵא הַשָּׁעָה הַזּאת שְׁעַת רַחֲמִים וְעֵת רָצון מִלְּפָנֶיךָ:"
                  "\nאָבִינוּ מַלְכֵּנוּ. חֲמול עָלֵינוּ וְעַל עולָלֵינוּ וְטַפֵּנוּ:"
                  "\nאָבִינוּ מַלְכֵּנוּ. עֲשה לְמַעַן הֲרוּגִים עַל שֵׁם קָדְשֶׁךָ:"
                  "\nאָבִינוּ מַלְכֵּנוּ. עֲשה לְמַעַן טְבוּחִים עַל יִחוּדֶךָ:"
                  "\nאָבִינוּ מַלְכֵּנוּ. עֲשה לְמַעַן בָּאֵי בָאֵשׁ וּבַמַּיִם עַל קִדּוּשׁ שְׁמֶךָ:"
                  "\nאָבִינוּ מַלְכֵּנוּ. נְקום לְעֵינֵנוּ נִקְמַת דַּם עֲבָדֶיךָ הַשָּׁפוּךְ:"
                  "\nאָבִינוּ מַלְכֵּנוּ. עֲשה לְמַעַנְךָ אִם לא לְמַעֲנֵנוּ:"
                  "\nאָבִינוּ מַלְכֵּנוּ. עֲשה לְמַעַנְךָ וְהושִׁיעֵנוּ:"
                  "\nאָבִינוּ מַלְכֵּנוּ. עֲשה לְמַעַן רַחֲמֶיךָ הָרַבִּים:"
                  "\nאָבִינוּ מַלְכֵּנוּ. עֲשה לְמַעַן שִׁמְךָ הַגָּדול הַגִּבּור וְהַנּורָא שֶׁנִּקְרָא עָלֵינוּ:"
                  "\nאָבִינוּ מַלְכֵּנוּ. חָנֵּנוּ וַעֲנֵנוּ כִּי אֵין בָּנוּ מַעֲשים עֲשה עִמָּנוּ צְדָקָה וָחֶסֶד וְהושִׁיעֵנוּ:",
              textAlign: TextAlign.right,
              textDirection: TextDirection.rtl,
              style: GoogleFonts.suezOne(fontSize: 24),
            ))
            : Container(),
      ],
    ),
    // Tachanunim
    (JewishCalendar.fromDateTime(DateTime.now()).isTachanunMinche())
        ? Column(
      children: [

        Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "רַחוּם וְחַנּוּן חָטָאתִי לְפָנֶיךָ. ה' מָלֵא רַחֲמִים. רַחֵם עָלַי וְקַבֵּל תַּחֲנוּנָי: ה' אַל בְּאַפְּךָ תוכִיחֵנִי. וְאַל בַּחֲמָתְךָ תְיַסְּרֵנִי: חָנֵּנִי ה'. כִּי אֻמְלַל אָנִי. רְפָאֵנִי ה'. כִּי נִבְהֲלוּ עֲצָמָי: וְנַפְשִׁי נִבְהֲלָה מְאד. וְאַתָּה ה' עַד מָתָי: שׁוּבָה ה'. חַלְּצָה נַפְשִׁי. הושִׁיעֵנִי לְמַעַן חַסְדֶּךָ: כִּי אֵין בַּמָּוֶת זִכְרֶךָ. בִּשְׁאול מִי יודֶה לָּךְ: יָגַעְתִּי בְאַנְחָתִי. אַשחֶה בְכָל לַיְלָה מִטָּתִי. בְּדִמְעָתִי עַרְשי אַמְסֶה: עָשְׁשָׁה מִכַּעַס עֵינִי. עָתְקָה בְּכָל צורְרָי: סוּרוּ מִמֶּנִּי כָּל פּעֲלֵי אָוֶן. כִּי שָׁמַע ה' קול בִּכְיִי: שָׁמַע ה' תְּחִנָּתִי. ה' תְּפִלָּתִי יִקָּח: יֵבשׁוּ וְיִבָּהֲלוּ מְאד כָּל איְבָי. יָשֻׁבוּ יֵבשׁוּ רָגַע:",
              textAlign: TextAlign.justify,
              textDirection: TextDirection.rtl,
              style: GoogleFonts.suezOne(fontSize: 24),
            )),
        (JewishCalendar.fromDateTime(DateTime.now()).isTaanis())
            ? Column(
          children: [
            Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "שׁומֵר יִשרָאֵל. שְׁמר שְׁאֵרִית יִשרָאֵל. וְאַל יאבַד יִשרָאֵל. הָאומְרִים שְׁמַע יִשרָאֵל:",
                  textAlign: TextAlign.justify,
                  textDirection: TextDirection.rtl,
                  style: GoogleFonts.suezOne(fontSize: 24),
                )),
            Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "שׁומֵר גּוי אֶחָד. שְׁמר שְׁאֵרִית עַם אֶחָד. וְאַל יאבַד גּוי אֶחָד. הַמְיַחֲדִים שִׁמְךָ ה' אֱלהֵינוּ ה' אֶחָד:",
                  textAlign: TextAlign.justify,
                  textDirection: TextDirection.rtl,
                  style: GoogleFonts.suezOne(fontSize: 24),
                )),
            Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "שׁומֵר גּוי קָדושׁ. שְׁמר שְׁאֵרִית עַם קָדושׁ. וְאַל יאבַד גּוי קָדושׁ. הַמְשַׁלְּשִׁים בְּשָׁלשׁ קְדֻשּׁות לְקָדושׁ:",
                  textAlign: TextAlign.justify,
                  textDirection: TextDirection.rtl,
                  style: GoogleFonts.suezOne(fontSize: 24),
                )),
            Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "מִתְרַצֶּה בְּרַחֲמִים וּמִתְפַּיֵּס בְּתַחֲנוּנִים. הִתְרַצֶּה וְהִתְפַּיֵּס לְדור עָנִי. כִּי אֵין עוזֵר: אָבִינוּ מַלְכֵּנוּ. חָנֵּנוּ וַעֲנֵנוּ. כִּי אֵין בָּנוּ מַעֲשים. עֲשה עִמָּנוּ צְדָקָה וָחֶסֶד וְהושִׁיעֵנוּ:",
                  textAlign: TextAlign.justify,
                  textDirection: TextDirection.rtl,
                  style: GoogleFonts.suezOne(fontSize: 24),
                )),
          ],
        )
            : Container(),
        Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "וַאֲנַחְנוּ לא נֵדַע מַה נַּעֲשה. כִּי עָלֶיךָ עֵינֵינוּ: זְכר רַחֲמֶיךָ ה' וַחֲסָדֶיךָ. כִּי מֵעולָם הֵמָּה: יְהִי חַסְדְּךָ ה' עָלֵינוּ. כַּאֲשֶׁר יִחַלְנוּ לָךְ: אַל תִּזְכָּר לָנוּ עֲונות רִאשׁונִים. מַהֵר יְקַדְּמוּנוּ רַחֲמֶיךָ. כִּי דַלּונוּ מְאד: חָנֵּנוּ ה' חָנֵּנוּ. כִּי רַב שבַעְנוּ בוּז: בְּרגֶז רַחֵם תִּזְכּור. כִּי הוּא יָדַע יִצְרֵנוּ. זָכוּר כִּי עָפָר אֲנָחְנוּ: עָזְרֵנוּ אֱלהֵי יִשְׁעֵנוּ עַל דְּבַר כְּבוד שְׁמֶךָ. וְהַצִּילֵנוּ וְכַפֵּר עַל חַטּאתֵינוּ לְמַעַן שְׁמֶךָ:",
              textAlign: TextAlign.justify,
              textDirection: TextDirection.rtl,
              style: GoogleFonts.suezOne(fontSize: 24),
            )),
      ],
    )
        : Container(),

    // Aleinu
    Column(
      children: [
        Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "עָלֵינוּ לְשַׁבֵּחַ לַאֲדון הַכּל. לָתֵת גְּדֻלָּה לְיוצֵר בְּרֵאשִׁית. שֶׁלּא עָשנוּ כְּגויֵי הָאֲרָצות. וְלא שמָנוּ כְּמִשְׁפְּחות הָאֲדָמָה. שֶׁלּא שם חֶלְקֵנוּ כָּהֶם וְגורָלֵנוּ כְּכָל הֲמונָם: שֶׁהֵם מִשְׁתַּחֲוִים לְהֶבֶל וְרִיק וּמִתְפַּלְלִים אֶל אֵל לא יושִׁיעַ: וַאֲנַחְנוּ כּורְעִים וּמִשְׁתַּחֲוִים וּמודִים לִפְנֵי מֶלֶךְ מַלְכֵי הַמְּלָכִים הַקָּדושׁ בָּרוּךְ הוּא: שֶׁהוּא נוטֶה שָׁמַיִם וְיוסֵד אָרֶץ, וְכִסֵּא כְבוֹדוֹ בַּשָּׁמַיִם מִמַּעַל. וּשְׁכִינַת עֻזּו בְּגָבְהֵי מְרומִים: הוּא אֱלהֵינוּ אֵין עוד. אֱמֶת מַלְכֵּנוּ. אֶפֶס זוּלָתו. כַּכָּתוּב בְּתורָתו. וְיָדַעְתָּ הַיּום וַהֲשֵׁבתָ אֶל לְבָבֶךָ. כִּי ה' הוּא הָאֱלהִים בַּשָּׁמַיִם מִמַּעַל וְעַל הָאָרֶץ מִתָּחַת. אֵין עוד:",
              textAlign: TextAlign.justify,
              textDirection: TextDirection.rtl,
              style: GoogleFonts.suezOne(fontSize: 24),
            )),
        Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "עַל כֵּן נְקַוֶּה לְּךָ ה' אֱלהֵינוּ לִרְאות מְהֵרָה בְּתִפְאֶרֶת עֻזֶּךָ. לְהַעֲבִיר גִּלּוּלִים מִן הָאָרֶץ. וְהָאֱלִילִים כָּרות יִכָּרֵתוּן. לְתַקֵּן עולָם בְּמַלְכוּת שַׁדַּי. וְכָל בְּנֵי בָשר יִקְרְאוּ בִשְׁמֶךָ לְהַפְנות אֵלֶיךָ כָּל רִשְׁעֵי אָרֶץ. יַכִּירוּ וְיֵדְעוּ כָּל יושְׁבֵי תֵבֵל. כִּי לְךָ תִּכְרַע כָּל בֶּרֶךְ. תִּשָּׁבַע כָּל לָשׁון. לְפָנֶיךָ ה' אֱלהֵינוּ יִכְרְעוּ וְיִפּלוּ. וְלִכְבוד שִׁמְךָ יְקָר יִתֵּנוּ. וִיקַבְּלוּ כֻלָּם אֶת על מַלְכוּתֶךָ. וְתִמְלךְ עֲלֵיהֶם מְהֵרָה לְעולָם וָעֶד. כִּי הַמַּלְכוּת שֶׁלְּךָ הִיא וּלְעולְמֵי עַד תִּמְלךְ בְּכָבוד. כַּכָּתוּב בְּתורָתֶךָ. ה' יִמְלךְ לְעולָם וָעֶד:",
              textAlign: TextAlign.justify,
              textDirection: TextDirection.rtl,
              style: GoogleFonts.suezOne(fontSize: 24),
            )),
      ],
    ),
  ];

  List<DropdownMenuItem<int>> dropDownMenuItems = [
    DropdownMenuItem(
      value: 0,
      child: Text(
        "Ashrei",
//                  style: TextStyle(color: Theme.of(context).accentColor),
      ),
    ),
    DropdownMenuItem(
      value: 1,
      child: Text(
        "Shmonei Esrei",
//                  style: TextStyle(color: Theme.of(context).accentColor),
      ),
    ),
    DropdownMenuItem(
      value: 4,
      child: Text(
        "Aleinu",
//                  style: TextStyle(color: Theme.of(context).accentColor),
      ),
    ),
  ];

  int _value = 0;

  @override
  void initState() {
    super.initState();

    itemScrollController = ItemScrollController();

    if (IS_TAANITH || IS_TEN_DAYS) {
      dropDownMenuItems.insert(
          1,
          DropdownMenuItem(
            value: 2,
            child: Text(
              "Avinu Malkeinu",
//                  style: TextStyle(color: Theme.of(context).accentColor),
            ),
          ));
    }
    if (IS_TACHANUN) {
      dropDownMenuItems.insert(
          2,
          DropdownMenuItem(
            value: 3,
            child: Text(
              "Tachanun",
//                  style: TextStyle(color: Theme.of(context).accentColor),
            ),
          ));
    }

  }

//   TODO: Implement autoscoll
  void autoScroll(){
//        itemScrollController.scrollTo(index:_scrollIndex+1,
//            duration: Duration(seconds: 30),
//            alignment: 0,
//            curve: Curves.linear);
  }

  setDropDownMenuItem(int index){
    if (index == 2) {
      if (IS_TAANITH || IS_TEN_DAYS) {
        setState(() {
          _value = index;
        });
      }
      else
        setDropDownMenuItem(++index);
    } else if (index == 3) {
      if (IS_TACHANUN) {
        setState(() {
          _value = index;
        });
      }
      else
        setDropDownMenuItem(++index);
    }

    else {
      setState(() {
        _value = index;
      });
    }
  }

  @override
  Widget build(BuildContext context) {

    itemPositionsListener.itemPositions.addListener(() {
      if (itemPositionsListener.itemPositions.value.isNotEmpty) {
        int currentIndex = itemPositionsListener.itemPositions.value
            .where((ItemPosition position) => position.itemTrailingEdge > 0)
            .reduce((ItemPosition min, ItemPosition position) =>
        position.itemTrailingEdge < min.itemTrailingEdge
            ? position
            : min)
            .index;
//        int currentIndex =
//            itemPositionsListener.itemPositions.value.elementAt(0).index;
        if (currentIndex < 5 && currentIndex > -1) {
          setDropDownMenuItem(currentIndex);
        }
      }
    });

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
        title: new DropdownButton(
          underline: Container(),
          items: dropDownMenuItems,
          onChanged: (value) {
            itemScrollController.jumpTo(index: value);
            setState(() {
              _value = value;
            });
          },
          value: _value,
        ),
      ),
      body: GestureDetector(
        onDoubleTap: () {
          autoScroll();
        },
        onScaleStart: (details) {
          _baseScaleFactor = _scaleFactor;
        },
        onScaleUpdate: (details) {
          print(details.scale);
          setState(() {
            _scaleFactor = _baseScaleFactor * details.scale;
          });
        },
        child: Center(
            child: ScrollablePositionedList.builder(
              scrollDirection: Axis.vertical,
              itemCount: morningPrayers.length,
              itemBuilder: (context, index) => morningPrayers[index],
              itemScrollController: itemScrollController,
              itemPositionsListener: itemPositionsListener,
            )),
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
  }
}
