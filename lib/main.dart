import 'package:attiire_referral/Pages/CommissionBreakDown.dart';
import 'package:attiire_referral/Pages/ListOfUser.dart';
import 'package:attiire_referral/Pages/PaidCom.dart';
import 'package:attiire_referral/Pages/RangeOrder.dart';
import 'package:attiire_referral/Pages/TodaysOrder.dart';
import 'package:attiire_referral/Pages/WeeklyOrder.dart';
import 'package:attiire_referral/widgets/AppBarCustom.dart';
import 'package:bitsdojo_window/bitsdojo_window.dart';
import 'Pages/CommPay.dart';
import 'Pages/Referral Tree.dart';
import 'columns/RightColumn.dart';
import 'columns/LeftColumn.dart';
import 'package:sqlite3/sqlite3.dart' as sq;
import 'package:sqlite3/open.dart';
import 'package:sqlite3_library_windows/sqlite3_library_windows.dart';
import 'package:flutter/material.dart';
import 'database/database.dart';

AppDb database = AppDb();
Color color = Colors.lightGreen;
main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // doWhenWindowReady(() {
  //   final initialSize = Size(1450, 850);
  //
  //   appWindow.minSize = initialSize;
  //   appWindow.size = initialSize;
  //   appWindow.alignment = Alignment.center;
  //   appWindow.title = "Saanchi Ayurveda";
  //   appWindow.show();
  // });
  open.overrideFor(OperatingSystem.windows, openSQLiteOnWindows);

  final db = sq.sqlite3.openInMemory();
  db.dispose();
  runApp(MyApp());
}

var dropdownValue;

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          fontFamily: 'PTSans-Regular',
          primaryColor: Colors.lightGreen,
          accentColor: Colors.lightGreenAccent),
      title: 'Shop Referral',
      home: MainScreen(),
    );
  }
}

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  var pageView = 1;
  var selectedButtonColor;
  changeView(value, s, e) {
    setState(() {
      pageView = value;
      start = s;
      end = e;
    });
  }

  var start;
  var end;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/bg.png'), fit: BoxFit.cover)),
        child: Center(
          child: Column(
            children: [
              Expanded(
                child: Row(
                  children: [
                    Expanded(
                        flex: 6,
                        child: Container(
                          child: LeftColumn(
                            database: database,
                            changeView: changeView,
                          ),
                        )),
                    Expanded(
                      flex: 20,
                      child: Column(
                        children: [
                          pageView == 1
                              ? AppBarCustom("All Orders", changeView, false)
                              : pageView == 2
                                  ? AppBarCustom('All User', changeView, false)
                                  : pageView == 3
                                      ? AppBarCustom('Commision BreakDown',
                                          changeView, false)
                                      : pageView == 4
                                          ? AppBarCustom("Today's Order",
                                              changeView, false)
                                          : pageView == 5
                                              ? AppBarCustom(
                                                  "Last Week's Order",
                                                  changeView,
                                                  false)
                                              : pageView == 6
                                                  ? AppBarCustom("Order Range",
                                                      changeView, true)
                                                  : pageView == 7
                                                      ? AppBarCustom(
                                                          "Commission Payment",
                                                          changeView,
                                                          false)
                                                      : pageView == 8
                                                          ? AppBarCustom(
                                                              "Commission Payment",
                                                              changeView,
                                                              false)
                                                          : pageView == 9
                                                              ? AppBarCustom(
                                                                  "Commission Tree",
                                                                  changeView,
                                                                  false)
                                                              : Container(),
                          Expanded(
                              child: pageView == 1
                                  ? RightColumn(
                                      database: database,
                                    )
                                  : pageView == 2
                                      ? ListOfUser(
                                          database: database,
                                        )
                                      : pageView == 3
                                          ? ComBrDn(database: database)
                                          : pageView == 4
                                              ? TodayOrder(database: database)
                                              : pageView == 5
                                                  ? WeekOrder(
                                                      database: database)
                                                  : pageView == 6
                                                      ? RangeOrder(
                                                          database: database,
                                                          start: start,
                                                          end: end,
                                                        )
                                                      : pageView == 7
                                                          ? ComBrDnP(
                                                              changeView:
                                                                  changeView,
                                                              database:
                                                                  database)
                                                          : pageView == 8
                                                              ? PaidComm(
                                                                  database:
                                                                      database,
                                                                  changeView:
                                                                      changeView)
                                                              : pageView == 9
                                                                  ? Tree(
                                                                      database:
                                                                          database)
                                                                  : Container()),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
