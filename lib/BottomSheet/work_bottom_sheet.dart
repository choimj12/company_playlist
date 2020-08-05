//내근 및 외근 스케줄을 입력하는 bottom sheet 입니다.

import 'package:flutter/material.dart';

//Theme
import 'package:companyplaylist/Theme/theme.dart';

//BottomSheet
import 'package:companyplaylist/BottomSheet/date_set_bottom_sheet.dart';

workBottomSheet(BuildContext context, String type){
  TextEditingController _titleCon = TextEditingController();

  String date = "날짜";

  showModalBottomSheet(
      isScrollControlled: true,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(20),
              topLeft: Radius.circular(20)
          )
      ),
      context: context,
      builder: (BuildContext context){
        return StatefulBuilder(
          builder: (BuildContext context, StateSetter setState){
            return Padding(
              padding: MediaQuery.of(context).viewInsets,
              child: Container(
                padding: EdgeInsets.only(top: 30, left: 20, right: 20, bottom: 10),
                height: 140,
                child: Column(
                    children: <Widget>[
                      IntrinsicHeight(
                        child: Row(
                          children: <Widget>[
                            Chip(
                              label: Text(
                                "$type 일정",
                                style: customStyle(14, 'Regular', top_color),
                              ),
                              backgroundColor: chip_color_blue,
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 15),
                            ),
                            tabDivider(2, top_color, 15, 15),
                            Container(
                              width: 200,
                              child: TextFormField(
                                autofocus: true,
                                controller: _titleCon,
                                decoration: InputDecoration(
                                    hintText: '제목을 입력해 주세요'
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 15),
                            ),
                            CircleAvatar(
                                radius: 20,
                                backgroundColor: _titleCon.text == '' ? Colors.black12 : Colors.blue,
                                child: IconButton(
                                    icon: Icon(
                                        Icons.arrow_upward
                                    ),
                                    onPressed: _titleCon.text == '' ? null : () {
                                      print(_titleCon.text);
                                    }
                                )
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(bottom: 25),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          InkWell(
                            child: Container(
                              child: Row(
                                children: <Widget>[
                                  Icon(
                                    Icons.calendar_today,
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 5),
                                  ),
                                  Text(
                                    date,
                                    style: customStyle(14, 'Regular', top_color),
                                  )
                                ],
                              ),
                            ),
                            onTap: (){
                              dateSetBottomSheet(context);
                            },
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 10),
                          ),
                          InkWell(
                            child: Container(
                              child: Row(
                                children: <Widget>[
                                  Icon(
                                    Icons.scatter_plot,
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 5),
                                  ),
                                  Text(
                                    "관련 프로젝트",
                                    style: customStyle(14, 'Regular', top_color),
                                  )
                                ],
                              ),
                            ),
                            onTap: (){
                              print("클릭");
                            },
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 10),
                          ),
                          InkWell(
                            child: Container(
                              child: Row(
                                children: <Widget>[
                                  Icon(
                                    Icons.chat_bubble_outline,
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 5),
                                  ),
                                  Text(
                                    "내용",
                                    style: customStyle(14, 'Regular', top_color),
                                  )
                                ],
                              ),
                            ),
                            onTap: (){
                              print("클릭");
                            },
                          )
                        ],
                      )
                    ]
                ),
              ),
            );
          },
        );
      }
  );
}
