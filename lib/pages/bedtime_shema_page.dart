import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'CustomDrawer.dart';

class BedTimeShema extends StatelessWidget {
  BedTimeShema();

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
        title: Text('Bed Time Shema'),
      ),
      body: Center(
          child: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "בָּרוּךְ אַתָּה יְיָ אֱלהֵינוּ מֶלֶך הָעוֹלָם הַמַּפִּיל חֶבְלֵי שֵׁנָה עַל עֵינַי, וּתְנוּמָה עַל עַפְעַפַּי. ִיהִי רָצוֹן מִלְּפָנֶיךָ יְיָ אֱלֹהַי וֵאלֹהֵי אֲבוֹתַי, שֶתַּשְׁכִּיבֵנִי לְשָׁלוֹם וְתַעֲמִידֵנִי לְשָׁלוֹם. וְאַל יְבַהֲלוּנִי רַעְיוֹנַי וַחֲלוֹמוֹת רָעִים וְהִרְהוּרִים רָעִים, וּתְהֵא מִטָּתִי שְׁלֵמָה לְפָנֶיךָ. וְהָאֵר עֵינַי פֶּן אִישַׁן הַמָּוֶת. בָּרוּך אַתָּה יְיָ הַמֵּאִיר לָעוֹלָם כֻּלּוֹ בִּכְבוֹדוֹ.",
              textAlign: TextAlign.justify,
              textDirection: TextDirection.rtl,
              style: GoogleFonts.suezOne(fontSize: 24),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "אֵל מֶלֶךְ נֶאֱמָן",
              textAlign: TextAlign.center,
              textDirection: TextDirection.rtl,
              style: GoogleFonts.suezOne(fontSize: 20),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "שְׁמַע יִשרָאֵל ה\' אֱלהֵינוּ ה\' אֶחָד",
              textAlign: TextAlign.center,
              textDirection: TextDirection.rtl,
              style: GoogleFonts.suezOne(fontSize: 34),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "בָּרוּךְ שֵׁם כְּבוד מַלְכוּתו לְעולָם וָעֶד:",
              textAlign: TextAlign.center,
              textDirection: TextDirection.rtl,
              style: GoogleFonts.suezOne(fontSize: 20),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "וְאָהַבְתָּ אֵת ה\' אֱלהֶיךָ בְּכָל לְבָבְךָ וּבְכָל נַפְשְׁךָ וּבְכָל מְאדֶךָ: וְהָיוּ הַדְּבָרִים הָאֵלֶּה אֲשֶׁר אָנכִי מְצַוְּךָ הַיּום עַל לְבָבֶךָ: וְשִׁנַּנְתָּם לְבָנֶיךָ וְדִבַּרְתָּ בָּם בְּשִׁבְתְּךָ בְּבֵיתֶךָ וּבְלֶכְתְּךָ בַדֶּרֶךְ וּבְשָׁכְבְּךָ וּבְקוּמֶךָ: וּקְשַׁרְתָּם לְאות עַל יָדֶךָ וְהָיוּ לְטטָפת בֵּין עֵינֶיךָ: וּכְתַבְתָּם עַל מְזֻזות בֵּיתֶךָ וּבִשְׁעָרֶיךָ:",
              textAlign: TextAlign.justify,
              textDirection: TextDirection.rtl,
              style: GoogleFonts.suezOne(fontSize: 24),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "יֹשֵׁב בְּסֵתֶר עֶלְיוֹן בְּצֵל שַׁדַּי יִתְלוֹנָן: אֹמַר לַיהוָה מַחְסִי וּמְצוּדָתִי, אֱלֹהַי אֶבְטַח בּוֹ: כִּי הוּא יַצִּילְךָ מִפַּח יָקוּשׁ, מִדֶּבֶר הַוּוֹת: בְּאֶבְרָתוֹ יָסֶךְ לָךְ וְתַחַת כְּנָפָיו תֶּחְסֶה, צִנָּה וְסֹחֵרָה אֲמִתּוֹ: לֹא תִירָא מִפַּחַד לָיְלָה, מֵחֵץ יָעוּף יוֹמָם: מִדֶּבֶר בָּאֹפֶל יַהֲלֹך,ְ מִקֶּטֶב יָשׁוּד צָהֳרָיִם: יִפֹּל מִצִּדְּךָ אֶלֶף וּרְבָבָה מִימִינֶךָ, אֵלֶיךָ לֹא יִגָּשׁ: רַק בְּעֵינֶיךָ תַבִּיט, וְשִׁלֻּמַת רְשָׁעִים תִּרְאֶה: כִּי אַתָּה יְהוָה מַחְסִי.",
              textAlign: TextAlign.justify,
              textDirection: TextDirection.rtl,
              style: GoogleFonts.suezOne(fontSize: 24),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "יְהוָה מָה רַבּוּ צָרָי רַבִּים קָמִים עָלָי: רַבִּים אֹמְרִים לְנַפְשִׁי, אֵין יְשׁוּעָתָה לּוֹ בֵאלֹהִים סֶלָה: וְאַתָּה יְהוָה מָגֵן בַּעֲדִי, כְּבוֹדִי וּמֵרִים רֹאשִׁי: קוֹלִי אֶל יְהוָה אֶקְרָא, וַיַּעֲנֵנִי מֵהַר קָדְשׁוֹ סֶלָה: אֲנִי שָׁכַבְתִּי וָאִישָׁנָה, הֱקִיצוֹתִי כִּי יְהוָה יִסְמְכֵנִי: לֹא אִירָא מֵרִבְבוֹת עָם, אֲשֶׁר סָבִיב שָׁתוּ עָלָי: קוּמָה יְהוָה הוֹשִׁיעֵנִי אֱלֹהַי כִּי הִכִּיתָ אֶת כָּל אֹיְבַי לֶחִי, שִׁנֵּי רְשָׁעִים שִׁבַּרְתָּ: לַיהוָה הַיְשׁוּעָה.",
              textAlign: TextAlign.justify,
              textDirection: TextDirection.rtl,
              style: GoogleFonts.suezOne(fontSize: 24),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "הַשְׁכִּיבֵנוּ יְיָ אֱלֹהֵינוּ לְשָׁלוֹם, וְהַעֲמִידֵנוּ מַלְכֵּנוּ לְחַיִּים, וּפְרוֹשׂ עָלֵינוּ סֻכַּת שְׁלוֹמֶךָ, וְתַקְּנֵנוּ בְּעֵצָה טוֹבָה מִלְּפָנֶיךָ, וְהוֹשִׁיעֵנוּ לְמַעַן שְׁמֶךָ. וְהָגֵן בַּעֲדֵנוּ, וְהָסֵר מֵעָלֵינוּ אוֹיֵב דֶּבֶר וְחֶרֶב וְרָעָב וְיָגוֹן, וְהָסֵר שָׂטָן מִלְּפָנֵינוּ וּמֵאַחֲרֵינוּ, וּבְצֵל כְּנָפֶיךָ תַּסְתִּירֵנוּ. כִּי אֵל שׁוֹמְרֵנוּ וּמַצִּילֵנוּ אָתָּה, כִּי אֵל מֶלֶךְ חַנּוּן וְרַחוּם אָתָּה, וּשְׁמוֹר צֵאתֵנוּ וּבוֹאֵנוּ לְחַיִּים וּלְשָׁלוֹם מֵעַתָּה וְעַד עוֹלָם.",
              textAlign: TextAlign.justify,
              textDirection: TextDirection.rtl,
              style: GoogleFonts.suezOne(fontSize: 24),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "בָּרוּךְ יְיָ בַּיּוֹם, בָּרוּךְ יְיָ בַּלָּיְלָה, בָּרוּךְ יְיָ בְּשָׁכְבֵנוּ, בָּרוּךְ יְיָ בְּקוּמֵנוּ. כִּי בְּיָדְךָ נַפְשׁוֹת הַחַיִּים וְהַמֵּתִים. אֲשֶׁר בְּיָדוֹ נֶפֶשׁ כָּל חָי, וְרוּחַ כָּל בְּשַׂר אִישׁ: בְּיָדְךָ אַפְקִיד רוּחִי, פָּדִיתָה אוֹתִי יְהוָה אֵל אֱמֶת: אֱלֹקֵינוּ שֶׁבַּשָּׁמַיִם יַחֵד שִׁמְךָ, וְקַיֵּם מַלְכוּתְךָ תָּמִיד, וּמְלֹך עָלֵינוּ לְעוֹלָם וָעֶד.",
              textAlign: TextAlign.justify,
              textDirection: TextDirection.rtl,
              style: GoogleFonts.suezOne(fontSize: 24),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "יִרְאוּ עֵינֵינוּ וְיִשְׂמַח לִבֵּנוּ וְתָגֵל נַפְשֵׁנוּ בִּישׁוּעָתְךָ בֶּאֱמֶת, בֶאֱמֹר לְצִיּוֹן מָלַך אֱלֹהָיִךְ. יְיָ מֶלֶךְ. יְיָ מָלַךְ. יְיָ יִמְלֹךְ לְעוֹלָם וָעֶד: כִּי הַמַּלְכוּת שֶׁלְּךָ הִיא, וּלְעוֹלְמֵי עַד תִמְלֹךְ בְּכָבוֹד, כֵּי אֵין לָנוּ מֶלֶךְ אֶלָּא אָתָּה.",
              textAlign: TextAlign.justify,
              textDirection: TextDirection.rtl,
              style: GoogleFonts.suezOne(fontSize: 24),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "הַמַּלְאָךְ הַגֹּאֵל אֹתִי מִכָּל רָע יְבָרֵךְ אֶת הַנְּעָרִים, וְיִקָּרֵא בָהֶם שְׁמִי, וְשֵׁם אֲבֹתַי אַבְרָהָם וְיִצְחָק, וְיִדְגּוּ לָרֹב בְּקֶרֶב הָאָרֶץ: וַיֹּאמֶר, אִם שָׁמוֹעַ תִּשְׁמַע לְקוֹל יְהוָה אֱלֹהֶיךָ וְהַיָּשָׁר בְּעֵינָיו תַּעֲשֶׂה וְהַאֲזַנְתָּ לְמִצְו‍ֹתָיו וְשָׁמַרְתָּ כָּל חֻקָּיו, כָּל הַמַּחֲלָה אֲשֶׁר שַׂמְתִּי בְמִצְרַיִם לֹא אָשִׂים עָלֶיךָ כִּי אֲנִי יְהוָה רֹפְאֶךָ: וַיֹּאמֶר יְהוָה אֶל הַשָּׂטָן, יִגְעַר יְהוָה בְּךָ הַשָּׂטָן וְיִגְעַר יְהוָה בְּךָ הַבֹּחֵר בִּירוּשָׁלָ‍ִם, הֲלוֹא זֶה אוּד מֻצָּל מֵאֵשׁ: הִנֵּה מִטָּתוֹ שֶׁלִּשְׁלֹמֹה שִׁשִּׁים גִּבֹּרִים סָבִיב לָהּ, מִגִּבֹּרֵי יִשְׂרָאֵל: כֻּלָּם אֲחֻזֵי חֶרֶב מְלֻמְּדֵי מִלְחָמָה, אִישׁ חַרְבּוֹ עַל יְרֵכוֹ מִפַּחַד בַּלֵּילוֹת:",
              textAlign: TextAlign.justify,
              textDirection: TextDirection.rtl,
              style: GoogleFonts.suezOne(fontSize: 24),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "יְבָרֶכְךָ יְהוָה וְיִשְׁמְרֶךָ. יָאֵר יְהוָה פָּנָיו אֵלֶיךָ וִיחֻנֶּךָּ: כו יִשָּׂא יְהוָה פָּנָיו אֵלֶיךָ וְיָשֵׂם לְךָ שָׁלוֹם.",
              textAlign: TextAlign.justify,
              textDirection: TextDirection.rtl,
              style: GoogleFonts.suezOne(fontSize: 24),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "הִנֵּה לֹא יָנוּם וְלֹא יִישָׁן שׁוֹמֵר יִשְׂרָאֵל:",
              textAlign: TextAlign.justify,
              textDirection: TextDirection.rtl,
              style: GoogleFonts.suezOne(fontSize: 24),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "לִישׁוּעָתְךָ קִוִּיתִי יי. קִוִּיתִי יי לִישׁוּעָתְךָ. יי לִישׁוּעָתְךָ קִוִּיתִי.",
              textAlign: TextAlign.justify,
              textDirection: TextDirection.rtl,
              style: GoogleFonts.suezOne(fontSize: 24),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "שִׁיר הַמַּעֲלוֹת, אַשְׁרֵי כָּל יְרֵא יְהוָה, הַהֹלֵךְ בִּדְרָכָיו: יְגִיעַ כַּפֶּיךָ כִּי תֹאכֵל, אַשְׁרֶיךָ וְטוֹב לָךְ: אֶשְׁתְּךָ כְּגֶפֶן פֹּרִיָּה בְּיַרְכְּתֵי בֵיתֶךָ, בָּנֶיךָ כִּשְׁתִלֵי זֵיתִים סָבִיב לְשֻׁלְחָנֶךָ: הִנֵּה כִי כֵן יְבֹרַךְ גָּבֶר, יְרֵא יְהוָה: יְבָרֶכְךָ יְהוָה מִצִּיּוֹן, וּרְאֵה בְּטוּב יְרוּשָׁלָ‍ִם כֹּל יְמֵי חַיֶּיךָ: וּרְאֵה בָנִים לְבָנֶיךָ, שָׁלוֹם עַל יִשְׂרָאֵל:",
              textAlign: TextAlign.justify,
              textDirection: TextDirection.rtl,
              style: GoogleFonts.suezOne(fontSize: 24),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "אֲדוֹן עוֹלָם אֲשֶׁר מָלַךְ, בְּטֶרֶם כָּל יְצִיר נִבְרָא. לְעֵת נַעֲשָׂה בְּחֶפְצוֹ כָּל, אֲזַי מֶלֶךְ שְׁמוֹ נִקְרָא. וְאַחֲרֵי כִּכְלּוֹת הַכֹּל, לְבַדּוֹ יִמְלֹךְ נוֹרָא. וְהוּא הָיָה וְהוּא הֹוֶה, וְהוּא יִהְיֶה בְּתִפְאֲרָה. וְהוּא אֶחָד וְאֵין שֵׁנִי, לְהַמְשִׁיל לוֹ לְהַחְבִּירָה. בְּלִי רֵאשִׁית בְּלִי תַּכְלִית, וְלוֹ הָעֹז וְהַמִּשְׂרָה. וְהוּא אֱלִי וְחַי גּוֹאֲלִי, וְצוּר חֶבְלִי בְּיוֹם צָרָה. וְהוּא נִסִּי וּמָנוֹס לִי, מְנַת כּוֹסִי בְּיּוֹם אֶקְרָא. בְּיָדוֹ אַפְקִיד רוּחִי, בְּעֵת אִישַׁן וְאָעִירָהּ. וְעִם רוּחִי גְּוִיָּתִי, יְיָ לִי וְלֹא אִירָא.",
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
