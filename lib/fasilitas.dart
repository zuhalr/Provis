// ignore_for_file: unnecessary_new

import 'package:flutter/material.dart';
import 'package:provis/editprodi.dart';

import 'Widgets/theme.dart';
import 'compare.dart';
import 'daftarfakultas.dart';
import 'daftarprodi.dart';
import 'dashboard.dart';
import 'home_view.dart';

class Fasilitas extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: const Text('Fasilitas'),
        backgroundColor: Color.fromARGB(255, 143, 5, 5),
      ),
      body: ListView(children: [
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
                // Padding(
                //   padding: const EdgeInsets.all(16.0),
                //   child: Text(
                //     'Gedung gymnasium sebagai center atau pusat dari kegiatan kelembagaan seperti penerimaan mahasiswa baru atau wisudaan.Serta gedung Gymnasium biasa digunakan Untuk kepentingan perkuliahan, kegiatan olahraga maupun acara-acara kemahasiswaan.',
                //     style: TextStyle(color: Colors.black.withOpacity(0.6)),
                //   ),
                // ),
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Card(
            clipBehavior: Clip.antiAlias,
            child: Column(
              children: [
                Image.asset('assets/images/poliklinik.jpg'),
                ListTile(
                  // leading: Icon(Icons.arrow_drop_down_circle),
                  title: const Text('Poliklinik UPI'),
                  subtitle: Text(
                    'Fasilitas Kesehatan',
                    style: TextStyle(color: Colors.black.withOpacity(0.6)),
                  ),
                ),
                // Padding(
                //   padding: const EdgeInsets.all(16.0),
                //   child: Text(
                //     desc',
                //     style: TextStyle(color: Colors.black.withOpacity(0.6)),
                //   ),
                // ),
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
