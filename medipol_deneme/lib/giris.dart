import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:medipol_deneme/main.dart';
import 'package:medipol_deneme/not_bilgisi.dart';

class Giris extends StatefulWidget {
  String ogrenciNumara = "";

  Giris(this.ogrenciNumara);

  @override
  State<StatefulWidget> createState() {
    return homeScreen();
  }
}

class homeScreen extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Ana Giriş Ekranı"),
        ),
        body: Center(
          child: Container(
            width: 300,
            height: 300,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Text(
                  "Öğrenci Numarası: " + ogrenciNumara.toString(),
                  style: TextStyle(
                      fontFamily: 'RobotoMono',
                      color: Colors.blue,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
                new SizedBox(
                    width: 300.0,
                    child: RaisedButton(
                      padding: EdgeInsets.all(2.0),
                      color: Colors.amberAccent,
                      textColor: Colors.white,
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => DersApp()));
                      },
                      child:
                          Text('Not Bilgisi', style: TextStyle(fontSize: 20)),
                    )),
                new SizedBox(
                    width: 300.0,
                    child: RaisedButton(
                      padding: EdgeInsets.all(2.0),
                      color: Colors.cyan,
                      textColor: Colors.white,
                      onPressed: () {},
                      child: Text('Haftalık ders programı',
                          style: TextStyle(fontSize: 20)),
                    )),
                new SizedBox(
                    width: 300.0,
                    child: RaisedButton(
                      padding: EdgeInsets.all(2.0),
                      color: Colors.black12,
                      textColor: Colors.white,
                      onPressed: () {
                        Navigator.pop(context,
                            MaterialPageRoute(builder: (context) => MyApp()));
                      },
                      child: Text('Çıkış yap', style: TextStyle(fontSize: 20)),
                    ))
              ],
            ),
          ),
        ));
  }
}
