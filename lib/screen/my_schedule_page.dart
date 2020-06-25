import 'package:flutter/material.dart';
import 'package:companyplaylist/src/user_provider_code.dart';
import 'package:companyplaylist/model/schedule_model.dart';
import 'package:provider/provider.dart';

class MySchedulePage extends StatefulWidget{
  @override
  MySchedulePageState createState() => MySchedulePageState();
}

class MySchedulePageState extends State<MySchedulePage>{
  UserProvider up;
  MyScheduleModel myScheduleModel;

  @override
  void initState(){
    super.initState();
    myScheduleModel.fetchMySchedule();
  }

  @override
  Widget build(BuildContext context) {
    up = Provider.of<UserProvider>(context);
    return Container(
      child: Column(
        children: <Widget>[
          Text(
            myScheduleModel.mySchedule.length.toString(),
            style: TextStyle(
              fontSize: 20
            ),
            //myScheduleModel.fetchMySchedule()
          ),
        ],
      ),
    );
  }
}