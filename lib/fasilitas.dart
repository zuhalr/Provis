// ignore_for_file: unnecessary_new

import 'package:flutter/material.dart';
import 'package:provis/editprodi.dart';

import 'Widgets/theme.dart';
import 'compare.dart';
import 'daftarfakultas.dart';
import 'daftarprodi.dart';
import 'dashboard.dart';
import 'home_view.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class IsiDataFasilitas {
  String slug;
  String name;
  String url_image;
  IsiDataFasilitas(
      {required this.name, required this.slug, required this.url_image});
}

class DataFasilitas {
  List<IsiDataFasilitas> ListPop = <IsiDataFasilitas>[];

  DataFasilitas(Map<String, dynamic> json) {
    // isi listPop disini
    var data = json["data"]["fasilitas"];
    // print(data);
    for (var val in data) {
      var slug = val["fakultas"];
      var name = val["name"];
      var url_image = val["url_image"];
      ListPop.add(
          IsiDataFasilitas(slug: slug, name: name, url_image: url_image));
      // print(val);
    }
  }
  //map dari json ke atribut
  factory DataFasilitas.fromJson(Map<String, dynamic> json) {
    return DataFasilitas(json);
  }
}

class DaftarFasilitas extends StatefulWidget {
  const DaftarFasilitas({Key? key, required this.slug}) : super(key: key);

  final String slug;

  @override
  State<DaftarFasilitas> createState() => _DaftarFasilitasState();
}

class _DaftarFasilitasState extends State<DaftarFasilitas> {
  late Future<DataFasilitas> futureDataFasilitas;

  //https://datausa.io/api/data?drilldowns=Nation&measures=Population
  String url = "http://localhost:3000/fasilitas";

  //fetch data
  Future<DataFasilitas> fetchData() async {
    final response = await http.get(Uri.parse(url));

    if (response.statusCode == 200) {
      // jika server mengembalikan 200 OK (berhasil),
      // parse json
      return DataFasilitas.fromJson(jsonDecode(response.body));
    } else {
      // jika gagal (bukan  200 OK),
      // lempar exception
      throw Exception('Gagal load');
    }
  }

  @override
  void initState() {
    super.initState();
    futureDataFasilitas = fetchData();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Fasilitas ${widget.slug}'),
        backgroundColor: Color.fromARGB(255, 143, 5, 5),
      ),
      body: Center(
        child: FutureBuilder<DataFasilitas>(
          future: futureDataFasilitas,
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return Center(
                //gunakan listview builder
                child: ListView.builder(
                    itemCount:
                        snapshot.data!.ListPop.length, //asumsikan data ada isi
                    itemBuilder: (context, index) {
                      if (snapshot.data!.ListPop[index].slug == widget.slug) {
                        return Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: Card(
                                clipBehavior: Clip.antiAlias,
                                child: Column(children: [
                                  InkWell(
                                      splashColor: Colors.blue.withAlpha(30),
                                      child: Container(
                                        width: 1000,
                                        height: 100,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          image: DecorationImage(
                                            image: NetworkImage(snapshot.data!
                                                .ListPop[index].url_image),
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      )),
                                  ListTile(
                                    // leading: Icon(Icons.arrow_drop_down_circle),
                                    title: Text(
                                        snapshot.data!.ListPop[index].name),
                                  )
                                ])));
                      }
                      return Container();
                    }),
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
