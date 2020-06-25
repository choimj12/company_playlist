import 'package:flutter/material.dart';
import 'package:companyplaylist/src/user_provider_code.dart';
import 'package:provider/provider.dart';
import 'package:companyplaylist/screen/main_page.dart';
import 'package:companyplaylist/screen/login_page.dart';

class AuthPage extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    UserProvider up = Provider.of<UserProvider>(context);

    if(up.getUser() != null){
      return MainPage();
    }

    else{
      return LoginPage();
    }
  }
}