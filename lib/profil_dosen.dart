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
import 'daftardosen.dart';
import 'home.dart';
import 'fasilitas.dart';
import 'profil_dosen.dart';
import 'dashboard.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class IsiDataDosen {
  String slug;
  String name;
  String jabatan;
  String pendidikan;
  String status;
  String riwPend;
  String url_image;
  String riwPeng;
  String prestasi;
  IsiDataDosen(
      {required this.name,
      required this.slug,
      required this.jabatan,
      required this.pendidikan,
      required this.status,
      required this.riwPend,
      required this.riwPeng,
      required this.prestasi,
      required this.url_image});
}

class DataDosen {
  List<IsiDataDosen> ListPop = <IsiDataDosen>[];

  DataDosen(Map<String, dynamic> json) {
    // isi listPop disini
    var data = json["data"]["dosen"];
    // print(data);
    for (var val in data) {
      var slug = val["slug"];
      var name = val["nama"];
      var jabatan = val["jabatan"];
      var pendidikan = val["pendidikan"];
      var status = val["status"];
      var riwPend = val["riwayat_pendidikan"];
      var url_image = val["url_image"];
      var riwPeng = val["riwayat_pengajaran"];
      var prestasi = val["riwayat_prestasi"];
      ListPop.add(IsiDataDosen(
          slug: slug,
          name: name,
          jabatan: jabatan,
          pendidikan: pendidikan,
          status: status,
          riwPend: riwPend,
          riwPeng: riwPeng,
          prestasi: prestasi,
          url_image: url_image));
      // print(val);
    }
  }
  //map dari json ke atribut
  factory DataDosen.fromJson(Map<String, dynamic> json) {
    return DataDosen(json);
  }
}

class ProfilDosen extends StatefulWidget {
  const ProfilDosen({Key? key, required this.slug}) : super(key: key);

  final String slug;
  @override
  State<ProfilDosen> createState() => _ProfilDosenState();
}

class _ProfilDosenState extends State<ProfilDosen> {
  late Future<DataDosen> futureDataDosen;

  //https://datausa.io/api/data?drilldowns=Nation&measures=Population
  String url = "http://165.22.109.98:9998/dosen";

  //fetch data
  Future<DataDosen> fetchData() async {
    final response = await http.get(Uri.parse(url));

    if (response.statusCode == 200) {
      // jika server mengembalikan 200 OK (berhasil),
      // parse json
      return DataDosen.fromJson(jsonDecode(response.body));
    } else {
      // jika gagal (bukan  200 OK),
      // lempar exception
      throw Exception('Gagal load');
    }
  }

  @override
  void initState() {
    super.initState();
    futureDataDosen = fetchData();
  }

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
                return ProfilDosen(
                  slug: widget.slug,
                );
              }));
            },
          ),
        ],
      ),
      backgroundColor: colorLight,
      body: ListView(
        // scrollDirection: Axis.vertical,
        // shrinkWrap: true,
        children: [
          Padding(
            padding: EdgeInsets.all(12.0),
          ),
          Text(
            "Profil ${widget.slug}",
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
          Center(
            child: FutureBuilder<DataDosen>(
              future: futureDataDosen,
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  return Center(
                    //gunakan listview builder
                    child: Container(
                      height: 500,
                      child: ListView.builder(
                        itemCount: snapshot
                            .data!.ListPop.length, //asumsikan data ada isi
                        itemBuilder: (context, index) {
                          if (snapshot.data!.ListPop[index].name ==
                              widget.slug) {
                            return DataTable(
                              columns: <DataColumn>[
                                DataColumn(label: Text("Jabatan")),
                                DataColumn(
                                    label: Text(snapshot
                                        .data!.ListPop[index].jabatan
                                        .toString())),
                              ],
                              rows: <DataRow>[
                                DataRow(
                                  cells: <DataCell>[
                                    DataCell(Text("Pendidikan")),
                                    DataCell(Text(snapshot
                                        .data!.ListPop[index].pendidikan
                                        .toString())),
                                  ],
                                ),
                                DataRow(
                                  cells: <DataCell>[
                                    DataCell(Text("Status Ikatan Kerja")),
                                    DataCell(Text(
                                        snapshot.data!.ListPop[index].status)),
                                  ],
                                ),
                                DataRow(
                                  cells: <DataCell>[
                                    DataCell(Text("Riwayat Pengajaran")),
                                    DataCell(Text(
                                        snapshot.data!.ListPop[index].riwPeng)),
                                  ],
                                ),
                                DataRow(
                                  cells: <DataCell>[
                                    DataCell(Text("Riwayat Pendidikan")),
                                    DataCell(Text(
                                        snapshot.data!.ListPop[index].riwPend)),
                                  ],
                                ),
                                DataRow(
                                  cells: <DataCell>[
                                    DataCell(Text("Riwayat Prestasi")),
                                    DataCell(Text(snapshot
                                        .data!.ListPop[index].prestasi)),
                                  ],
                                ),
                              ],
                            );
                          }
                          return Container();
                          // ignore: dead_code
                        },
                      ),
                    ),
                  );
                } else if (snapshot.hasError) {
                  return Text('${snapshot.error}');
                }
                // By default, show a loading spinner.
                return const CircularProgressIndicator();
              },
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
              //Daftar Dosen
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
              //Menu kaDosen (Edit Data Dosen)
              child: IconButton(
                color: colorLight,
                icon: Icon(Icons.person),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => DaftarFakultas()),
                  );
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
