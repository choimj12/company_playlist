//import 'package:flutter/material.dart';
//import 'package:companyplaylist/src/format_code.dart';
//import 'package:companyplaylist/Theme/theme.dart';
//import 'package:table_calendar/table_calendar.dart';
//class MainPage extends StatefulWidget{
//  @override
//  MainPageState createState() => MainPageState();
//}
//
//class MainPageState extends State<MainPage>{
//  Format format = Format();
//  String date = '';
//
//  @override
//  Widget build(BuildContext context) {
//    return Scaffold(
//        appBar: AppBar(
//          backgroundColor: main_color,
//          elevation: 0,
//          centerTitle: true,
//          title: Text(
//              format.dateFormat(DateTime.now())
//          ),
//        ),
//        body: SingleChildScrollView(
//            child: Column(
//              children: <Widget>[
//                Stack(
//                  children: <Widget>[
//                    Container(
//                      height: 110,
//                      decoration: BoxDecoration(
//                        color: main_color,
//                      ),
//                    ),
//                    Positioned(
//                      top: 10,
//                      width: 412,
//                      height: 130,
//                      child: Container(
//                          decoration: BoxDecoration(
//                              borderRadius: BorderRadius.circular(30),
//                              color: Colors.red
//                          ),
//                          child: RaisedButton(
//                            onPressed: () {
//                              return showModalBottomSheet(
//                                  context: context,
//                                  isScrollControlled: true,
//                                  builder: (context) => Padding(
//                                    padding: MediaQuery.of(context).viewInsets,
//                                    child: Container(
//                                      height: 150,
//                                      width: 412,
//                                      color: Colors.red,
//                                      child: Column(
//                                        mainAxisAlignment: MainAxisAlignment.center,
//                                        children: <Widget>[
//                                          Text("테스트입니다"),
//                                          TextFormField(
//                                            autofocus: true,
//                                          ),
//                                          Row(
//                                            children: <Widget>[
//                                              Text(
//                                                  date
//                                              ),
//                                              IconButton(
//                                                icon: Icon(
//                                                    Icons.calendar_today
//                                                ),
//                                                onPressed: () {
//                                                  return showModalBottomSheet(
//                                                      context: context,
//                                                      builder: (context) => Container(
//                                                        height: 200,
//                                                        width: 412,
//                                                        child: RaisedButton(
//                                                          onPressed: () {
//                                                            setState(() {
//                                                              date = '성공';
//                                                            });
//                                                            Navigator.of(context).pop();
//                                                          },
//                                                        ),
//                                                      )
//                                                  );
//                                                },
//                                              )
//                                            ],
//                                          )
//                                        ],
//                                      ),
//                                    ),
//                                  )
//                              );
//                            },
//                          )
//                      ),
//                    )
//                  ],
//                )
//              ],
//            )
//        )
//    );
//  }
//}