// ignore_for_file: prefer_const_constructors, unnecessary_new, prefer_const_literals_to_create_immutables

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;
import 'package:provis/Widgets/theme.dart';
import 'package:provis/compare.dart';
import 'package:provis/daftarprodi.dart';
import 'package:provis/dashboard.dart';
import 'package:provis/editprodi.dart';
import 'package:provis/profil_dosen.dart';
import 'package:provis/addprestasi.dart';
import 'daftarfakultas.dart';
import 'list_dosen.dart';
import 'home.dart';
import 'fasilitas.dart';
import 'profil_dosen.dart';
import 'dashboard.dart';

class ProfilFakultas extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
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
            "Profil FPMIPA",
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.black,
              fontSize: 28.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          Padding(
            padding: EdgeInsets.all(12.0),
          ),
          DataTable(
            columns: <DataColumn>[
              DataColumn(label: Text("Jumlah Mahasiswa")),
              DataColumn(label: Text("500")),
            ],
            rows: <DataRow>[
              DataRow(
                cells: <DataCell>[
                  DataCell(Text("Jumlah Dosen")),
                  DataCell(Text("450")),
                ],
              ),
              DataRow(
                cells: <DataCell>[
                  DataCell(Text("Jumlah Prodi")),
                  DataCell(Text("9")),
                ],
              ),
              DataRow(
                cells: <DataCell>[
                  DataCell(Text("Rasion Dosen / Mahasiswa")),
                  DataCell(Text("1:20")),
                ],
              ),
              DataRow(
                cells: <DataCell>[
                  DataCell(Text("Rata-rata waktu lulus")),
                  DataCell(Text("4.5 Tahun")),
                ],
              ),
              DataRow(
                cells: <DataCell>[
                  DataCell(Text("Riwayat Kerjasama")),
                  DataCell(Text(" - 2020 UN\n - 2021 UM")),
                ],
              ),
              DataRow(
                cells: <DataCell>[
                  DataCell(Text("Fasilitas")),
                  DataCell(Text(" - Kantin\n - Student Corner")),
                ],
              ),
            ],
          ),
          Container(
            padding: EdgeInsets.all(12.0),
            height: 60,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                    style: TextButton.styleFrom(
                        backgroundColor: Color.fromARGB(255, 143, 5, 5)),
                    child: Align(
                      alignment: Alignment.center,
                      child: Text(
                        "         List Prodi         ",
                        style: heading5,
                      ),
                    ),
                    onPressed: () {
                      Navigator.of(context)
                          .push(MaterialPageRoute(builder: (context) {
                        return Daftarprodi();
                      }));
                    }),
                ElevatedButton(
                    style: TextButton.styleFrom(
                        backgroundColor: Color.fromARGB(255, 143, 5, 5)),
                    child: Align(
                      alignment: Alignment.center,
                      child: Text(
                        "Sarana Prasarana",
                        style: heading5,
                      ),
                    ),
                    onPressed: () {
                      Navigator.of(context)
                          .push(MaterialPageRoute(builder: (context) {
                        return Fasilitas();
                      }));
                    }),
              ],
            ),
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
                    return MyHome();
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

void setState(Null Function() param0) {}
