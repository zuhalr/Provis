// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:provis/Widgets/CustomCard.dart';
import 'package:provis/Widgets/theme.dart';
import 'package:provis/profil_dosen.dart';
import 'daftarfakultas.dart';
import 'list_dosen.dart';
import 'fasilitas.dart';
import 'profil_dosen.dart';
import 'home_view.dart';

class Daftarfakultas extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 143, 5, 5),
        title: Center(
          child: Text("Daftar Fakultas",
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
      body: GridView.count(
        crossAxisCount: 2,
        children: [
          CustomCard(title: "FPMIPA", image: "assets/images/fpmipa.jpg"),
          CustomCard(title: "FIP", image: "assets/images/FIP.jpg"),
          CustomCard(title: "FPIPS", image: "assets/images/fpips.jpg"),
          CustomCard(title: "FPBS", image: "assets/images/fpbs.jpg"),
          CustomCard(title: "FPSD", image: "assets/images/fpsd.jpg"),
          CustomCard(title: "FPTK", image: "assets/images/fptk.jpg"),
          CustomCard(title: "FPOK", image: "assets/images/fpok.jpg"),
          CustomCard(title: "FPEB", image: "assets/images/fpeb.jpg"),
          CustomCard(
              title: "Kampus Daerah Cibiru",
              image: "assets/images/CIBIRU.jpeg"),
          CustomCard(
              title: "Kampus Daerah Sumedang",
              image: "assets/images/SUMEDANG.jpg"),
          CustomCard(
              title: "Kampus Daerah Tasikmalaya",
              image: "assets/images/TASIKMALAYA.jpg"),
          CustomCard(
              title: "Kampus Daerah Purwakarta",
              image: "assets/images/PURWAKARTA.jpg"),
          CustomCard(
              title: "Kampus Daerah Serang", image: "assets/images/SERANG.jpg"),
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
                onPressed: () {},
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
                onPressed: () {},
              ),
            ),
            Expanded(
              //Menu kaprodi (Edit Data Prodi)
              child: IconButton(
                color: colorLight,
                icon: Icon(Icons.person),
                onPressed: () {},
              ),
            ),
          ],
        ),
      ),
    );
  }
}
