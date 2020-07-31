//작성할 메뉴를 선택하는 화면입니다.

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

//Theme
import 'package:companyplaylist/Theme/theme.dart';
import 'package:flutter/painting.dart';

import '../Theme/theme.dart';
import '../Theme/theme.dart';
import '../Theme/theme.dart';
import '../Theme/theme.dart';
import '../Theme/theme.dart';
import '../Theme/theme.dart';

class Modal{
  mainBottomSheet(BuildContext context){
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context){
        return Container(
          height: 200,
          padding: EdgeInsets.only(left: 15, right: 15),
          child: Column(
            children: <Widget>[
              Text(
                "추가할 항목을 선택하세요",
                style: customStyle(16, 'Regular', grey_color),
              ),
              Padding(
                padding: EdgeInsets.only(top: 15),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  ActionChip(
                    backgroundColor: chip_color_blue,
                    label: Text(
                      "내근 일정",
                      style: customStyle(14, 'Regular', top_color),
                    ),
                    onPressed: () {
                      return showModalBottomSheet(
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
                              height: 150,
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
                                          child: TextFormField(),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(left: 15),
                                        ),
                                        CircleAvatar(
                                          radius: 20,
                                        )
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          );
                        }
                      );

                    },
                  ),
                  Chip(
                      backgroundColor: chip_color_blue,
                      label: Text(
                        "외근 일정",
                        style: customStyle(14, 'Regular', top_color),
                      )
                  ),
                  Chip(
                      backgroundColor: chip_color_blue,
                      label: Text(
                        "회의 일정",
                        style: customStyle(14, 'Regular', top_color),
                      )
                  ),
                  Chip(
                      backgroundColor: chip_color_blue,
                      label: Text(
                        "개인 일정",
                        style: customStyle(14, 'Regular', top_color),
                      )
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Chip(
                      backgroundColor: chip_color_purple,
                      label: Text(
                        "업무 요청",
                        style: customStyle(14, 'Regular', top_color),
                      )
                  ),
                  Chip(
                      backgroundColor: chip_color_red,
                      label: Text(
                        "구매 품의",
                        style: customStyle(14, 'Regular', top_color),
                      )
                  ),
                  Chip(
                      backgroundColor: chip_color_red,
                      label: Text(
                        "경비 품의",
                        style: customStyle(14, 'Regular', top_color),
                      )
                  ),
                  Chip(
                      backgroundColor: chip_color_red,
                      label: Text(
                        "연차 신청",
                        style: customStyle(14, 'Regular', top_color),
                      )
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(left: 13),
                  ),
                  Chip(
                      backgroundColor: chip_color_green,
                      label: Text(
                        "프로젝트",
                        style: customStyle(14, 'Regular', top_color),
                      )
                  ),
                ],
              ),
            ],
          ),
        );
      }
    );
  }
}