// ignore_for_file: prefer_const_constructors, unnecessary_new
import 'package:flutter/material.dart';
import 'package:provis/Profil_fakultas.dart';
import 'package:provis/Widgets/CustomCard.dart';
import 'package:provis/Widgets/theme.dart';
import 'package:provis/list_prestasi.dart';
import 'package:provis/profil_dosen.dart';
import 'package:provis/compare.dart';
import 'package:provis/profil_prodi.dart';
import 'daftarfakultas.dart';
import 'list_dosen.dart';
import 'fasilitas.dart';
import 'profil_dosen.dart';
import 'home_view.dart';
import 'package:provis/addprestasi.dart';
import 'package:provis/editprodi.dart';
import 'dashboard.dart';

class Daftarprodi extends StatelessWidget {
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
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: Card(
                elevation: 5,
                child: InkWell(
                  onTap: () {},
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 200,
                        child: Image.asset(
                          "assets/images/mat.jpg",
                          fit: BoxFit.cover,
                        ),
                      ),
                      Text(
                        "Matematika",
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
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: Card(
                elevation: 5,
                child: InkWell(
                  onTap: () {},
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 200,
                        child: Image.asset(
                          "images/pendmat.jpg",
                          fit: BoxFit.cover,
                        ),
                      ),
                      Text(
                        "Pendidikan Matematika",
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
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: Card(
                elevation: 5,
                child: InkWell(
                  onTap: () {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (context) {
                      return Profilprodi();
                    }));
                  },
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 200,
                        child: Image.asset(
                          "assets/images/kom.jpg",
                          fit: BoxFit.cover,
                        ),
                      ),
                      Text(
                        "Ilmu Komputer",
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
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: Card(
                elevation: 5,
                child: InkWell(
                  onTap: () {},
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 200,
                        child: Image.asset(
                          "assets/images/pendkom.jpg",
                          fit: BoxFit.cover,
                        ),
                      ),
                      Text(
                        "Pendidikan Ilmu Komputer",
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
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: Card(
                elevation: 5,
                child: InkWell(
                  onTap: () {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (context) {
                      return ProfilFakultas();
                    }));
                  },
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 200,
                        child: Image.asset(
                          "assets/images/fis.jpg",
                          fit: BoxFit.cover,
                        ),
                      ),
                      Text(
                        "Fisika",
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
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: Card(
                elevation: 5,
                child: InkWell(
                  onTap: () {},
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 200,
                        child: Image.asset(
                          "assets/images/pendfis.jpg",
                          fit: BoxFit.cover,
                        ),
                      ),
                      Text(
                        "Pendidikan Fisika",
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
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: Card(
                elevation: 5,
                child: InkWell(
                  onTap: () {},
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 200,
                        child: Image.asset(
                          "assets/images/bio.jpg",
                          fit: BoxFit.cover,
                        ),
                      ),
                      Text(
                        "Biologi",
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
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: Card(
                elevation: 5,
                child: InkWell(
                  onTap: () {},
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 200,
                        child: Image.asset(
                          "assets/images/pendbio.jpg",
                          fit: BoxFit.cover,
                        ),
                      ),
                      Text(
                        "Pendidikan Biologi",
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
      ),
    );
  }
}
