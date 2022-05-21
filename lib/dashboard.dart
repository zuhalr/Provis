// ignore_for_file: prefer_const_constructors, unnecessary_new

import 'package:flutter/material.dart';
import 'package:provis/Akreditasi.dart';
import 'package:provis/Widgets/CustomCard.dart';
import 'package:provis/Widgets/theme.dart';
import 'package:provis/compare.dart';
import 'package:provis/dashboard.dart';
import 'package:provis/editprodi.dart';
import 'package:provis/list_prestasi.dart';
import 'package:provis/profil_dosen.dart';
import 'package:provis/addprestasi.dart';
import 'daftarfakultas.dart';
import 'list_dosen.dart';
import 'home.dart';
import 'fasilitas.dart';
import 'profil_dosen.dart';
import 'dashboard.dart';
import 'home_view.dart';

class Dashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
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
      body: ListView(children: <Widget>[
        Padding(
          padding: EdgeInsets.all(12.0),
        ),
        Text(
          "Dashboard",
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.black,
            fontSize: 28.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          "Summary Update",
          textAlign: TextAlign.center,
          style: TextStyle(
              color: Colors.black, fontSize: 28.0, fontWeight: FontWeight.bold),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(12),
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Center(
                child: Wrap(
                  spacing: 20,
                  runSpacing: 20.0,
                  children: <Widget>[
                    SizedBox(
                      width: 160.0,
                      height: 160.0,
                      child: Card(
                        color: Color.fromARGB(255, 143, 5, 5),
                        elevation: 2.0,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8.0)),
                        child: InkWell(
                            onTap: () {
                              Navigator.of(context)
                                  .push(MaterialPageRoute(builder: (context) {
                                return ListPrestasi();
                              }));
                            },
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                children: <Widget>[
                                  Image.asset(
                                    "assets/images/todo.png",
                                    width: 64.0,
                                  ),
                                  SizedBox(
                                    height: 10.0,
                                  ),
                                  Text(
                                    "Prestasi",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20.0),
                                  ),
                                  SizedBox(
                                    height: 5.0,
                                  ),
                                  Text(
                                    "+2 Items",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w100),
                                  )
                                ],
                              ),
                            )),
                      ),
                    ),
                    SizedBox(
                      width: 160.0,
                      height: 160.0,
                      child: Card(
                        color: Color.fromARGB(255, 143, 5, 5),
                        elevation: 2.0,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8.0)),
                        child: InkWell(
                            onTap: () {
                              Navigator.of(context)
                                  .push(MaterialPageRoute(builder: (context) {
                                return ListPrestasi();
                              }));
                            },
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                children: <Widget>[
                                  Image.asset(
                                    "assets/images/note.png",
                                    width: 64.0,
                                  ),
                                  SizedBox(
                                    height: 10.0,
                                  ),
                                  Text(
                                    "Kerja Sama",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20.0),
                                  ),
                                  SizedBox(
                                    height: 5.0,
                                  ),
                                  Text(
                                    "+5 Items",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w100),
                                  )
                                ],
                              ),
                            )),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(12),
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Center(
                child: Wrap(
                  spacing: 20,
                  runSpacing: 20.0,
                  children: <Widget>[
                    SizedBox(
                      width: 160.0,
                      height: 160.0,
                      child: Card(
                        color: Color.fromARGB(255, 143, 5, 5),
                        elevation: 2.0,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8.0)),
                        child: InkWell(
                            onTap: () {
                              Navigator.of(context)
                                  .push(MaterialPageRoute(builder: (context) {
                                return Fasilitas();
                              }));
                            },
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                children: <Widget>[
                                  Image.asset(
                                    "assets/images/calendar.png",
                                    width: 64.0,
                                  ),
                                  SizedBox(
                                    height: 10.0,
                                  ),
                                  Text(
                                    "Sarana",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20.0),
                                  ),
                                  SizedBox(
                                    height: 5.0,
                                  ),
                                  Text(
                                    "+2 Items",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w100),
                                  )
                                ],
                              ),
                            )),
                      ),
                    ),
                    SizedBox(
                      width: 160.0,
                      height: 160.0,
                      child: Card(
                        color: Color.fromARGB(255, 143, 5, 5),
                        elevation: 2.0,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8.0)),
                        child: InkWell(
                            onTap: () {
                              Navigator.of(context)
                                  .push(MaterialPageRoute(builder: (context) {
                                return Akreditasi();
                              }));
                            },
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                children: <Widget>[
                                  Image.asset(
                                    "assets/images/settings.png",
                                    width: 64.0,
                                  ),
                                  SizedBox(
                                    height: 10.0,
                                  ),
                                  Text(
                                    "Akreditasi",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20.0),
                                  ),
                                  SizedBox(
                                    height: 5.0,
                                  ),
                                  Text(
                                    "+3 Items",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w100),
                                  )
                                ],
                              ),
                            )),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(12),
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Center(
                child: Wrap(
                  spacing: 20,
                  runSpacing: 20.0,
                  children: <Widget>[
                    Container(
                      height: 80,
                      width: 500,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          ElevatedButton(
                              style: TextButton.styleFrom(
                                  backgroundColor:
                                      Color.fromARGB(255, 143, 5, 5)),
                              child: Align(
                                alignment: Alignment.center,
                                child: Text(
                                  "Daftar Fakultas",
                                  style: heading5,
                                ),
                              ),
                              onPressed: () {
                                Navigator.of(context)
                                    .push(MaterialPageRoute(builder: (context) {
                                  return Daftarfakultas();
                                }));
                              }),
                          ElevatedButton(
                              style: TextButton.styleFrom(
                                  backgroundColor:
                                      Color.fromARGB(255, 143, 5, 5)),
                              child: Align(
                                alignment: Alignment.center,
                                child: Text(
                                  "Compare",
                                  style: heading5,
                                ),
                              ),
                              onPressed: () {
                                Navigator.of(context)
                                    .push(MaterialPageRoute(builder: (context) {
                                  return Compare();
                                }));
                              }),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
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
