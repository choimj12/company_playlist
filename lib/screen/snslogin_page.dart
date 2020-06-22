import 'package:flutter/material.dart';

class SNSLoginPage extends StatefulWidget{
  @override
  SNSLoginPageState createState() => SNSLoginPageState();
}

class SNSLoginPageState extends State<SNSLoginPage>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
            "SNS로그인"
        ),
      ),
      body: Center(
        child: Text(
          "SNS로그인페이지",
          style: TextStyle(
            fontSize: 100,
          ),
        ),
      ),
    );
  }
}