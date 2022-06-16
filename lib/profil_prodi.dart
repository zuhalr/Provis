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

class IsiDataProdi {
  String slug;
  String name;
  int jmlMhs;
  int jmlDos;
  String akreditasi;
  String wktLulus;
  String url_image;
  String ratio;
  String kerjasama;
  String jenjang;
  IsiDataProdi(
      {required this.name,
      required this.slug,
      required this.jmlMhs,
      required this.jmlDos,
      required this.akreditasi,
      required this.wktLulus,
      required this.ratio,
      required this.kerjasama,
      required this.jenjang,
      required this.url_image});
}

class DataProdi {
  List<IsiDataProdi> ListPop = <IsiDataProdi>[];

  DataProdi(Map<String, dynamic> json) {
    // isi listPop disini
    var data = json["data"]["prodi"];
    // print(data);
    for (var val in data) {
      var slug = val["slug"];
      var name = val["name"];
      var jmlMhs = val["jml_mahasiswa"];
      var jmlDos = val["jml_dosen"];
      var akreditasi = val["akreditasi"];
      var wktLulus = val["wkt_lulus"];
      var url_image = val["url_image"];
      var ratio = val["ratio"];
      var jenjang = val["jenjang"];
      var kerjasama = val["kerjasama"];
      ListPop.add(IsiDataProdi(
          slug: slug,
          name: name,
          jmlMhs: jmlMhs,
          jmlDos: jmlDos,
          akreditasi: akreditasi,
          wktLulus: wktLulus,
          ratio: ratio,
          kerjasama: kerjasama,
          jenjang: jenjang,
          url_image: url_image));
      // print(val);
    }
  }
  //map dari json ke atribut
  factory DataProdi.fromJson(Map<String, dynamic> json) {
    return DataProdi(json);
  }
}

class ProfilProdi extends StatefulWidget {
  const ProfilProdi({Key? key, required this.slug}) : super(key: key);

  final String slug;
  @override
  State<ProfilProdi> createState() => _ProfilProdiState();
}

class _ProfilProdiState extends State<ProfilProdi> {
  late Future<DataProdi> futureDataProdi;

  //https://datausa.io/api/data?drilldowns=Nation&measures=Population
  String url = "http://165.22.109.98:9998/prodi";

  //fetch data
  Future<DataProdi> fetchData() async {
    final response = await http.get(Uri.parse(url));

    if (response.statusCode == 200) {
      // jika server mengembalikan 200 OK (berhasil),
      // parse json
      return DataProdi.fromJson(jsonDecode(response.body));
    } else {
      // jika gagal (bukan  200 OK),
      // lempar exception
      throw Exception('Gagal load');
    }
  }

  @override
  void initState() {
    super.initState();
    futureDataProdi = fetchData();
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
                return DaftarFakultas();
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
            child: FutureBuilder<DataProdi>(
              future: futureDataProdi,
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  return Center(
                    //gunakan listview builder
                    child: Container(
                      height: 400,
                      child: ListView.builder(
                        itemCount: snapshot
                            .data!.ListPop.length, //asumsikan data ada isi
                        itemBuilder: (context, index) {
                          if (snapshot.data!.ListPop[index].slug ==
                              widget.slug) {
                            return DataTable(
                              columns: <DataColumn>[
                                DataColumn(label: Text("Jumlah Mahasiswa")),
                                DataColumn(
                                    label: Text(snapshot
                                        .data!.ListPop[index].jmlMhs
                                        .toString())),
                              ],
                              rows: <DataRow>[
                                DataRow(
                                  cells: <DataCell>[
                                    DataCell(Text("Jumlah Dosen")),
                                    DataCell(Text(snapshot
                                        .data!.ListPop[index].jmlDos
                                        .toString())),
                                  ],
                                ),
                                DataRow(
                                  cells: <DataCell>[
                                    DataCell(Text("Akreditasi")),
                                    DataCell(Text(snapshot
                                        .data!.ListPop[index].akreditasi)),
                                  ],
                                ),
                                DataRow(
                                  cells: <DataCell>[
                                    DataCell(Text("Jenjang")),
                                    DataCell(Text(
                                        snapshot.data!.ListPop[index].jenjang)),
                                  ],
                                ),
                                DataRow(
                                  cells: <DataCell>[
                                    DataCell(Text("Rasio Dosen / Mahasiswa")),
                                    DataCell(Text(
                                        snapshot.data!.ListPop[index].ratio)),
                                  ],
                                ),
                                DataRow(
                                  cells: <DataCell>[
                                    DataCell(Text("Rata-rata waktu lulus")),
                                    DataCell(Text(snapshot
                                        .data!.ListPop[index].wktLulus)),
                                  ],
                                ),
                                DataRow(
                                  cells: <DataCell>[
                                    DataCell(Text("Riwayat Kerjasama")),
                                    DataCell(Text(snapshot
                                        .data!.ListPop[index].kerjasama)),
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
                        "         List Dosen        ",
                        style: heading5,
                      ),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => DaftarDosen(
                                  slug: widget.slug,
                                )),
                      );
                    }),
                // ElevatedButton(
                //     style: TextButton.styleFrom(
                //         backgroundColor: Color.fromARGB(255, 143, 5, 5)),
                //     child: Align(
                //       alignment: Alignment.center,
                //       child: Text(
                //         "Sarana Prasarana",
                //         style: heading5,
                //       ),
                //     ),
                //     onPressed: () {
                //       Navigator.of(context)
                //           .push(MaterialPageRoute(builder: (context) {
                //         return Fasilitas();
                //       }));
                //     }),
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
              //Daftar Prodi
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
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => DaftarProdi(slug: widget.slug)),
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
