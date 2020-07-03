import 'package:flutter/material.dart';

import '../models/ders.dart';

class DersApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: HomeScreen(), debugShowCheckedModeBanner: false);
  }
}

class HomeScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _HomeScreenState();
  }
}

class _HomeScreenState extends State {
  List<Ders> dersList = [];
  Ders secilenDers = Ders.withId(0, "", 0);

  @override
  Widget build(BuildContext context) {
    dersListesi();
    return Scaffold(
        appBar: AppBar(
          title: Text("Öğrenci Not Bilgisi"),
        ),
        body: buildBody());
  }

  Widget buildBody() {
    return Column(
      children: <Widget>[
        Expanded(
          child: ListView.builder(
              itemCount: dersList.length,
              itemBuilder: (BuildContext context, int index) {
                return ListTile(
                  title: Text(dersList[index].dersAdi),
                  subtitle: Text("Sınavdan Aldığı Not: " +
                      dersList[index].grade.toString() +
                      " [" +
                      dersList[index].getStatus +
                      "]"),
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage(
                        "https://png.pngtree.com/png-vector/20190130/ourmid/pngtree-hand-drawn-cartoon-a-pile-of-books-and-a-pencil-element-png-image_636359.jpg"),
                  ),
                  trailing: buildStatusIcon(dersList[index].grade),
                  onTap: () {
                    setState(() {
                      secilenDers = dersList[index];
                    });
                  },
                );
              }),
        ),
        Text("Seçilen Ders " +
            secilenDers.dersAdi +
            "  - > Notu " +
            secilenDers.grade.toString()),
      ],
    );
  }

  Widget buildStatusIcon(int grade) {
    if (grade >= 50) {
      return Icon(Icons.done);
    } else if (grade >= 40) {
      return Icon(Icons.album);
    } else {
      return Icon(Icons.clear);
    }
  }

  void dersListesi() {
    dersList.add(new Ders.withId(0, "İleri Programlama", 95));
    dersList.add(new Ders.withId(1, "Bilgisayar Ağları", 20));
    dersList.add(new Ders.withId(2, "Veri İletişimi", 70));
    dersList.add(new Ders.withId(3, "Bulanık Mantık", 42));
    dersList.add(new Ders.withId(4, "Hesaplama Teorisi", 49));
    dersList.add(new Ders.withId(5, "Bilgisayar Mühendisliğine Giriş", 80));
    dersList.add(new Ders.withId(6, "Matematil-II", 50));
    dersList.add(new Ders.withId(7, "Fizik-II", 32));
  }
}
