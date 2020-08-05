import 'package:flutter/material.dart';

//Theme
import 'package:companyplaylist/Theme/theme.dart';

workBottomSheet(BuildContext context){
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
                            "내근 일정",
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
                                "날짜",
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
      }
  );
}
