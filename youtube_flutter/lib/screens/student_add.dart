
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:youtube_flutter/models/student.dart';

class StudentAdd extends StatefulWidget{

//  StudentAdd(List<Student> students){
//    this.students = students;
//  }
  List<Student> students;
  StudentAdd(this.students);
  @override
  State<StatefulWidget> createState() {
  return _StudentAddState();
  }

}
var formKey = GlobalKey<FormState>();

Student student = Student("","",0);

class _StudentAddState extends State<StudentAdd> {

  @override
  Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(title: Text("Yeni Öğrenci Ekle"),),
    body: Container(
      margin: EdgeInsets.all(20.0), // EdgeInsets.all(20.0)
      child: Form(
        key: formKey,
        child: Column(
        children: <Widget>[
          buildFirstNameField(),
          buildLastNameField(),
          buildLastGradeField(),
          buildSubmitButton(context)
        ],
      )
      ),
    ),
  );

  }


}

Widget buildFirstNameField() {
  return TextFormField(
    decoration: InputDecoration(labelText: "Öğrenci Adı", hintText: "Öğrenci Adı giriniz..."),
    onSaved: (String value){
       student.firstName = value;
    },
  );
}

Widget buildLastNameField() {
  return TextFormField(
    decoration: InputDecoration(labelText: "Öğrenci Soyadı", hintText: "Öğrenci Soyadı giriniz..."),
    onSaved: (String value){
      student.lastName = value;
    },
  );
}
Widget buildLastGradeField() {
  return TextFormField(
    decoration: InputDecoration(labelText: "Öğrenci Adı", hintText: "Öğrenci Adı giriniz..."),
    onSaved: (String value){
      student.grade = int.parse(value);
    },
  );
}

Widget buildSubmitButton(BuildContext context){
  return RaisedButton(
    child: Text("Kaydet"),
    onPressed: (){
      formKey.currentState.save();

      Navigator.pop(context);

    },
  );
}
