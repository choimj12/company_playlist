//하단바 입니다.

import 'package:flutter/material.dart';

//Screen
import 'package:companyplaylist/screen/schedule_page.dart';
import 'package:companyplaylist/screen/search_page.dart';
import 'package:companyplaylist/screen/create_page.dart';
import 'package:companyplaylist/screen/push_page.dart';
import 'package:companyplaylist/screen/setting_page.dart';

//Theme
import 'package:companyplaylist/Theme/theme.dart';
import 'package:flutter/rendering.dart';

class HomePage extends StatefulWidget {
  @override
  HomePageState createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  //불러올 페이지 리스트
  List<Widget> _page = [SchedulePage(), SearchPage(), CreatePage(), PushPage(), SettingPage()];

  int _currentIndex = 0;

  void _onTap(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _page[_currentIndex],

      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: white_color,
        selectedItemColor: top_color,
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        onTap: _onTap,
        currentIndex: _currentIndex,
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.calendar_today,
              size: 25,
            ),
            title: Text(
              "Schedule"
            )
          ),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.search,
                size: 25,
              ),
              title: Text(
                  "Search"
              )
          ),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.add_circle_outline,
                size: 40,
                color: blue_color,
              ),
              title: Text(
                  "Create"
              )
          ),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.notifications_none,
                size: 25,
              ),
              title: Text(
                  "Push"
              )
          ),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.menu,
                size: 25,
              ),
              title: Text(
                  "Setting"
              )
          ),
        ],
      ),
    );
  }
}