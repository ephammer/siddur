import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'CustomDrawer.dart';

class MorningPragerPage extends StatelessWidget {
  MorningPragerPage();

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
        title: Text('Morning Prayer'),
      ),
      body: Center(
          child: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "אֲדון עולָם אֲשֶׁר מָלַךְ. בְּטֶרֶם כָּל יְצִיר נִבְרָא: לְעֵת נַעֲשה בְחֶפְצו כּל. אֲזַי מֶלֶךְ שְׁמו נִקְרָא: וְאַחֲרֵי כִּכְלות הַכּל. לְבַדּו יִמְלךְ נורָא: וְהוּא הָיָה וְהוּא הוֶה. וְהוּא יִהְיֶה בְּתִפְאָרָה: וְהוּא אֶחָד וְאֵין שֵׁנִי. לְהַמְשִׁיל לו לְהַחְבִּירָה: בְּלִי רֵאשִׁית בְּלִי תַכְלִית. וְלו הָעז וְהַמִּשרָה: וְהוּא אֵלִי וְחַי גואֲלִי. וְצוּר חֶבְלִי בְּעֵת צָרָה: וְהוּא נִסִּי וּמָנוס לִי. מְנָת כּוסִי בְּיום אֶקְרָא: בְּיָדו אַפְקִיד רוּחִי. בְּעֵת אִישָׁן וְאָעִירָה: וְעִם רוּחִי גְּוִיָּתִי. ה\' לִי וְלא אִירָא:",
              textAlign: TextAlign.justify,
              textDirection: TextDirection.rtl,
              style: GoogleFonts.suezOne(fontSize: 24),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "מַה טּבוּ אהָלֶיךָ יַעֲקב מִשְׁכְּנתֶיךָ יִשְׂרָאֵל. וַאֲנִי בְּרב חַסְדְּךָ אָבא בֵיתֶךָ אֶשְׁתַּחֲוֶה אֶל הֵיכַל קָדְשְׁךָ בְּיִרְאָתֶךָ. ה\' אָהַבְתִּי מְעון בֵּיתֶךָ וּמְקום מִשְׁכַּן כְּבודֶךָ. וַאֲנִי אֶשְׁתַּחֲוֶה וְאֶכְרָעָה אֶבְרְכָה לִפְנֵי ה\' עשִׂי. וַאֲנִי תְפִלָתִי לְךָ ה\' עֵת רָצון אֱלהִים בְּרָב חַסְדֶּךָ עֲנֵנִי בֶּאֱמֶת יִשְׁעֶךָ.",
              textAlign: TextAlign.justify,
              textDirection: TextDirection.rtl,
              style: GoogleFonts.suezOne(fontSize: 24),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "בָּרוּךְ אַתָּה ה\' אֱלהֵינוּ מֶלֶךְ הָעולָם אֲשֶׁר קִדְּשָׁנוּ בְּמִצְותָיו וְצִוָּנוּ עַל נְטִילַת יָדַיִם:",
              textAlign: TextAlign.justify,
              textDirection: TextDirection.rtl,
              style: GoogleFonts.suezOne(fontSize: 24),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "בָּרוּךְ אַתָּה ה\' אֱלהֵינוּ מֶלֶךְ הָעולָם אֲשֶׁר יָצַר אֶת הָאָדָם בְּחָכְמָה וּבָרָא בו נְקָבִים נְקָבִים חֲלוּלִים חֲלוּלִים. גָּלוּי וְיָדוּעַ לִפְנֵי כִסֵּא כְבודֶךָ שֶׁאִם יִפָּתֵחַ אֶחָד מֵהֶם או יִסָּתֵם אֶחָד מֵהֶם אִי אֶפְשַׁר לְהִתְקַיֵּם וְלַעֲמוד לְפָנֶיךָ אֲפִילוּ שָׁעָה אֶחָת: בָּרוּךְ אַתָּה ה\' רופֵא כָל בָּשר וּמַפְלִיא לַעֲשות:",
              textAlign: TextAlign.justify,
              textDirection: TextDirection.rtl,
              style: GoogleFonts.suezOne(fontSize: 24),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "אֱלהַי. נְשָׁמָה שֶׁנָּתַתָּ בִּי טְהורָה הִיא. אַתָּה בְרָאתָהּ. אַתָּה יְצַרְתָּהּ. אַתָּה נְפַחְתָּהּ בִּי. וְאַתָּה מְשַׁמְּרָהּ בְּקִרְבִּי. וְאַתָּה עָתִיד לִטְּלָהּ מִמֶּנִּי. וּלְהַחֲזִירָהּ בִּי לֶעָתִיד לָבוא. כָּל זְמַן שֶׁהַנְּשָׁמָה בְּקִרְבִּי מודֶה אֲנִי לְפָנֶיךָ ה\' אֱלהַי וֵאלהֵי אֲבותַי. רִבּון כָּל הַמַּעֲשים אֲדון כָּל הַנְּשָׁמות: בָּרוּךְ אַתָּה ה\' הַמַּחֲזִיר נְשָׁמות לִפְגָרִים מֵתִים:",
              textAlign: TextAlign.justify,
              textDirection: TextDirection.rtl,
              style: GoogleFonts.suezOne(fontSize: 24),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "בָּרוּךְ אַתָּה ה\' אֱלהֵינוּ מֶלֶךְ הָעולָם, אֲשֶׁר נָתַן לַשּכְוִי בִינָה לְהַבְחִין בֵּין יום וּבֵין לָיְלָה.\nבָּרוּךְ אַתָּה ה\' אֱלהֵינוּ מֶלֶךְ הָעולָם, שֶׁלּא עָשנִי גּוי.\nבָּרוּךְ אַתָּה ה\' אֱלהֵינוּ מֶלֶךְ הָעולָם, שֶׁלּא עָשנִי עָבֶד.\nבָּרוּךְ אַתָּה ה\' אֱלֹהֵינוּ מֶלֶךְ הָעוֹלָם, גברים אומרים: שֶׁלֹּא עָשַׂנִי אשָּׁה.\nבָּרוּךְ אַתָּה ה\' אֱלהֵינוּ מֶלֶךְ הָעולָם, מַלְבִּישׁ עֲרֻמִּים.\nבָּרוּךְ אַתָּה ה\' אֱלהֵינוּ מֶלֶךְ הָעולָם, פּוקֵחַ עִוְרִים.\nבָּרוּךְ אַתָּה ה\' אֱלהֵינוּ מֶלֶךְ הָעולָם, מַתִּיר אֲסוּרִים.\nבָּרוּךְ אַתָּה ה\' אֱלהֵינוּ מֶלֶךְ הָעולָם, זוקֵף כְּפוּפִים.\nבָּרוּךְ אַתָּה ה\' אֱלהֵינוּ מֶלֶךְ הָעולָם, רוקַע הָאָרֶץ עַל הַמָּיִם.\n בָּרוּךְ אַתָּה ה\' אֱלהֵינוּ מֶלֶךְ הָעולָם, שֶׁעָשה לִּי כָּל צָרְכִּי.\nבָּרוּךְ אַתָּה ה\' אֱלהֵינוּ מֶלֶךְ הָעולָם, הַמֵּכִין מִצְעֲדֵי גָבֶר.\nבָּרוּךְ אַתָּה ה\' אֱלהֵינוּ מֶלֶךְ הָעולָם, אוזֵר יִשרָאֵל בִּגְבוּרָה.\nבָּרוּךְ אַתָּה ה\' אֱלהֵינוּ מֶלֶךְ הָעולָם, עוטֵר יִשרָאֵל בְּתִפְאָרָה.\nבָּרוּךְ אַתָּה ה\' אֱלהֵינוּ מֶלֶךְ הָעולָם, הַנּותֵן לַיָּעֵף כּחַ.\nבָּרוּךְ אַתָּה ה\' אֱלהֵינוּ מֶלֶךְ הָעולָם, הַמַּעֲבִיר שֵׁנָה מֵעֵינַי וּתְנוּמָה מֵעַפְעַפָּי.\n",
              textAlign: TextAlign.justify,
              textDirection: TextDirection.rtl,
              style: GoogleFonts.suezOne(fontSize: 24),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "וִיהִי רָצון מִלְּפָנֶיךָ ה\' אֱלהֵינוּ וֵאלהֵי אֲבותֵינוּ שֶׁתַּרְגִּילֵנוּ בְּתורָתֶךָ. וְדַבְּקֵנוּ בְּמִצְותֶיךָ. וְאַל תְּבִיאֵנוּ לא לִידֵי חֵטְא. וְלא לִידֵי עֲבֵרָה וְעָון. וְלא לִידֵי נִסָּיון. וְלא לִידֵי בִזָּיון. וְאַל תַּשְׁלֶט בָּנוּ יֵצֶר הָרָע. וְהַרְחִיקֵנוּ מֵאָדָם רָע וּמֵחָבֵר רָע. וְדַבְּקֵנוּ בְּיֵצֶר הַטוב וּבְמַעֲשים טובִים. וְכף אֶת יִצְרֵנוּ לְהִשְׁתַּעְבֶּד לָךְ. וּתְנֵנוּ הַיּום וּבְכָל יום לְחֵן וּלְחֶסֶד וּלְרַחֲמִים בְּעֵינֶיךָ וּבְעֵינֵי כָל רואֵינוּ. וְתִגְמְלֵנוּ חֲסָדִים טובִים. בָּרוּךְ אַתָּה ה\' הַגּומֵל חֲסָדִים טובִים לְעַמּו יִשרָאֵל.",
              textAlign: TextAlign.justify,
              textDirection: TextDirection.rtl,
              style: GoogleFonts.suezOne(fontSize: 24),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "יְהִי רָצון מִלְּפָנֶיךָ ה\' אֱלהַי וֵאלהֵי אֲבותַי שֶׁתַּצִּילֵנִי הַיּום וּבְכָל יום מֵעַזֵּי פָנִים וּמֵעַזּוּת פָּנִים. מֵאָדָם רָע. וּמֵחָבֵר רָע. וּמִשָּׁכֵן רָע. וּמִפֶּגַע רָע. וּמִשּטָן הַמַּשְׁחִית. מִדִּין קָשֶׁה וּמִבַּעַל דִּין קָשֶׁה. בֵּין שֶׁהוּא בֶן בְּרִית וּבֵין שֶׁאֵינו בֶן בְּרִית.",
              textAlign: TextAlign.justify,
              textDirection: TextDirection.rtl,
              style: GoogleFonts.suezOne(fontSize: 24),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "לְעולָם יְהֵא אָדָם יְרֵא שָׁמַיִם בְּסֵּתֶר וּמודֶה עַל הָאֱמֶת וְדובֵר אֱמֶת בִּלְבָבו וְיַשְׁכֵּם וְיאמַר,",
              textAlign: TextAlign.justify,
              textDirection: TextDirection.rtl,
              style: GoogleFonts.suezOne(fontSize: 24),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "רִבּון כָּל הָעולָמִים לא עַל צִדְקותֵינוּ אֲנַחְנוּ מַפִּילִים תַּחֲנוּנֵינוּ לְפָנֶיךָ כִּי עַל רַחֲמֶיךָ הָרַבִּים. מָה אֲנַחְנוּ מֶה חַיֵּינוּ מֶה חַסְדֵּנוּ מַה צִּדְקֵנוּ מַה יְשְׁעֵנוּ מַה כּחֵנוּ מַה גְּבוּרָתֵנוּ. מַה נּאמַר לְפָנֶיךָ ה\' אֱלהֵינוּ וֵאלהֵי אֲבותֵינוּ הֲלא כָל הַגִּבּורִים כְּאַיִן לְפָנֶיךָ וְאַנְשֵׁי הַשֵּׁם כְּלא הָיוּ וַחֲכָמִים כִּבְלִי מַדָּע וּנְבונִים כִּבְלִי הַשכֵּל כִּי רב מַעֲשיהֶם תּהוּ וִימֵי חַיֵּיהֶם הֶבֶל לְפָנֶיךָ. וּמותַר הָאָדָם מִן הַבְּהֵמָה אָיִן כִּי הַכּל הָבֶל.",
              textAlign: TextAlign.justify,
              textDirection: TextDirection.rtl,
              style: GoogleFonts.suezOne(fontSize: 24),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "אֲבָל אֲנַחְנוּ עַמְּךָ בְּנֵי בְרִיתֶךָ. בְּנֵי אַבְרָהָם אהַבְךָ שֶׁנִּשְׁבַּעְתָּ לּו בְּהַר הַמּורִיָּה. זֶרַע יִצְחָק יְחִידו. שֶׁנֶּעֱקַד עַל גַּבֵּי הַמִּזְבֵּחַ. עֲדַת יַעֲקב בִּנְךָ בְּכורֶךָ. שֶׁמֵּאַהֲבָתְךָ שֶׁאָהַבְתָּ אותו וּמִשּמְחָתְךָ שֶׁשּמַחְתָּ בּו. קָרָאתָ אֶת שְׁמו יִשרָאֵל וִישֻׁרוּן.",
              textAlign: TextAlign.justify,
              textDirection: TextDirection.rtl,
              style: GoogleFonts.suezOne(fontSize: 24),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "לְפִיכָךְ אֲנַחְנוּ חַיָּבִים לְהודות לְךָ וּלְשַׁבֵּחֲךָ וּלְפָאֶרְךָ וּלְבָרֵךְ וּלְקַדֵּשׁ וְלָתֵת שֶׁבַח וְהודָיָה לִשְׁמֶךָ. אַשְׁרֵינוּ מַה טּוב חֶלְקֵנוּ וּמַה נָּעִים גּורָלֵנוּ וּמַה יָּפָה יְרֻשָּׁתֵנוּ. אַשְׁרֵינוּ שֶׁאֲנַחְנוּ מַשְׁכִּימִים וּמַעֲרִיבִים עֶרֶב וָבקֶר וְאומְרִים פַּעֲמַיִם בְּכָל יום,",
              textAlign: TextAlign.justify,
              textDirection: TextDirection.rtl,
              style: GoogleFonts.suezOne(fontSize: 24),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "ה\' אֱלהֵינוּ ה’ אֶחָד",
              textAlign: TextAlign.center,
              textDirection: TextDirection.rtl,
              style: GoogleFonts.suezOne(fontSize: 24),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "אַתָּה הוּא עַד שֶׁלּא נִבְרָא הָעולָם אַתָּה הוּא מִשֶּׁנִּבְרָא הָעולָם. אַתָּה הוּא בָּעולָם הַזֶּה וְאַתָּה הוּא לָעולָם הַבָּא: קַדֵּשׁ אֶת שִׁמְךָ עַל מַקְדִּישֵׁי שְׁמֶךָ וְקַדֵּשׁ אֶת שִׁמְךָ בְּעולָמֶךָ. וּבִישׁוּעָתְךָ תָּרִים וְתַגְבִּיהַּ קַרְנֵנוּ: ברוּךְ אַתָּה ה\', הַמְקַדֵּשׁ אֶת שְׁמו בָּרַבִּים:",
              textAlign: TextAlign.justify,
              textDirection: TextDirection.rtl,
              style: GoogleFonts.suezOne(fontSize: 24),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "אַתָּה הוּא ה\' אֱלהֵינוּ בַּשָּׁמַיִם וּבָאָרֶץ וּבִשְׁמֵי הַשָּׁמַיִם הָעֶלְיונִים. אֱמֶת אַתָּה הוּא רִאשׁון וְאַתָּה הוּא אַחֲרון וּמִבַּלְעָדֶיךָ אֵין אֱלהִים: קַבֵּץ קוֶיךָ מֵאַרְבַּע כַּנְפות הָאָרֶץ. יַכִּירוּ וְיֵדְעוּ כָּל בָּאֵי עולָם כִּי אַתָּה הוּא הָאֱלהִים לְבַדְּךָ לְכל מַמְלְכות הָאָרֶץ: אַתָּה עָשיתָ אֶת הַשָּׁמַיִם וְאֶת הָאָרֶץ אֶת הַיָּם וְאֶת כָּל אֲשֶׁר בָּם וּמִי בְּכָל מַעֲשי יָדֶיךָ בָּעֶלְיונִים או בַתַּחְתּונִים שֶׁיּאמַר לְךָ מַה תַּעֲשה אָבִינוּ שֶׁבַּשָּׁמַיִם עֲשה עִמָּנוּ חֶסֶד בַּעֲבוּר שִׁמְךָ הַגָּדול שֶׁנִּקְרָא עָלֵינוּ. וְקַיֶּם לָנוּ ה\' אֱלהֵינוּ מַה שֶׁכָּתוּב בָּעֵת הַהִיא אָבִיא אֶתְכֶם וּבָעֵת קַבְּצִי אֶתְכֶם. כִּי אֶתֵּן אֶתְכֶם לְשֵׁם וְלִתְהִלָּה בְּכל עַמֵּי הָאָרֶץ. בְּשׁוּבִי אֶת שְׁבוּתֵיכֶם לְעֵינֵיכֶם. אָמַר ה\':",
              textAlign: TextAlign.justify,
              textDirection: TextDirection.rtl,
              style: GoogleFonts.suezOne(fontSize: 24),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "בָּרוּךְ אַתָּה ה\' אֱלהֵינוּ מֶלֶךְ הָעולָם אֲשֶׁר קִדְּשָׁנוּ בְּמִצְותָיו וְצִוָּנוּ לַעֲסוק בְּדִבְרֵי תורָה: וְהַעֲרֶב נָא ה\' אֱלהֵינוּ אֶת דִּבְרֵי תורָתְךָ בְּפִינוּ וּבְפִיּות עַמְּךָ בֵּית יִשרָאֵל. וְנִהְיֶה אֲנַחְנוּ וְצֶאֱצָאֵינוּ צֶאֱצָאֵי עַמְּךָ בֵּית יִשרָאֵל. כֻּלָּנוּ יודְעֵי שְׁמֶךָ וְלומְדֵי תורָתֶךָ לִשְׁמָהּ: בָּרוּךְ אַתָּה ה\' הַמְלַמֵּד תּורָה לְעַמּו יִשרָאֵל: בָּרוּךְ אַתָּה ה\' אֱלהֵינוּ מֶלֶךְ הָעולָם. אֲשֶׁר בָּחַר בָּנוּ מִכָּל הָעַמִּים וְנָתַן לָנוּ אֶת תּורָתו: בָּרוּךְ אַתָּה ה\'. נותֵן הַתּורָה:",
              textAlign: TextAlign.justify,
              textDirection: TextDirection.rtl,
              style: GoogleFonts.suezOne(fontSize: 24),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "יְדַבֵּר ה\' אֶל משֶׁה לֵּאמר: צַו אֶת בְּנֵי יִשרָאֵל וְאָמַרְתָּ אֲלֵהֶם. אֶת קָרְבָּנִי לַחְמִי לְאִשַּׁי רֵיחַ נִיחחִי. תִּשְׁמְרוּ לְהַקְרִיב לִי בְּמועֲדו: וְאָמַרְתָּ לָהֶם. זֶה הָאִשֶּׁה אֲשֶׁר תַּקְרִיבוּ לה\'. כְּבָשים בְּנֵי שָׁנָה תְמִימִים. שְׁנַיִם לַיּום עלָה תָמִיד: אֶת הַכֶּבֶש אֶחָד תַּעֲשה בַבּקֶר. וְאֵת הַכֶּבֶש הַשֵּׁנִי תַּעֲשה בֵּין הָעַרְבָּיִם: וַעֲשירִית הָאֵיפָה סלֶת לְמִנְחָה. בְּלוּלָה בְּשֶׁמֶן כָּתִית רְבִיעִת הַהִין: עלַת תָּמִיד הָעֲשיָה בְּהַר סִינַי. לְרֵיחַ נִיחחַ אִשֶּׁה לה\': וְנִסְכּו רְבִיעִת הַהִין לַכֶּבֶש הָאֶחָד. בַּקּדֶשׁ הַסֵּךְ נֶסֶךְ שֵׁכָר לה\': וְאֵת הַכֶּבֶש הַשֵּׁנִי תַּעֲשה בֵּין הָעַרְבָּיִם. כְּמִנְחַת הַבּקֶר וּכְנִסְכּו תַּעֲשה. אִשֵּׁה רֵיחַ נִיחחַ לה\': וְשָׁחַט אתו עַל יֶרֶךְ הַמִּזְבֵּחַ צָפנָה לִפְנֵי ה\'. וְזָרְקוּ בְּנֵי אַהֲרן הַכּהֲנִים אֶת דָּמו עַל הַמִּזְבֵּחַ סָבִיב:\nוְהִפְשִׁיט אֶת־הָעֹלָה וְנִתַּח אֹתָהּ לִנְתָחֶיהָ׃ וְנָתְנוּ בְּנֵי אַהֲרֹן הַכֹּהֵן אֵשׁ עַל־הַמִּזְבֵּחַ וְעָרְכוּ עֵצִים עַל־הָאֵשׁ׃ וְעָרְכוּ בְּנֵי אַהֲרֹן הַכֹּהֲנִים אֵת הַנְּתָחִים אֶת־הָרֹאשׁ וְאֶת־הַפָּדֶר עַל־הָעֵצִים אֲשֶׁר עַל־הָאֵשׁ אֲשֶׁר עַל־הַמִּזְבֵּחַ׃ וְקִרְבּוֹ וּכְרָעָיו יִרְחַץ בַּמָּיִם וְהִקְטִיר הַכֹּהֵן אֶת־הַכֹּל הַמִּזְבֵּחָה עֹלָה אִשֵּׁה רֵיחַ־נִיחוֹחַ לַיהוָה׃",
              textAlign: TextAlign.justify,
              textDirection: TextDirection.rtl,
              style: GoogleFonts.suezOne(fontSize: 24),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "וַיּאמֶר ה\' אֶל משֶׁה קַח לְךָ סַמִּים נָטָף וּשְׁחֵלֶת וְחֶלְבְּנָה סַמִּים וּלְבנָה זַכָּה בַּד בְּבַד יִהְיֶה: וְעָשיתָ אתָהּ קְטרֶת רקַח מַעֲשה רוקֵחַ מְמֻלָּח טָהור קדֶשׁ: וְשָׁחַקְתָּ מִמֶּנָּה הָדֵק וְנָתַתָּה מִמֶּנָּה לִפְנֵי הָעֵדֻת בְּאהֶל מועֵד אֲשֶׁר אִוָּעֵד לְךָ שָׁמָּה קדֶשׁ קָדָשִׁים תִּהְיֶה לָכֶם: וְנֶאֱמַר וְהִקְטִיר עָלָיו אַהֲרן קְטרֶת סַמִּים בַּבּקֶר בַּבּקֶר בְּהֵיטִיבו אֶת הַנֵּרות יַקְטִירֶנָּה: וּבְהַעֲלת אַהֲרן אֶת הַנֵּרות בֵּין הָעַרְבַּיִם יַקְטִירֶנָּה קְטרֶת תָּמִיד לִפְנֵי ה\' לְדרתֵיכֶם:",
              textAlign: TextAlign.justify,
              textDirection: TextDirection.rtl,
              style: GoogleFonts.suezOne(fontSize: 24),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "פִּטּוּם הַקְּטרֶת, הַצֳּרִי וְהַצִּפּרֶן הַחֶלְבְּנָה וְהַלְּבונָה מִשְׁקַל שִׁבְעִים שִׁבְעִים מָנֶה. מר וּקְצִיעָה שִׁבּלֶת נֵרְדְּ וְכַרְכּם מִשְׁקַל שִׁשָּׁה עָשר שִׁשָּׁה עָשר מָנֶה. הַקּשְׁטְ שְׁנֵים עָשר. קִלּוּפָה שְׁלשָׁה. קִנָּמון תִּשְׁעָה. בּרִית כַּרְשִׁינָה תִּשְׁעָה קַבִּין. יֵין קַפְרִיסִין סְאִין תְּלָתָא וְקַבִּין תְּלָתָא וְאִם לא מָצָא יֵין קַפְרִיסִין מֵבִיא חֲמַר חִוַּרְיָן עַתִּיק, מֶלַח סְדומִית רבַע מַעֲלֶה עָשָׁן כָּל שֶׁהוּא, רִבִּי נָתָן הַבַּבְלִי אומֵר אַף כִּפַּת הַיַּרְדֵּן כָּל שֶׁהוּא וְאִם נָתַן בָּהּ דְּבַשׁ פְּסָלָהּ. וְאִם חִסַּר אַחַת מִכָּל סַמָּנֶיהָ חַיָּב מִיתָה:",
              textAlign: TextAlign.justify,
              textDirection: TextDirection.rtl,
              style: GoogleFonts.suezOne(fontSize: 24),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "רִבִּי שִׁמְעון בֶּן גַּמְלִיאֵל אומֵר הַצֳּרִי אֵינו אֶלָּא שרָף הַנּוטֵף מֵעֲצֵי הַקְּטָף. בּרִית כַּרְשִׁינָה שֶׁשָׁפִין בָּה אֶת הַצִּפּרֶן כְּדֵי שֶׁתְּהֵא נָאָה. יֵין קַפְרִיסִין שֶׁשׁורִין בּו אֶת הַצִּפּרֶן כְּדֵי שֶׁתְּהֵא עַזָּה. וַהֲלא מֵי רַגְלַיִם יָפִין לָהּ אֶלָּא שֶׁאֵין מַכְנִיסִין מֵי רַגְלַיִם בַּמִּקְדָּשׁ מִפְּנֵי הַכָּבוד:",
              textAlign: TextAlign.justify,
              textDirection: TextDirection.rtl,
              style: GoogleFonts.suezOne(fontSize: 24),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "בר״ח מוסיפים:",
              textAlign: TextAlign.center,
              textDirection: TextDirection.rtl,
              style: GoogleFonts.suezOne(fontSize: 18),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "בְרָאשֵׁי חָדְשֵׁיכֶם תַּקְרִיבוּ עלָה לה\', פָּרִים בְּנֵי בָקָר שְׁנַיִם וְאַיִל אֶחָד, כְּבָשים בְּנֵי שָׁנָה שִׁבְעָה תְּמִימִים: וּשְׁלשָׁה עֶשרנִים סלֶת מִנְחָה בְּלוּלָה בַשֶּׁמֶן לַפָּר הָאֶחָד, וּשְׁנֵי עֶשרנִים סלֶת מִנְחָה בְּלוּלָה בַשֶּׁמֶן לָאַיִל הָאֶחָד: וְעִשּרן עִשּרון סלֶת מִנְחָה בְּלוּלָה בַשֶּׁמֶן לַכֶּבֶש הָאֶחָד, עלָה רֵיחַ נִיחחַ אִשֶּׁה לה\': וְנִסְכֵּיהֶם, חֲצִי הַהִין יִהְיֶה לַפָּר, וּשְׁלִישִׁת הַהִין לָאַיִל, וּרְבִיעִת הַהִין לַכֶּבֶש יָיִן, זאת עלַת חדֶשׁ בְּחָדְשׁו לְחָדְשֵׁי הַשָּׁנָה: וּשעִיר עִזִּים אֶחָד לְחַטָּאת לה\', עַל עלַת הַתָּמִיד יֵעָשה וְנִסְכּו:",
              textAlign: TextAlign.justify,
              textDirection: TextDirection.rtl,
              style: GoogleFonts.suezOne(fontSize: 24),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "אֵיזֶהוּ מְקומָן שֶׁל זְבָחִים. קָדְשֵׁי קָדָשִׁים שְׁחִיטָתָן בַּצָּפון. פָּר וְשעִיר שֶׁל יום הַכִּפּוּרִים שְׁחִיטָתָן בַּצָּפון וְקִבּוּל דָּמָן בִּכְלִי שָׁרֵת בַּצָּפון וְדָמָן טָעוּן הַזָּיָה עַל בֵּין הַבַּדִּים וְעַל הַפָּרכֶת וְעַל מִזְבַּח הַזָּהָב. מַתָּנָה אַחַת מֵהֶן מְעַכָּבֶת. שְׁיָרֵי הַדָּם הָיָה שׁופֵךְ עַל יְסוד מַעֲרָבִי שֶׁל מִזְבֵּחַ הַחִיצון אִם לא נָתַן לא עִכֵּב:",
              textAlign: TextAlign.justify,
              textDirection: TextDirection.rtl,
              style: GoogleFonts.suezOne(fontSize: 24),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "פָּרִים הַנִּשרָפִים וּשעִירִים הַנִּשרָפִים. שְׁחִיטָתָן בַּצָּפון וְקִבּוּל דָּמָן בִּכְלִי שָׁרֵת בַּצָּפון וְדָמָן טָעוּן הַזָּיָה עַל הַפָּרכֶת וְעַל מִזְבַּח הַזָּהָב. מַתָּנָה אַחַת מֵהֶן מְעַכָּבֶת. שְׁיָרֵי הַדָּם הָיָה שׁופֵךְ עַל יְסוד מַעֲרָבִי שֶׁל מִזְבֵּחַ הַחִיצון. אִם לא נָתַן לא עִכֵּב. אֵלּוּ וָאֵלּוּ נִשרָפִין בְּבֵית הַדָּשֶׁן:",
              textAlign: TextAlign.justify,
              textDirection: TextDirection.rtl,
              style: GoogleFonts.suezOne(fontSize: 24),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "חַטּאת הַצִּבּוּר וְהַיָּחִיד. אֵלּוּ הֵן חַטּאת הַצִּבּוּר. שעִירֵי רָאשֵׁי חֳדָשִׁים וְשֶׁל מועֲדות שְׁחִיטָתָן בַּצָּפון וְקִבּוּל דָּמָן בִּכְלִי שָׁרֵת בַּצָּפון וְדָמָן טָעוּן אַרְבַּע מַתָּנות עַל אַרְבַּע קְרָנות. כֵּיצַד. עָלָה בַכֶּבֶשׁ וּפָנָה לַסּובֵב וּבָא לו לְקֶרֶן דְּרומִית מִזְרָחִית. מִזְרָחִית צְפונִית. צְפונִית מַעֲרָבִית. מַעֲרָבִית דְּרומִית. שְׁיָרֵי הַדָּם הָיָה שׁופֵךְ עַל יְסוד דְּרומִי. וְנֶאֱכָלִין לִפְנִים מִן הַקְּלָעִים. לְזִכְרֵי כְהֻנָּה. בְּכָל מַאֲכָל. לְיום וָלַיְלָה עַד חֲצות:",
              textAlign: TextAlign.justify,
              textDirection: TextDirection.rtl,
              style: GoogleFonts.suezOne(fontSize: 24),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "הָעולָה קדֶשׁ קָדָשִׁים. שְׁחִיטָתָהּ בַּצָּפון וְקִבּוּל דָּמָהּ בִּכְלִי שָׁרֵת בַּצָּפון. וְדָמָהּ טָעוּן שְׁתֵּי מַתָּנות שֶׁהֵן אַרְבַּע. וּטְעוּנָה הֶפְשֵׁט וְנִתּוּחַ וְכָלִיל לָאִשִּׁים:",
              textAlign: TextAlign.justify,
              textDirection: TextDirection.rtl,
              style: GoogleFonts.suezOne(fontSize: 24),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "זִבְחֵי שַׁלְמֵי צִבּוּר וַאֲשָׁמות. אֵלּוּ הֵן אֲשָׁמות. אֲשַׁם גְּזֵלות. אֲשַׁם מְעִילות. אֲשַׁם שִׁפְחָה חֲרוּפָה. אֲשַׁם נָזִיר. אֲשַׁם מְצרָע. אָשָׁם תָּלוּי. שְׁחִיטָתָן בַּצָּפון וְקִבּוּל דָּמָן בִּכְלִי שָׁרֵת בַּצָּפון. וְדָמָן טָעוּן שְׁתֵּי מַתָּנות שֶׁהֵן אַרְבַּע. וְנֶאֱכָלִין לִפְנִים מִן הַקְּלָעִים. לְזִכְרֵי כְהֻנָּה. בְּכָל מַאֲכָל. לְיום וָלַיְלָה עַד חֲצות:",
              textAlign: TextAlign.justify,
              textDirection: TextDirection.rtl,
              style: GoogleFonts.suezOne(fontSize: 24),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "הַתּודָה וְאֵיל נָזִיר קָדָשִׁים קַלִּים. שְׁחִיטָתָן בְּכָל מָקום בָּעֲזָרָה. וְדָמָן טָעוּן שְׁתֵּי מַתָּנות שֶׁהֵן אַרְבַּע. וְנֶאֱכָלִין בְּכָל הָעִיר. לְכָל אָדָם. בְּכָל מַאֲכָל. לְיום וָלַיְלָה עַד חֲצות: הַמּוּרָם מֵהֶם כַּיּוצֵא בָהֶם. אֶלָּא שֶׁהַמּוּרָם נֶאֱכָל לַכּהֲנִים לִנְשֵׁיהֶם וְלִבְנֵיהֶם וּלְעַבְדֵיהֶם:",
              textAlign: TextAlign.justify,
              textDirection: TextDirection.rtl,
              style: GoogleFonts.suezOne(fontSize: 24),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "שְׁלָמִים קָדָשִׁים קַלִּים. שְׁחִיטָתָן בְּכָל מָקום בָּעֲזָרָה. וְדָמָן טָעוּן שְׁתֵּי מַתָּנות שֶׁהֵן אַרְבַּע. וְנֶאֱכָלִין בְּכָל הָעִיר. לְכָל אָדָם. בְּכָל מַאֲכָל. לִשְׁנֵי יָמִים וְלַיְלָה אֶחָד: הַמּוּרָם מֵהֶם כַּיּוצֵא בָהֶם. אֶלָּא שֶׁהַמּוּרָם נֶאֱכָל לַכּהֲנִים לִנְשֵׁיהֶם וְלִבְנֵיהֶם וּלְעַבְדֵיהֶם:",
              textAlign: TextAlign.justify,
              textDirection: TextDirection.rtl,
              style: GoogleFonts.suezOne(fontSize: 24),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "בְּכור וְהַמַּעֲשר וְהַפֶּסַח קָדָשִׁים קַלִּים. שְׁחִיטָתָן בְּכָל מָקום בָּעֲזָרָה. וְדָמָן טָעוּן מַתָּנָה אֶחָת. וּבִלְבָד שֶׁיִּתֵּן כְּנֶגֶד הַיְסוד. שִׁנָּה בַאֲכִילָתָן. הַבְּכור נֶאֱכָל לַכּהֲנִים. וְהַמַּעֲשר לְכָל אָדָם. וְנֶאֱכָלִין בְּכָל הָעִיר. בְּכָל מַאֲכָל. לִשְׁנֵי יָמִים וְלַיְלָה אֶחָד: הַפֶּסַח אֵינו נֶאֱכָל אֶלָּא בַלַּיְלָה. וְאֵינו נֶאֱכָל אֶלָּא עַד חֲצות. וְאֵינו נֶאֱכָל אֶלָּא לִמְנוּיָיו. וְאֵינו נֶאֱכָל אֶלָּא צָלִי:",
              textAlign: TextAlign.justify,
              textDirection: TextDirection.rtl,
              style: GoogleFonts.suezOne(fontSize: 24),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "רִבִּי יִשְׁמָעֵאל אומֵר. בִּשְׁלשׁ עֶשרֵה מִדּות הַתּורָה נִדְרֶשֶׁת: מִקַּל וָחמֶר. וּמִגְּזֵרָה שָׁוָה. מִבִּנְיַן אָב מִכָּתוּב אֶחָד. וּמִבִּנְיַן אָב מִשְּׁנֵי כְתוּבִים. מִכְּלָל וּפְרָט. וּמִפְּרָט וּכְלָל. כְּלָל וּפְרָט וּכְלָל. אִי אַתָּה דָן אֶלָּא כְּעֵין הַפְּרָט. מִכְּלָל שֶׁהוּא צָרִיךְ לִפְרָט. וּמִפְּרָט שֶׁהוּא צָרִיךְ לִכְלָל. כָּל דָּבָר שֶׁהָיָה בִּכְלָל וְיָצָא מִן הַכְּלָל לְלַמֵּד. לא לְלַמֵּד עַל עַצְמו יָצָא. אֶלָּא לְלַמֵּד עַל הַכְּלָל כֻּלּו יָצָא. כָּל דָּבָר שֶׁהָיָה בִּכְלָל וְיָצָא לִטְעון טעַן אֶחָד שֶׁהוּא כְעִנְיָנו. יָצָא לְהָקֵל וְלא לְהַחֲמִיר. כָּל דָּבָר שֶׁהָיָה בִּכְלָל וְיָצָא לִטְעון טעַן אַחֵר שֶׁלּא כְעִנְיָנו. יָצָא לְהָקֵל וּלְהַחֲמִיר. כָּל דָּבָר שֶׁהָיָה בִּכְלָל וְיָצָא לִדּון בַּדָּבָר הֶחָדָשׁ. אִי אַתָּה יָכול לְהַחֲזִירו לִכְלָלו עַד שֶׁיַּחֲזִירֶנּוּ הַכָּתוּב לִכְלָלו בְּפֵרוּשׁ. דָּבָר הַלָּמֵד מֵעִנְיָנו. וְדָבָר הַלָּמֵד מִסּופו. וְכֵן שְׁנֵי כְתוּבִים הַמַּכְחִישִׁים זֶה אֶת זֶה. עַד שֶׁיָּבוא הַכָּתוּב הַשְּׁלִישִׁי וְיַכְרִיעַ בֵּינֵיהֶם:",
              textAlign: TextAlign.justify,
              textDirection: TextDirection.rtl,
              style: GoogleFonts.suezOne(fontSize: 24),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "יְהִי רָצון מִלְּפָנֶיךָ ה\' אֱלהֵינוּ וֵאלהֵי אֲבותֵינוּ שֶׁיִּבָּנֶה בֵּית הַמִּקְדָּשׁ בִּמְהֵרָה בְיָמֵינוּ. וְתֵן חֶלְקֵנוּ בְּתורָתֶךָ:",
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
