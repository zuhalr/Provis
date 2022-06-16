// ignore_for_file: prefer_const_constructors, unnecessary_new
import 'package:flutter/material.dart';
import 'package:provis/Widgets/theme.dart';
import 'package:provis/compare.dart';
import 'package:provis/profil_prodi.dart';
import 'daftarfakultas.dart';
import 'home_view.dart';
import 'package:provis/editprodi.dart';
import 'dashboard.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class IsiDataProdi {
  String slug;
  String name;
  String url_image;
  String fakultas;
  IsiDataProdi(
      {required this.name,
      required this.slug,
      required this.fakultas,
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
      var fakultas = val["fakultas"];
      var url_image = val["url_image"];
      ListPop.add(IsiDataProdi(
          slug: slug, name: name, fakultas: fakultas, url_image: url_image));
      // print(val);
    }
  }
  //map dari json ke atribut
  factory DataProdi.fromJson(Map<String, dynamic> json) {
    return DataProdi(json);
  }
}

class DaftarProdi extends StatefulWidget {
  const DaftarProdi({Key? key, required this.slug}) : super(key: key);
  final String slug;
  @override
  State<DaftarProdi> createState() => _DaftarProdiState();
}

class _DaftarProdiState extends State<DaftarProdi> {
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
        backgroundColor: Color.fromARGB(255, 143, 5, 5),
        title: Center(
          child: Text("Daftar Prodi ${widget.slug}",
              style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white)),
        ),
        // bottom: AppBar(
        //   backgroundColor: Colors.white,
        //   title: Container(
        //     width: double.infinity,
        //     height: 40,
        //     color: Colors.white,
        //     child: Center(
        //       child: TextField(
        //         decoration: InputDecoration(
        //           hintText: 'Cari',
        //           prefixIcon: IconButton(
        //             icon: const Icon(Icons.search),
        //             tooltip: 'search',
        //             onPressed: () {
        //               // kalau ditap
        //             },
        //           ),
        //         ),
        //       ),
        //     ),
        //   ),
        // ),
      ),
      body: Center(
        child: FutureBuilder<DataProdi>(
          future: futureDataProdi,
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return Center(
                //gunakan listview builder
                child: ListView.builder(
                  itemCount:
                      snapshot.data!.ListPop.length, //asumsikan data ada isi
                  // gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(
                  //   crossAxisCount: 2,
                  //   childAspectRatio: 1,
                  // ),
                  itemBuilder: (context, index) {
                    if (snapshot.data!.ListPop[index].fakultas == widget.slug) {
                      return Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Card(
                              clipBehavior: Clip.antiAlias,
                              child: Column(children: [
                                InkWell(
                                    onTap: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => ProfilProdi(
                                                slug: snapshot.data!
                                                    .ListPop[index].slug)),
                                      );
                                    },
                                    splashColor: Colors.blue.withAlpha(30),
                                    child: Container(
                                      width: 1000,
                                      height: 100,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        image: DecorationImage(
                                          image: NetworkImage(snapshot
                                              .data!.ListPop[index].url_image),
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    )),
                                ListTile(
                                  // leading: Icon(Icons.arrow_drop_down_circle),
                                  title:
                                      Text(snapshot.data!.ListPop[index].name),
                                )
                              ])));
                    } else {
                      return Container();
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
