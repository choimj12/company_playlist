//검색 화면 입니다.

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:firebase_storage/firebase_storage.dart';

//Theme
import 'package:companyplaylist/Theme/theme.dart';

//Code
import 'package:companyplaylist/Src/format_code.dart';
import 'package:companyplaylist/Src/user_provider_code.dart';

class SearchPage extends StatefulWidget{
  @override
  SearchPageState createState() => SearchPageState();
}

class SearchPageState extends State<SearchPage>{
  //Calendar
  CalendarController _calendarController;

  //TabBar
  int tabIndex = 0;

  @override
  void initState() {
    super.initState();
    _calendarController = CalendarController();
  }

  @override
  Widget build(BuildContext context) {
    //이미지 가져오기
    FirebaseStorage _firebaseStorage = FirebaseStorage.instance;
    String _profileImageURL;
    StorageReference storageReference = _firebaseStorage.ref().child("000029.JPG");

    UserProvider up = Provider.of<UserProvider>(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: top_color,
        elevation: 0,
        automaticallyImplyLeading: false,

        title: Row(
          children: <Widget>[
            Icon(
              Icons.power_settings_new,
              size: 30,
            ),
            Padding(
              padding: EdgeInsets.only(left: 10),
            ),
            Text(
              "근무중",
              style: customStyle(20, 'Regular', white_color),
            ),
          ],
        ),
        actions: <Widget>[
          Container(
            alignment: Alignment.center,
            width: 80,
            child: Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: white_color,
                  border: Border.all(color: white_color, width: 2)
              ),
              child: Image.network(
                "https://firebasestorage.googleapis.com/v0/b/company-playlist.appspot.com/o/000029.JPG?alt=media&token=f241c1cf-ec76-41d4-849f-82b6a4af39df",
                fit: BoxFit.fill,
              ),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Stack(
              children: <Widget>[
                Container(
                  height: 50,
                  color: top_color,
                ),
                Positioned(
                  child: Container(
                      decoration: BoxDecoration(
                          color: white_color,
                          borderRadius: BorderRadius.only(
                              topRight: Radius.circular(30),
                              topLeft: Radius.circular(30)
                          )
                      ),
                      child: Column(
                        children: <Widget>[
                          TableCalendar(
                            calendarController: _calendarController,
                            initialCalendarFormat: CalendarFormat.week,
                            availableCalendarFormats: {
                              CalendarFormat.week : "Week",
                              CalendarFormat.month : "Month"
                            },
                            locale: 'ko_KR',
                            headerStyle: HeaderStyle(
                                centerHeaderTitle: true,
                                formatButtonDecoration: BoxDecoration(
                                    color: top_color,
                                    borderRadius: BorderRadius.circular(20)
                                ),
                                formatButtonTextStyle: customStyle(13, 'Bold', white_color)
                            ),
                            calendarStyle: CalendarStyle(
                                selectedColor: top_color,
                                selectedStyle: customStyle(18, 'Bold', white_color)
                            ),
                          ),

                        ],
                      )
                  ),
                )
              ],
            ),
            Padding(
              padding: EdgeInsets.only(top: 5),
            ),
            Container(
              height: 50,
              width: 390,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: tab_color
              ),
            ),
          ],
        ),
      ),
    );
  }
}