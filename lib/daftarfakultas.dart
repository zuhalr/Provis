// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'CustomCard.dart';

class Daftarfakultas extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 143, 5, 5),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          tooltip: 'Back',
          onPressed: () {
            // kalau ditap
          },
        ),
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
        ],
      ),
    );
  }
}
