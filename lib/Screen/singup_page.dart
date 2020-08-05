import 'package:flutter/material.dart';

class SingUpPage extends StatefulWidget{
  @override
  SingUpPageState createState() => SingUpPageState();
}

class SingUpPageState extends State<SingUpPage>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "회원가입"
        ),
      ),
      body: Center(
        child: Text(
          "회원가입페이지",
          style: TextStyle(
            fontSize: 100,
          ),
        ),
      ),
    );
  }
}