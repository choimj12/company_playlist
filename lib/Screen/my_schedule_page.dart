//나의 일정 화면 입니다.

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

//Theme
import 'package:companyplaylist/Theme/theme.dart';
import 'package:companyplaylist/Theme/custom.dart';

//Code
import 'package:companyplaylist/Src/user_provider_code.dart';

class MySchedulePage extends StatefulWidget{
  @override
  MySchedulePageState createState() => MySchedulePageState();
}

class MySchedulePageState extends State<MySchedulePage>{
  UserProvider up;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: StreamBuilder(
        stream: Firestore.instance.collection("my_schedule").snapshots(),
        builder: (BuildContext context, AsyncSnapshot snapshot) {
          if(snapshot.connectionState == ConnectionState.waiting){
            return Center(
              child: CircularProgressIndicator(),
            );
          }

          var scheduleList = snapshot.data.documents ?? [];

          return Container(
              width: 390,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: white_color,
                border: Border.all(
                  color: boarder_color
                )
              ),
            child: ListView.separated(
                itemCount: scheduleList.length,
                itemBuilder: (context, index) {
                  DocumentSnapshot item = scheduleList.elementAt(index);
                switch(item.data["type"]){
                  case '회의':
                    return conference(item.data["type"], item.data["start_time"], item.data["end_time"], item.data["title"], item.data["progress"], item.data["write_time"]);
                    break;
                  case '개인':
                    return individual(item.data["type"], item.data["start_time"], item.data["end_time"], item.data["title"], item.data["progress"], item.data["location"]);
                    break;
                  case '요청':
                    return request(item.data["type"], item.data["start_time"], item.data["end_time"], item.data["title"], item.data["requester"]);
                    break;
                  default:
                    return work(item.data["type"], item.data["start_time"], item.data["end_time"], item.data["title"], item.data["progress"], item.data["write_time"]);
                }
              },
              separatorBuilder: (context, index) {
                return Divider();
              },
            )
          );
        },
      ),
    );
  }
}