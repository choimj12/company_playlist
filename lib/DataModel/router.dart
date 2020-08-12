import 'package:companyplaylist/Screen/setting_page.dart';
import 'package:flutter/material.dart';
import 'package:companyplaylist/Screen/login_page.dart';
import 'package:companyplaylist/Screen/schedule_page.dart';
import 'package:companyplaylist/DataModel/homeView.dart';
class Router{
  static Route<dynamic> generateRoute(RouteSettings settings){
    switch (settings.name) {
      case '/' :
        return MaterialPageRoute(
          builder: (_) => HomeView()
        );

      case '/setting_page' :
        return MaterialPageRoute(
          builder: (_) => SettingPage()
        );

      default :
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(
              child: Text("hihi"),
            ),
          )
        );
    }
  }
}