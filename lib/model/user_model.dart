import 'package:cloud_firestore/cloud_firestore.dart';

class User{
  final String id;
  final String password;
  final String name;
  final String rank;
  final String imageURL;

  User({this.id, this.password, this.name, this.rank, this.imageURL});
}

class UserModel{
  List<User> _user = [];

  List<User> get users{
    return List.from(_user);
  }

  void addUser(User user){
    _user.add(user);
  }

  void fetchUserInfo(){
    Firestore.instance.collection("user").getDocuments().then((doc){
      final List<User> fetchedUserInfo = [];
      doc.documents.forEach((data) {
        User user = User(
          id: data["id"],
          password: data["password"],
          name: data["name"],
          rank: data["rank"],
          imageURL: data["imageURL"]
        );
        fetchedUserInfo.add(user);
      });
      _user = fetchedUserInfo;
    });
  }

  User loginUserInfo(String email){
    fetchUserInfo();

    User loginUser;
    for(int i = 0; i < _user.length; i++){
      if(_user[i].id == email){
        loginUser = _user[i];
        break;
      }
    }

    return loginUser;
  }
}