import 'package:flutter/material.dart';

const Color top_color = Color(0xff2F3A55);
const Color blue_color = Color(0xff2573D5);
const Color red_color = Color(0xffFF6963);
const Color white_color = Color(0xffFFFFFF);
const Color grey_color = Color(0xffAEAEAE);
const Color tab_color = Color(0xffBDC1CB);
const Color divider_color = Color(0xff29304D);
const Color bottom_color = Color(0xff8CCCCB);
const Color schedule_chip_color= Color(0xffF7F9FC);
const Color boarder_color = Color(0xffEEEEEE);
const Color chip_color_blue = Color(0xffDDE9F8);
const Color chip_color_purple = Color(0xffD3DBFF);
const Color chip_color_red = Color(0xffFFD1CF);
const Color chip_color_green = Color(0xffD3FFD9);

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