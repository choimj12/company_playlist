import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class UserProvider extends ChangeNotifier{
  String _userEmail;

  UserProvider(){
    getPreferencesLoginUserEmail();
  }

  String getUser(){
    return _userEmail;
  }

  setUser(String user) async{
    _userEmail = user;
    notifyListeners();
  }

  getPreferencesLoginUserEmail() async{
    SharedPreferences pref = await SharedPreferences.getInstance();
    _userEmail = pref.getString("loginUserEmail");
    notifyListeners();
  }

  setPreferencesLoginUserEmail(String email) async{
    SharedPreferences pref = await SharedPreferences.getInstance();
    pref.setString("loginUserEmail", email);
    setUser(email);
  }

  logout() async{
    SharedPreferences pref = await SharedPreferences.getInstance();
    await pref.remove("loginUserEmail");
    setUser(null);
  }
}


