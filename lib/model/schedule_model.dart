import 'package:cloud_firestore/cloud_firestore.dart';

class MySchedule{
  String writer;
  String type;
  String title;
  String detail;
  String startDate;
  String endDate;
  String startTime;
  String endTime;
  String progress;

  MySchedule({this.writer, this.type, this.title, this.detail, this.startDate, this.endDate, this.startTime, this.endTime, this.progress});
}

class MyScheduleModel{
  List<MySchedule> _mySchedule = [];

  List<MySchedule> get mySchedule{
    return List.from(_mySchedule);
  }

  addMySchedule(MySchedule mySchedule){
    _mySchedule.add(mySchedule);
  }

  fetchMySchedule(){
    print("시작");
    Firestore.instance.collection("my_schedule").getDocuments().then((doc){
      print(doc.documents.length);
      final List<MySchedule> fetchedSchedule = [];
      doc.documents.forEach((data){
        MySchedule mySchedule = MySchedule(
          writer: data["writer"],
          type: data["type"],
          title: data["title"],
          detail: data["detail"],
          startDate: data["start_date"],
          endDate: data["end_date"],
          startTime: data["start_time"],
          endTime: data["end_time"],
          progress: data["progress"],
        );
        print(mySchedule);
        fetchedSchedule.add(mySchedule);
      });
      _mySchedule = fetchedSchedule;
    });
  }
}