import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

//Theme
import 'package:companyplaylist/Theme/theme.dart';

import 'theme.dart';
import 'theme.dart';

String fontStyle = 'NotoSansKR';

Map<String, FontWeight> fontWeight = {
  'Thin': FontWeight.w100,
  'Light': FontWeight.w300,
  'Regular': FontWeight.w400,
  'Medium': FontWeight.w500,
  'Bold': FontWeight.w700,
  'Black': FontWeight.w900
};

TextStyle customStyle(double fontSize, String fontWeightName, Color fontColor){
  TextStyle custom = TextStyle(
      fontFamily: fontStyle,
      fontSize: fontSize,
      fontWeight: fontWeight[fontWeightName],
      color: fontColor
  );

  return custom;
}

TextStyle customStyleHeigh(double fontSize, String fontWeightName, Color fontColor, double height){
  TextStyle custom = TextStyle(
      fontFamily: fontStyle,
      fontSize: fontSize,
      fontWeight: fontWeight[fontWeightName],
      color: fontColor,
      height: height
  );

  return custom;
}

Container tabMenu(String title, int tabIndex, int index){
  Container tabContainer = Container(
      height: 40,
      width: 115,
      child: Center(
        child: Text(
          title,
          style: customStyle(14, 'Medium', top_color),
        ),
      ),
      decoration: tabIndex == index ? BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: white_color
      ) : null
  );

  return tabContainer;
}

VerticalDivider tabDivider(double thick, Color color, double startPadding, double endPadding) {
  VerticalDivider tabDivider = VerticalDivider(
    thickness: thick,
    color: color,
    indent: startPadding,
    endIndent: endPadding,
  );

  return tabDivider;
}

ListTile work(String type, String startTime, String endTime, String title, String progress, String writeTime) {
  ListTile work = ListTile(

      leading: Chip(
        backgroundColor: schedule_chip_color,
        label: Text(
          type,
          style: customStyle(12, 'Regular', top_color),
        ),
      ),
      title: Row(
        children: <Widget>[
          Column(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(top: 5),
              ),
              Text(
                  startTime,
                  style: customStyleHeigh(13, 'Regular', top_color, 1)
              ),
              Text(
                  '~',
                  style: customStyleHeigh(13, 'Regular', top_color, 1)
              ),
              Text(
                  endTime,
                  style: customStyleHeigh(13, 'Regular', top_color, 1)
              ),
            ],
          ),
          Padding(
              padding: EdgeInsets.only(left: 15)
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                title,
                style: customStyle(15, 'Medium', top_color),
              ),
              Container(
                width: 230,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                        progress,
                        style: customStyleHeigh(13, 'Regular', grey_color, 2.1)
                    ),

                    Text(
                        writeTime,
                        style: customStyleHeigh(13, 'Regular', grey_color, 2.1)
                    )
                  ],
                ),
              )
            ],
          )
        ],
      )
  );

  return work;
}

ListTile conference(String type, String startTime, String endTime, String title, String progress, String writeTime) {
  ListTile conference = ListTile(

      leading: Chip(
        backgroundColor: schedule_chip_color,
        label: Text(
          type,
          style: customStyle(12, 'Regular', top_color),
        ),
      ),
      title: Row(
        children: <Widget>[
          Column(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(top: 5),
              ),
              Text(
                  startTime,
                  style: customStyleHeigh(13, 'Regular', top_color, 1)
              ),
              Text(
                  '~',
                  style: customStyleHeigh(13, 'Regular', top_color, 1)
              ),
              Text(
                  endTime,
                  style: customStyleHeigh(13, 'Regular', top_color, 1)
              ),
            ],
          ),
          Padding(
              padding: EdgeInsets.only(left: 15)
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                title,
                style: customStyle(15, 'Medium', top_color),
              ),
              Container(
                width: 230,
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                        progress,
                        style: customStyleHeigh(13, 'Regular', grey_color, 2.1)
                    ),

                    Text(
                        writeTime,
                        style: customStyleHeigh(13, 'Regular', grey_color, 2.1)
                    )
                  ],
                ),
              )
            ],
          )
        ],
      )
  );

  return conference;
}

ListTile request(String type, String startTime, String endTime, String title, String requester) {
  ListTile request = ListTile(

      leading: Chip(
        backgroundColor: schedule_chip_color,
        label: Text(
          type,
          style: customStyle(12, 'Regular', top_color),
        ),
      ),
      title: Row(
        children: <Widget>[
          Column(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(top: 5),
              ),
              Text(
                  startTime,
                  style: customStyleHeigh(13, 'Regular', top_color, 1)
              ),
              Text(
                  '~',
                  style: customStyleHeigh(13, 'Regular', top_color, 1)
              ),
              Text(
                  endTime,
                  style: customStyleHeigh(13, 'Regular', top_color, 1)
              ),
            ],
          ),
          Padding(
              padding: EdgeInsets.only(left: 15)
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                title,
                style: customStyle(15, 'Medium', top_color),
              ),
              Text(
                  "요청자: $requester",
                  style: customStyleHeigh(13, 'Regular', grey_color, 2.1)
              ),
            ],
          )
        ],
      )
  );

  return request;
}

ListTile individual(String type, String startTime, String endTime, String title, String progress, String location) {
  ListTile individual = ListTile(

      leading: Chip(
        backgroundColor: schedule_chip_color,
        label: Text(
          type,
          style: customStyle(12, 'Regular', red_color),
        ),
      ),
      title: Row(
        children: <Widget>[
          Column(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(top: 5),
              ),
              Text(
                  startTime,
                  style: customStyleHeigh(13, 'Regular', top_color, 1)
              ),
              Text(
                  '~',
                  style: customStyleHeigh(13, 'Regular', top_color, 1)
              ),
              Text(
                  endTime,
                  style: customStyleHeigh(13, 'Regular', top_color, 1)
              ),
            ],
          ),
          Padding(
              padding: EdgeInsets.only(left: 15)
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                title,
                style: customStyle(15, 'Medium', top_color),
              ),
              Container(
                width: 230,
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                        progress,
                        style: customStyleHeigh(13, 'Regular', grey_color, 2.1)
                    ),

                    Text(
                        location,
                        style: customStyleHeigh(13, 'Regular', grey_color, 2.1)
                    )
                  ],
                ),
              )
            ],
          )
        ],
      )
  );

  return individual;
}


