//import 'package:companyplaylist/generated/i18n.dart';
//import 'package:companyplaylist/model/schedule_model.dart';
//import 'package:flutter/material.dart';
//import 'package:companyplaylist/src/format_code.dart';
//import 'package:companyplaylist/Theme/theme.dart';
//import 'package:table_calendar/table_calendar.dart';
//import 'package:companyplaylist/screen/my_scheqdrjim,.2         dule_page.dart';
//
//class MainPage extends StatefulWidget{
//  @override
//  MainPageState createState() => MainPageState();
//}
//
//class MainPageState extends State<MainPage>{
//  Format format = Format();
//  int tabIndex = 0;
//  CalendarController _calendarController;
//  MyScheduleModel myScheduleModel = MyScheduleModel();
//
//  @override
//  void initState() {
//    super.initState();
//    _calendarController = CalendarController();
//  }
//
//  @override
//  Widget build(BuildContext context) {
//    return Scaffold(
//      appBar: AppBar(
//        backgroundColor: main_color,
//        elevation: 0,
//        automaticallyImplyLeading: false,
//
//        title: Row(
//          children: <Widget>[
//            Icon(
//              Icons.power_settings_new,
//              size: 30,
//            ),
//            Padding(
//              padding: EdgeInsets.only(left: 10),
//            ),
//            Text(
//              "근무중"
//            )
//          ],
//        ),
//        actions: <Widget>[
//          Container(
//            alignment: Alignment.center,
//            width: 90,
//            child: Container(
//              width: 40,
//              height: 40,
//              color: Colors.yellow,
//              child: Text(
//                "민"
//              ),
//            )
//          ),
//        ],
//      ),
//      body: SingleChildScrollView(
//        child: Column(
//          children: <Widget>[
//            Stack(
//              children: <Widget>[
//                Container(
//                  height: 50,
//                  color: main_color
//                ),
//                Positioned(
//                  //top: 20,
//                  child: Container(
//                    decoration: BoxDecoration(
//                      color: Colors.white,
//                      borderRadius: BorderRadius.only(
//                        topLeft: Radius.circular(30),
//                        topRight: Radius.circular(30)
//                      )
//                    ),
//                    child: TableCalendar(
//                      initialCalendarFormat: CalendarFormat.week,
//                      calendarController: _calendarController,
//                      startingDayOfWeek: StartingDayOfWeek.monday,
//                      locale: 'ko_KR',
//                    ),
//                  ),
//                )
//              ],
//            ),
//            Container(
//              height: 50,
//              width: 390,
//              decoration: BoxDecoration(
//                borderRadius: BorderRadius.circular(8),
//                color: Colors.blueGrey
//              ),
//              child: Row(
//                mainAxisAlignment: MainAxisAlignment.center,
//                children: <Widget>[
//                  InkWell(
//                    child: Container(
//                      height: 40,
//                      width: 115,
//                      child: Center(
//                        child: Text(
//                          "나의 일정",
//                          style: TextStyle(
//                              fontFamily: fontStyle,
//                              fontSize: 14,
//                              fontWeight: FontWeight.w500,
//                              color: Color(0xff2F3A55)
//                          ),
//                        ),
//                      ),
//                      decoration: tabIndex == 0 ? BoxDecoration(
//                        borderRadius: BorderRadius.circular(12),
//                        color: Colors.white
//                      ) : null
//                    ),
//                    onTap: () {
//                      print("탭번호  $tabIndex");
//                      setState(() {
//                        tabIndex = 0;
//                      });
//                    },
//                  ),
//                  VerticalDivider(
//                    thickness: 2,
//                    color: Colors.blueGrey[800],
//                    indent: 10,
//                    endIndent: 10,
//                  ),
//                  InkWell(
//                    child: Container(
//                        height: 40,
//                        width: 115,
//                        child: Center(
//                          child: Text(
//                            "동료 일정",
//                            style: TextStyle(
//                              fontFamily: fontStyle,
//                              fontSize: 14,
//                              fontWeight: FontWeight.w500,
//                              color: Color(0xff2F3A55)
//                            ),
//                          ),
//                        ),
//                        decoration: tabIndex == 1 ? BoxDecoration(
//                            borderRadius: BorderRadius.circular(12),
//                            color: Colors.white
//                        ) : null
//                    ),
//                    onTap: () {
//                      print("탭번호  $tabIndex");
//                      setState(() {
//                        tabIndex = 1;
//                      });
//                    },
//                  ),
//                  VerticalDivider(
//                    thickness: 2,
//                    color: Colors.blueGrey[800],
//                    indent: 10,
//                    endIndent: 10,
//                  ),
//                  InkWell(
//                    child: Container(
//                        height: 40,
//                        width: 115,
//                        child: Center(
//                          child: Text(
//                            "내 결재함",
//                            style: TextStyle(
//                                fontFamily: fontStyle,
//                                fontSize: 14,
//                                fontWeight: FontWeight.w500,
//                                color: Color(0xff2F3A55)
//                            ),
//                          ),
//                        ),
//                        decoration: tabIndex == 2 ? BoxDecoration(
//                            borderRadius: BorderRadius.circular(12),
//                            color: Colors.white
//                        ) : null
//                    ),
//                    onTap: () {
//                      setState(() {
//                        tabIndex = 2;
//                      });
//                    },
//                  ),
//                ],
//              ),
//            ),
//            Padding(
//              padding: EdgeInsets.only(bottom: 5),
//            ),
//            Container(
//              width: 390,
//              decoration: BoxDecoration(
//                  borderRadius: BorderRadius.circular(8),
//                  color: Color(0xffEEEEEE)
//              ),
//              child: tabIndex == 0 ? MySchedulePage() : tabIndex == 1 ? Text(
//                "동료 일정",
//                style: TextStyle(
//                  fontSize: 30,
//                ),
//              ) : Text(
//                "내 결재함",
//                style: TextStyle(
//                  fontSize: 30
//                ),
//              )
//            )
//          ],
//        )
//      ),
//      bottomNavigationBar: BottomNavigationBar(
//        backgroundColor: Colors.white,
//        type: BottomNavigationBarType.fixed,
//        items: [
//          BottomNavigationBarItem(
//            icon: Icon(
//              Icons.calendar_today,
//              size: 25,
//            ),
//              title: Text(
//                  ""
//              )
//          ),
//          BottomNavigationBarItem(
//            icon: Icon(
//                Icons.search,
//              size: 25,
//            ),
//            title: Text(
//              ""
//            )
//          ),
//          BottomNavigationBarItem(
//            icon: Icon(
//              Icons.add_box,
//              size: 35,
//            ),
//            title: Text(
//            ""
//            )
//          ),
//          BottomNavigationBarItem(
//            icon: Icon(
//                Icons.notifications_none,
//              size: 25,
//            ),
//              title: Text(
//                  ""
//              )
//          ),
//          BottomNavigationBarItem(
//            icon: Icon(
//                Icons.menu,
//              size: 25,
//            ),
//              title: Text(
//                  ""
//              )
//          ),
//        ]
//      ),
//    );
//  }
//}