import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginCheck{
  Future<bool> loginCheck(String email, String password) async{
    bool _loginCheckValue = false;
    SharedPreferences pref = await SharedPreferences.getInstance();

    await Firestore.instance.collection("user").getDocuments().then((doc){
      for(int i = 0; i < doc.documents.length; i++){
        if(doc.documents.elementAt(i).data["id"] == email){
          if(doc.documents.elementAt(i).data["password"] == password){
            _loginCheckValue = true;
            pref.setString("loginUserName", doc.documents.elementAt(i).data["name"]);
            pref.setString("loginUserImageURL", doc.documents.elementAt(i).data["imageURL"]);
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