import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class LoginCheck{
  Future<bool> loginCheck(String email, String password) async{
    bool _loginCheckValue = false;

    await Firestore.instance.collection("user_account").getDocuments().then((doc){
      for(int i = 0; i < doc.documents.length; i++){
        if(doc.documents.elementAt(i).data["ID"] == email){
          if(doc.documents.elementAt(i).data["PW"] == password){
            _loginCheckValue = true;
            break;
          }
          else{
            _loginCheckValue = false;
            break;
          }
        }
      }
    });

    return _loginCheckValue;
  }
}