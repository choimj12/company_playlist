import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class UserProvider extends ChangeNotifier{
  String _userEmail;
  String _userName;
  String _userImageURL;

  UserProvider(){
    getPreferencesLoginUser();
  }

  String getUserEmail(){
    return _userEmail;
  }

  String getUserName(){
    return _userName;
  }

  String getUserImageURL(){
    return _userImageURL;
  }

  setUser(String user) async{
    _userEmail = user;
    notifyListeners();
  }

  getPreferencesLoginUser() async{
    SharedPreferences pref = await SharedPreferences.getInstance();
    _userEmail = pref.getString("loginUserEmail");
    _userName = pref.getString("loginUserName");
    _userImageURL = pref.getString("loginUserImageURL");

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
    await pref.remove("loginUserName");
    await pref.remove("loginUserImageURL");
    setUser(null);
  }
}


