// ignore_for_file: prefer_const_constructors, unnecessary_new

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;
import 'package:provis/Widgets/theme.dart';
import 'package:provis/compare.dart';
import 'package:provis/dashboard.dart';
import 'package:provis/editprodi.dart';
import 'daftarfakultas.dart';
import 'dashboard.dart';

final List<String> imgList = [
  'assets/images/isola.jpg',
  'assets/images/best.jpg',
  'assets/images/disristek.jpg',
];
final List<Widget> imageSliders = imgList
    .map((item) => Container(
          child: Container(
            margin: EdgeInsets.all(5.0),
            child: ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(5.0)),
                child: Stack(
                  children: <Widget>[
                    Image.network(item, fit: BoxFit.cover, width: 500.0),
                    Positioned(
                      bottom: 0.0,
                      left: 0.0,
                      right: 0.0,
                      child: Container(
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [
                              Color.fromARGB(200, 0, 0, 0),
                              Color.fromARGB(0, 0, 0, 0)
                            ],
                            begin: Alignment.bottomCenter,
                            end: Alignment.topCenter,
                          ),
                        ),
                        padding: EdgeInsets.symmetric(
                            vertical: 10.0, horizontal: 20.0),
                      ),
                    ),
                  ],
                )),
          ),
        ))
    .toList();

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var aktif = [
      Mhs("2018", 4150),
      Mhs("2019", 8110),
      Mhs("2020", 7150),
      Mhs("2021", 7770),
      Mhs("2022", 6280),
    ];
    var nonaktif = [
      Mhs("2018", 450),
      Mhs("2019", 610),
      Mhs("2020", 550),
      Mhs("2021", 770),
      Mhs("2022", 680),
    ];
    var series = [
      charts.Series(
          domainFn: (Mhs mhs, _) => mhs.years,
          measureFn: (Mhs mhs, _) => mhs.number,
          id: 'Mahasiswa Aktif',
          data: aktif,
          labelAccessorFn: (Mhs mhs, _) => ' ${mhs.number.toString()}'),
      charts.Series(
          domainFn: (Mhs mhs, _) => mhs.years,
          measureFn: (Mhs mhs, _) => mhs.number,
          id: 'Mahasiswa NonAktif',
          data: nonaktif,
          labelAccessorFn: (Mhs mhs, _) => ' ${mhs.number.toString()}'),
    ];
    var chart = charts.BarChart(
      series,
      barRendererDecorator: charts.BarLabelDecorator<String>(),
      barGroupingType: charts.BarGroupingType.grouped,
      behaviors: [new charts.SeriesLegend()],
    );
    return Scaffold(
      appBar: AppBar(
        backgroundColor: primary,
        title:
            Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
          Image.asset(
            'assets/images/upi.png',
            height: 25,
          ),
          Text("UPI DATA",
              style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white)),
        ]),
        actions: <Widget>[
          IconButton(
            icon: new Icon(Icons.person, color: colorLight),
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                return DaftarFakultas();
              }));
            },
          ),
        ],
      ),
      backgroundColor: colorLight,
      body: ListView(children: <Widget>[
        CarouselSlider(
          options: CarouselOptions(
            autoPlay: true,
            aspectRatio: 2.0,
            enlargeCenterPage: true,
          ),
          items: imageSliders,
        ),
        Padding(
          padding: EdgeInsets.all(10),
          child: Column(children: <Widget>[
            Text(
              "Jumlah Mahasiswa",
              style: TextStyle(fontSize: 20, color: textBlack),
            ),
            SizedBox(height: 250, child: chart),
          ]),
        )
      ]),
      bottomNavigationBar: BottomAppBar(
        color: primary,
        child: new Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Expanded(
              //Daftar Fakultas
              child: IconButton(
                color: colorLight,
                icon: Icon(Icons.home_work),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => DaftarFakultas()),
                  );
                },
              ),
            ),
            Expanded(
              //Dashboard
              child: IconButton(
                color: colorLight,
                icon: Icon(Icons.show_chart),
                onPressed: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) {
                    return Dashboard(); //sementara jadi halaman list page yang belum nyambung
                  }));
                },
              ),
            ),
            Expanded(
              //Home
              child: IconButton(
                color: colorLight,
                icon: Icon(Icons.home),
                onPressed: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) {
                    return HomePage();
                  }));
                },
              ),
            ),
            Expanded(
              //Menu Compare
              child: IconButton(
                color: colorLight,
                icon: Icon(Icons.compare),
                onPressed: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) {
                    return Compare();
                  }));
                },
              ),
            ),
            Expanded(
              //Menu kaprodi (Edit Data Prodi)
              child: IconButton(
                color: colorLight,
                icon: Icon(Icons.person),
                onPressed: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) {
                    return EditProdi(); //ganti aja, ini cuman mau debug doang
                  }));
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Mhs {
  final String years;
  final int number;

  Mhs(this.years, this.number);
}

void setState(Null Function() param0) {}
