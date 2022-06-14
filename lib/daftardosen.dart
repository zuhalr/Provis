// ignore_for_file: unnecessary_new

import 'package:flutter/material.dart';
import 'package:provis/editprodi.dart';
import 'package:provis/profil_dosen.dart';

import 'Widgets/theme.dart';
import 'compare.dart';
import 'daftarfakultas.dart';
import 'daftarprodi.dart';
import 'dashboard.dart';
import 'home_view.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class IsiDataDosen {
  String slug;
  String name;
  String url_image;
  IsiDataDosen(
      {required this.name, required this.slug, required this.url_image});
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
      var url_image = val["url_image"];
      ListPop.add(IsiDataDosen(slug: slug, name: name, url_image: url_image));
      // print(val);
    }
  }
  //map dari json ke atribut
  factory DataDosen.fromJson(Map<String, dynamic> json) {
    return DataDosen(json);
  }
}

class DaftarDosen extends StatefulWidget {
  const DaftarDosen({Key? key, required this.slug}) : super(key: key);
  final String slug;
  @override
  State<DaftarDosen> createState() => _DaftarDosenState();
}

class _DaftarDosenState extends State<DaftarDosen> {
  late Future<DataDosen> futureDataDosen;

  //https://datausa.io/api/data?drilldowns=Nation&measures=Population
  String url = "http://localhost:3000/dosen";

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
        backgroundColor: Color.fromARGB(255, 143, 5, 5),
        title: Center(
          child: Text("Daftar Dosen ${widget.slug}",
              style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white)),
        ),
        bottom: AppBar(
          backgroundColor: Colors.white,
          title: Container(
            width: double.infinity,
            height: 40,
            color: Colors.white,
            child: Center(
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Cari',
                  prefixIcon: IconButton(
                    icon: const Icon(Icons.search),
                    tooltip: 'search',
                    onPressed: () {
                      // kalau ditap
                    },
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
      body: Center(
        child: FutureBuilder<DataDosen>(
          future: futureDataDosen,
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return Center(
                //gunakan listview builder
                child: GridView.builder(
                  itemCount:
                      snapshot.data!.ListPop.length, //asumsikan data ada isi
                  gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 1,
                  ),
                  itemBuilder: (context, index) {
                    if (snapshot.data!.ListPop[index].slug == widget.slug) {
                      return Container(
                          decoration: BoxDecoration(border: Border.all()),
                          padding: const EdgeInsets.all(1),
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top: 2),
                                  child: Card(
                                      elevation: 5,
                                      child: InkWell(
                                        onTap: () {
                                          Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    ProfilDosen()),
                                          );
                                        },
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Container(
                                              width: 100,
                                              height: 100,
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(10),
                                                image: DecorationImage(
                                                  image: NetworkImage(snapshot
                                                      .data!
                                                      .ListPop[index]
                                                      .url_image),
                                                  fit: BoxFit.cover,
                                                ),
                                              ),
                                            ),
                                            Text(
                                              snapshot
                                                  .data!.ListPop[index].name,
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                  color: textBlack,
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 20.0),
                                            ),
                                          ],
                                        ),
                                      )),
                                ),
                              ]));
                    } else {
                      return Container(width: 0.0, height: 0.0);
                    }
                  },
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
