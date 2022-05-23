// ignore_for_file: prefer_const_constructors, unnecessary_new, prefer_const_literals_to_create_immutables

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;
import 'package:provis/Widgets/theme.dart';
import 'package:provis/compare.dart';
import 'package:provis/daftarprodi.dart';
import 'package:provis/dashboard.dart';
import 'package:provis/editprodi.dart';
import 'package:provis/home_view.dart';
import 'package:provis/profil_dosen.dart';
import 'package:provis/addprestasi.dart';
import 'daftarfakultas.dart';
import 'list_dosen.dart';
import 'home.dart';
import 'fasilitas.dart';
import 'profil_dosen.dart';
import 'dashboard.dart';

class Akreditasi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var A = [
      akr("FPMIPA", 20),
      akr("FPIPS", 20),
      akr("FIP", 20),
      akr("FPOK", 20),
      akr("FPBS", 20),
      akr("FPEB", 20),
      akr("FPSD", 20),
      akr("FPTK", 20),
    ];
    var B = [
      akr("FPMIPA", 0),
      akr("FPIPS", 0),
      akr("FIP", 0),
      akr("FPOK", 0),
      akr("FPBS", 0),
      akr("FPEB", 0),
      akr("FPSD", 0),
      akr("FPTK", 0),
    ];
    var C = [
      akr("FPMIPA", 0),
      akr("FPIPS", 0),
      akr("FIP", 0),
      akr("FPOK", 0),
      akr("FPBS", 0),
      akr("FPEB", 0),
      akr("FPSD", 0),
      akr("FPTK", 0),
    ];
    var series = [
      charts.Series(
          domainFn: (akr akr, _) => akr.years,
          measureFn: (akr akr, _) => akr.number,
          id: 'Akreditasi A',
          data: A,
          labelAccessorFn: (akr akr, _) => ' ${akr.number.toString()}'),
      charts.Series(
          domainFn: (akr akr, _) => akr.years,
          measureFn: (akr akr, _) => akr.number,
          id: 'Akreditasi B',
          data: B,
          labelAccessorFn: (akr akr, _) => ' ${akr.number.toString()}'),
      charts.Series(
          domainFn: (akr akr, _) => akr.years,
          measureFn: (akr akr, _) => akr.number,
          id: 'Akreditasi C',
          data: C,
          labelAccessorFn: (akr akr, _) => ' ${akr.number.toString()}'),
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
                return ProfilDosen();
              }));
            },
          ),
        ],
      ),
      backgroundColor: colorLight,
      body: ListView(
        children: [
          Padding(
            padding: EdgeInsets.all(12.0),
          ),
          Text(
            "Jumlah Akreditasi Prodi/Fakultas",
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.black,
              fontSize: 28.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          DataTable(
            columns: <DataColumn>[
              DataColumn(
                  label: Text(
                "Akreditasi Fakultas",
                style: TextStyle(color: textBlack, fontWeight: FontWeight.bold),
              )),
              DataColumn(
                  label: Text("A",
                      style: TextStyle(
                          color: textBlack, fontWeight: FontWeight.bold))),
              DataColumn(
                  label: Text("B",
                      style: TextStyle(
                          color: textBlack, fontWeight: FontWeight.bold))),
              DataColumn(
                  label: Text("C",
                      style: TextStyle(
                          color: textBlack, fontWeight: FontWeight.bold))),
            ],
            rows: <DataRow>[
              DataRow(
                cells: <DataCell>[
                  DataCell(Text("FPMIPA")),
                  DataCell(Text("20")),
                  DataCell(Text("0")),
                  DataCell(Text("0")),
                ],
              ),
              DataRow(
                cells: <DataCell>[
                  DataCell(Text("FPIPS")),
                  DataCell(Text("20")),
                  DataCell(Text("0")),
                  DataCell(Text("0")),
                ],
              ),
              DataRow(
                cells: <DataCell>[
                  DataCell(Text("FPOK")),
                  DataCell(Text("20")),
                  DataCell(Text("0")),
                  DataCell(Text("0")),
                ],
              ),
              DataRow(
                cells: <DataCell>[
                  DataCell(Text("FPTK")),
                  DataCell(Text("20")),
                  DataCell(Text("0")),
                  DataCell(Text("0")),
                ],
              ),
              DataRow(
                cells: <DataCell>[
                  DataCell(Text("FPSD")),
                  DataCell(Text("20")),
                  DataCell(Text("0")),
                  DataCell(Text("0")),
                ],
              ),
              DataRow(
                cells: <DataCell>[
                  DataCell(Text("FIP")),
                  DataCell(Text("20")),
                  DataCell(Text("0")),
                  DataCell(Text("0")),
                ],
              ),
              DataRow(
                cells: <DataCell>[
                  DataCell(Text("FPEB")),
                  DataCell(Text("20")),
                  DataCell(Text("0")),
                  DataCell(Text("0")),
                ],
              ),
              DataRow(
                cells: <DataCell>[
                  DataCell(Text("FPBS")),
                  DataCell(Text("20")),
                  DataCell(Text("0")),
                  DataCell(Text("0")),
                ],
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.all(10),
            child: Column(children: <Widget>[
              Text(
                "Akreditas Prodi / Fakultas",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 20, color: textBlack),
              ),
              SizedBox(height: 250, child: chart),
            ]),
          ),
        ],
      ),
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
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) {
                    return Daftarfakultas();
                  }));
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
                    return Daftarprodi(); //ganti aja, ini cuman mau debug doang
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

class akr {
  final String years;
  final int number;

  akr(this.years, this.number);
}

void setState(Null Function() param0) {}
