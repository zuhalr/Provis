// ignore_for_file: unnecessary_new

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
import 'package:http/http.dart' as http;
import 'dart:convert';

class IsiDataFakultas {
  String slug;
  String name;
  String url_image;
  String fasilitas;
  IsiDataFakultas(
      {required this.name,
      required this.slug,
      required this.fasilitas,
      required this.url_image});
}

class DataFakultas {
  List<IsiDataFakultas> ListPop = <IsiDataFakultas>[];

  DataFakultas(Map<String, dynamic> json) {
    // isi listPop disini
    var data = json["data"]["fakultas"];
    // print(data);
    for (var val in data) {
      var slug = val["slug"];
      var name = val["name"];
      var url_image = val["url_image"];
      var fasilitas = val["fasilitas"];
      ListPop.add(IsiDataFakultas(
          slug: slug,
          name: name,
          fasilitas: fasilitas,
          url_image: url_image));
      // print(val);
    }
  }
  //map dari json ke atribut
  factory DataFakultas.fromJson(Map<String, dynamic> json) {
    return DataFakultas(json);
  }
}

class Fasilitas extends StatefulWidget {
  const Fasilitas({Key? key, required this.slug}) : super(key: key);

  final String slug;
  @override
  State<Fasilitas> createState() => _FasilitasState();
}


class _FasilitasState extends State<Fasilitas> {
  late Future<DataFakultas> futureDataFakultas;

  //https://datausa.io/api/data?drilldowns=Nation&measures=Population
  String url = "http://localhost:3000/fakultas";

  //fetch data
  Future<DataFakultas> fetchData() async {
    final response = await http.get(Uri.parse(url));

    if (response.statusCode == 200) {
      // jika server mengembalikan 200 OK (berhasil),
      // parse json
      return DataFakultas.fromJson(jsonDecode(response.body));
    } else {
      // jika gagal (bukan  200 OK),
      // lempar exception
      throw Exception('Gagal load');
    }
  }

  @override
  void initState() {
    super.initState();
    futureDataFakultas = fetchData();
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("Fasilitas ${widget.slug}"),
        backgroundColor: Color.fromARGB(255, 143, 5, 5),
      ),
      body: ListView(children: [
          Padding(
            padding: EdgeInsets.all(12.0),
          ),
          Text(
            "Fasilitas ${widget.slug}",
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
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Card(
            clipBehavior: Clip.antiAlias,
            child: Column(
              children: [
                Image.asset('assets/images/gymnasium.jpg'),
                ListTile(
                  // leading: Icon(Icons.arrow_drop_down_circle),
                  title: const Text('Gymnasium UPI'),
                  subtitle: Text(
                    'Fasilitas Olahraga & Gedung Serbaguna',
                    style: TextStyle(color: Colors.black.withOpacity(0.6)),
                  ),
                ),
              ],
            ),
          ),
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
