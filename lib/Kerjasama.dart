// ignore_for_file: unnecessary_new

import 'package:flutter/material.dart';
import 'package:provis/editprodi.dart';

import 'Widgets/theme.dart';
import 'compare.dart';
import 'daftarfakultas.dart';
import 'daftarprodi.dart';
import 'dashboard.dart';
import 'home_view.dart';

class ListKerjasama extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: const Text('List Kerjasama'),
        backgroundColor: Color.fromARGB(255, 143, 5, 5),
      ),
      body: ListView(
        children: [
          Card(
            clipBehavior: Clip.antiAlias,
            child: Column(
              children: [
                Image.asset(
                  'images/1.jpg',
                  height: 250,
                ),
                ListTile(
                  // leading: Icon(Icons.arrow_drop_down_circle),

                  title: const Text('Kerjasama dengan NTU, Singapura'),
                  subtitle: Text(
                    'Mahasiswa yang terlibat adalah Hendi  Yahya,  M. Rifky, Zuhal R., Samuel Nelson, dan M. Agil. ',
                    style: TextStyle(color: Colors.black.withOpacity(0.8)),
                  ),
                ),
              ],
            ),
          ),
          Card(
            clipBehavior: Clip.antiAlias,
            child: Column(
              children: [
                ListTile(
                  // leading: Icon(Icons.arrow_drop_down_circle),
                  leading: Image.asset('images/test.png'),
                  title: const Text('Kerjasama dengan NTU, Singapura'),
                  subtitle: Text(
                    'Mahasiswa yang terlibat adalah Hendi  Yahya,  M. Rifky, Zuhal R., Samuel Nelson, dan M. Agil. ',
                    style: TextStyle(color: Colors.black.withOpacity(0.8)),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(0),
                  child: Text(
                    'Desember 2021',
                    style: TextStyle(color: Colors.black.withOpacity(0.6)),
                  ),
                ),
              ],
            ),
          ),
          Card(
            clipBehavior: Clip.antiAlias,
            child: Column(
              children: [
                ListTile(
                  // leading: Icon(Icons.arrow_drop_down_circle),
                  leading: Image.asset('images/test.png'),
                  title: const Text('Kerjasama dengan NTU, Singapura'),
                  subtitle: Text(
                    'Mahasiswa yang terlibat adalah Hendi  Yahya,  M. Rifky, Zuhal R., Samuel Nelson, dan M. Agil. ',
                    style: TextStyle(color: Colors.black.withOpacity(0.8)),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(0),
                  child: Text(
                    'Agustus 2020',
                    style: TextStyle(color: Colors.black.withOpacity(0.6)),
                  ),
                ),
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
      ), //column center
    );
  }
}
