// ignore_for_file: prefer_const_constructors, unnecessary_new
import 'package:flutter/material.dart';
import 'package:provis/Profil_fakultas.dart';
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
                          "assets/images/fpmipa.jpg",
                          fit: BoxFit.cover,
                        ),
                      ),
                      Text(
                        "FPMIPA",
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
                          "images/fpips.jpg",
                          fit: BoxFit.cover,
                        ),
                      ),
                      Text(
                        "FPIPS",
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
                          "assets/images/fpok.jpg",
                          fit: BoxFit.cover,
                        ),
                      ),
                      Text(
                        "FPOK",
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
                          "assets/images/fptk.jpg",
                          fit: BoxFit.cover,
                        ),
                      ),
                      Text(
                        "FPMIPA",
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
                          "assets/images/FIP.jpg",
                          fit: BoxFit.cover,
                        ),
                      ),
                      Text(
                        "FIP",
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
                          "assets/images/fpbs.jpg",
                          fit: BoxFit.cover,
                        ),
                      ),
                      Text(
                        "FPBS",
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
                          "assets/images/fpeb.jpg",
                          fit: BoxFit.cover,
                        ),
                      ),
                      Text(
                        "FPEB",
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
                          "assets/images/fpsd.jpg",
                          fit: BoxFit.cover,
                        ),
                      ),
                      Text(
                        "FPSD",
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
                          "assets/images/CIBIRU.jpeg",
                          fit: BoxFit.cover,
                        ),
                      ),
                      Text(
                        "Kamda Cibiru",
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
                          "images/SUMEDANG.jpg",
                          fit: BoxFit.cover,
                        ),
                      ),
                      Text(
                        "Kamda Sumedang",
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
                          "images/TASIKMALAYA.jpg",
                          height: 160,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Text(
                        "Kamda Tasikmalaya",
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
                          "assets/images/PURWAKARTA.jpg",
                          fit: BoxFit.cover,
                        ),
                      ),
                      Text(
                        "Kamda Purwakarta",
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
                          "assets/images/SERANG.jpg",
                          fit: BoxFit.cover,
                        ),
                      ),
                      Text(
                        "Kamda Serang",
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
          // CustomCard(
          //   title: "FPMIPA",
          //   image: "assets/images/fpmipa.jpg",
          // ),
          // CustomCard(title: "FIP", image: "assets/images/FIP.jpg"),
          // CustomCard(title: "FPIPS", image: "assets/images/fpips.jpg"),
          // CustomCard(title: "FPBS", image: "assets/images/fpbs.jpg"),
          // CustomCard(title: "FPSD", image: "assets/images/fpsd.jpg"),
          // CustomCard(title: "FPTK", image: "assets/images/fptk.jpg"),
          // CustomCard(title: "FPOK", image: "assets/images/fpok.jpg"),
          // CustomCard(title: "FPEB", image: "assets/images/fpeb.jpg"),
          // CustomCard(
          //     title: "Kampus Daerah Cibiru",
          //     image: "assets/images/CIBIRU.jpeg"),
          // CustomCard(
          //     title: "Kampus Daerah Sumedang",
          //     image: "assets/images/SUMEDANG.jpg"),
          // CustomCard(
          //     title: "Kampus Daerah Tasikmalaya",
          //     image: "assets/images/TASIKMALAYA.jpg"),
          // CustomCard(
          //     title: "Kampus Daerah Purwakarta",
          //     image: "assets/images/PURWAKARTA.jpg"),
          // CustomCard(
          //     title: "Kampus Daerah Serang", image: "assets/images/SERANG.jpg"),
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
