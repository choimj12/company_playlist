import 'package:flutter/material.dart';

//Screen
import 'package:companyplaylist/screen/singup_page.dart';
import 'package:companyplaylist/screen/snslogin_page.dart';
import 'package:companyplaylist/screen/main_page.dart';

//Theme import
import 'package:companyplaylist/Theme/theme.dart';

//Code
import 'package:companyplaylist/src/login_code.dart';

class LoginPage extends StatefulWidget{
  @override
  LoginPageState createState() => LoginPageState();
}

class LoginPageState extends State<LoginPage>{
  bool autoLoginValue = false;
  LoginCheck loginCheck = LoginCheck();

  FocusNode _mailFocus;
  FocusNode _pwFocus;

  TextEditingController _mailCon;
  TextEditingController _pwCon;

  @override
  void initState(){
    super.initState();
    _mailFocus = FocusNode();
    _pwFocus = FocusNode();
    _mailCon = TextEditingController();
    _pwCon = TextEditingController();
  }

  @override
  void dispose(){
    _mailFocus.dispose();
    _pwFocus.dispose();
    _mailCon.dispose();
    _pwCon.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            decoration: BoxDecoration(
              color: main_color,
            ),
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: 69,
                ),
                Text(
                  "슬기로운 회사생활",
                  style: TextStyle(
                    fontFamily: fontStyle,
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                    color: text_color,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: <Widget>[
                    SizedBox(
                      width: 212,
                    ),
                    Text(
                      "Release 0.1.0615",
                      style: TextStyle(
                        fontFamily: fontStyle,
                        fontSize: 18,
                        fontWeight: FontWeight.w400,
                        color: text_color
                      ),
                    ),
                  ],
                )
              ],
            )
          ),
          Positioned(
            top: 180,
            child: Container(
              padding: EdgeInsets.only(top: 30, left: 30, right: 30),
              width: 412,
              height: 600,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: Color(0xffFFFFFF),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "로그인",
                    style: TextStyle(
                      fontFamily: fontStyle,
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      color: red_color
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    controller: _mailCon,
                    focusNode: _mailFocus,

                    onTap: (){
                      setState(() {
                        FocusScope.of(context).requestFocus(_mailFocus);
                      });
                    },
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    controller: _pwCon,
                    focusNode: _pwFocus,

                    onTap: (){
                      setState(() {
                        FocusScope.of(context).requestFocus(_pwFocus);
                      });
                    },
                  ),
                  SizedBox(
                    height: 27,
                  ),
                  Row(
                    children: <Widget>[
                      SizedBox(
                        width: 80,
                      ),
                      Container(
                        width: 200,
                        height: 48,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: red_color
                        ),
//                        child: Center(
//                          child: Text(
//                            "로그인",
//                            style: TextStyle(
//                              fontFamily: fontStyle,
//                              fontSize: 18,
//                              fontWeight: FontWeight.w500,
//                              color: Color(0xffFFFFFF)
//                            ),
//                          ),
//                        ),
                        child: RaisedButton(
                          color: red_color,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Text(
                            "로그인",
                            style: TextStyle(
                              fontFamily: fontStyle,
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                              color: Color(0xffFFFFFF),
                            ),
                          ),
                          onPressed: () async {
                            bool loginSuccess = false;

                            loginSuccess = await loginCheck.loginCheck(_mailCon.text, _pwCon.text);

                            if(loginSuccess){
                              Navigator.push(context, MaterialPageRoute(builder: (context) => MainPage()));
                            }
                          },
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      SizedBox(
                        width: 70,
                      ),
                      Checkbox(
                        value: autoLoginValue,
                        //focusColor: main_color,
                        activeColor: main_color,
                        onChanged: (bool value) {
                          setState(() {
                            autoLoginValue = value;
                          });
                        },
                      ),
                      Text(
                        "자동 로그인",
                        style: TextStyle(
                          fontFamily: fontStyle,
                          fontSize: 15.0,
                          fontWeight: FontWeight.w100,
                          color: Color(0xff2F3A55)
                        ),
                      ),
                      SizedBox(
                        width: 30,
                      ),
                      InkWell(
                        child: Text(
                          "회원가입",
                          style: TextStyle(
                              fontFamily: fontStyle,
                              fontSize: 15.0,
                              fontWeight: FontWeight.w100,
                              color: Color(0xff2F3A55)
                          ),
                        ),
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => SingUpPage()));
                        },
                      )
                    ],
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  Row(
                    children: <Widget>[
                      SizedBox(
                        width: 120,
                      ),
                      InkWell(
                        child: Text(
                          "SNS 계정 간편 로그인",
                          style: TextStyle(
                              fontFamily: fontStyle,
                              fontSize: 15.0,
                              fontWeight: FontWeight.w100,
                              color: Color(0xff2F3A55)
                          ),
                        ),
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => SNSLoginPage()));
                        },
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}