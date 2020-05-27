import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:siddur/blocs/page_changer.dart';
import 'package:siddur/blocs/theme.dart';
import 'package:siddur/tools/hebrewcalendar/hebrew_date_formatter.dart';
import 'package:siddur/tools/hebrewcalendar/jewish_calendar.dart';

class CustomDrawer extends StatefulWidget {
  final Widget child;

  const CustomDrawer({Key key, @required this.child}) : super(key: key);

  static CustomDrawerState of(BuildContext context) =>
      context.findAncestorStateOfType<CustomDrawerState>();

  @override
  CustomDrawerState createState() => new CustomDrawerState();
}

class CustomDrawerState extends State<CustomDrawer>
    with SingleTickerProviderStateMixin , WidgetsBindingObserver{
  static const Duration toggleDuration = Duration(milliseconds: 250);
  static const double maxSlide = 225;
  static const double minDragStartEdge = 60;
  static const double maxDragStartEdge = maxSlide - 16;
  AnimationController _animationController;
  bool _canBeDragged = false;

  Widget mainScreen;


  @override
  void initState()  {
    super.initState();

    _animationController = AnimationController(
      vsync: this,
      duration: CustomDrawerState.toggleDuration,

    );
    WidgetsBinding.instance.addObserver(this);

  }

  void close() => _animationController.reverse();

  void open() => _animationController.forward();

  void toggleDrawer() => _animationController.isCompleted ? close() : open();

  @override
  void dispose() {
    _animationController.dispose();
    WidgetsBinding.instance.removeObserver(this);

    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    mainScreen = widget.child;

    return WillPopScope(
      onWillPop: () async {
        if (_animationController.isCompleted) {
          close();
          return false;
        }
        return true;
      },
      child: GestureDetector(
        onHorizontalDragStart: _onDragStart,
        onHorizontalDragUpdate: _onDragUpdate,
        onHorizontalDragEnd: _onDragEnd,
        child: AnimatedBuilder(
          animation: _animationController,
          child: mainScreen,
          builder: (context, child) {
            double animValue = _animationController.value;
            final slideAmount = maxSlide * animValue;
            final contentScale = 1.0 - (0.3 * animValue);
            return Stack(
              children: <Widget>[
                MyDrawer(),
                Transform(
                  transform: Matrix4.identity()
                    ..translate(slideAmount)
                    ..scale(contentScale, contentScale),
                  alignment: Alignment.centerLeft,
                  child: GestureDetector(
                    onTap: _animationController.isCompleted ? close : null,
                    child: _animationController.value != 0
                        ? Card(
                            elevation: _animationController.value * 4,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(35.0),
                            ),
                            child: ClipRRect(
                              child: child,
                              borderRadius: BorderRadius.circular(35.0),
                            ),
                          )
                        : child,
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }

  void _onDragStart(DragStartDetails details) {
    bool isDragOpenFromLeft = _animationController.isDismissed &&
        details.globalPosition.dx < minDragStartEdge;
    bool isDragCloseFromRight = _animationController.isCompleted &&
        details.globalPosition.dx > maxDragStartEdge;

    _canBeDragged = isDragOpenFromLeft || isDragCloseFromRight;
  }

  void _onDragUpdate(DragUpdateDetails details) {
    if (_canBeDragged) {
      double delta = details.primaryDelta / maxSlide;
      _animationController.value += delta;
    }
  }

  void _onDragEnd(DragEndDetails details) {
    //I have no idea what it means, copied from Drawer
    double _kMinFlingVelocity = 365.0;

    if (_animationController.isDismissed || _animationController.isCompleted) {
      return;
    }
    if (details.velocity.pixelsPerSecond.dx.abs() >= _kMinFlingVelocity) {
      double visualVelocity = details.velocity.pixelsPerSecond.dx /
          MediaQuery.of(context).size.width;

      _animationController.fling(velocity: visualVelocity);
    } else if (_animationController.value < 0.5) {
      close();
    } else {
      open();
    }
  }
}

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ThemeChanger _themeChanger = Provider.of<ThemeChanger>(context);
    PageChanger _pageChanger = Provider.of<PageChanger>(context);
    DateTime today = DateTime.now();
    DateTime nextShabbos = today;
    if(nextShabbos.weekday!=6)
      {
        var daysToAdd = 6-nextShabbos.weekday;

        nextShabbos = nextShabbos.add(Duration(days: daysToAdd));

      }
    return Material(
//      color: Colors.indigo,
      child: SafeArea(
        child: Row(
          children: [
            Container(
              width: MediaQuery.of(context).size.width / 1.83,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.all(16),
                    child: Center(
                      child: Text(
                        "סידור",
                        style: GoogleFonts.secularOne(fontSize: 35),
                      ),
                    ),
                  ),
                  Center(
                    child: Text(
                      JewishCalendar.fromDateTime(today).toString(),
                      style: GoogleFonts.secularOne(),
                    ),
                  ),
                  (HebrewDateFormatter().formatParsha(new JewishCalendar.fromDateTime(nextShabbos))!="")?Center(
                    child: Text(
                      HebrewDateFormatter().formatParsha(new JewishCalendar.fromDateTime(nextShabbos)),
                      style: GoogleFonts.secularOne(),
                    ),
                  ):Container(),
//                  Center(
//                    child: Text(
//                        JewishCalendar.fromDateTime(today).getDafYomiBavli().getDaf().toString()+ " "+JewishCalendar.fromDateTime(DateTime.now()).getDafYomiBavli().getMasechta().toString(),
//                      style: GoogleFonts.secularOne(),
//                    ),
//                  ),
                  (JewishCalendar.fromDateTime(today).getDayOfOmer()!=-1)
                      ?Padding(
                        padding: const EdgeInsets.only(bottom:16.0),
                        child: Center(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                JewishCalendar.fromDateTime(today).getDayOfOmer().toString(),
                                style: GoogleFonts.secularOne(color: Colors.redAccent),
                              ),
                              Text(
                                "  days of the Omer",
                                style: GoogleFonts.secularOne(),
                              ),
                            ],
                          ),
                        ),
                      )
                  :Container(),
                  ListTile(
                      onTap: () {
                        _pageChanger.setPageIndex(0);
                        CustomDrawer.of(context).close();
                      },
                      leading: Icon(Icons.brightness_2),
                      title: Text("Bed Time Shema")),
                  ListTile(

                      onTap: () {
                        _pageChanger.setPageIndex(1);
                        CustomDrawer.of(context).close();

                      },
                      leading: Icon(Icons.wb_sunny),
                      title: Text("Morning Prayer")),
                  ListTile(
                      onTap: () {
                        _pageChanger.setPageIndex(2);
                        CustomDrawer.of(context).close();

                      },
                      leading: Icon(Icons.airplanemode_active),
                      title: Text("Travel Prayer")),
                  ListTile(
                      onTap: () {
                        _pageChanger.setPageIndex(3);
                        CustomDrawer.of(context).close();

                      },
                      leading: Icon(Icons.brightness_1),
                      title: Text("Moon Prayer")),
                  ListTile(
                      onTap: () {
                        _pageChanger.setPageIndex(4);
                        CustomDrawer.of(context).close();

                      },
                      leading: Icon(Icons.library_books),
                      title: Text("Study Prayer")),
//                  ListTile(
//                      onTap: () {
//                        _pageChanger.setPageIndex(5);
//                        CustomDrawer.of(context).close();
//
//                      },
//                      leading: Icon(Icons.library_books),
//                      title: Text("Zmanim")),
                  Expanded(child: Container()),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: ListTile(
                        onTap: () {
                          _pageChanger.setPageIndex(4);
                          CustomDrawer.of(context).close();

                        },
                        leading: Icon(Icons.info_outline),
                        title: Text("About")
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: IconButton(
                        icon: Icon(Icons.lightbulb_outline),
                        onPressed: () async{
                          _themeChanger.switchThem();
                          await saveThemePreference(_themeChanger.isDark());

                        },
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
  saveThemePreference(bool value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setBool('isThemeBrightnessDark', value);
  }
}
