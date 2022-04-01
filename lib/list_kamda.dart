// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'CustomCard.dart';

class ListKamda extends StatelessWidget {
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
          child: Text("Daftar KAMDA",
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
        //widget yang akan ditampilkan dalam 1 baris adalah 2
        crossAxisCount: 2,
        children: [
          //saya membuat custom card di bawah agar kodingan tidak terlalu panjang
          CustomCard(title: "CIBIRU", image: "assets/images/CIBIRU.jpeg"),
          CustomCard(title: "SUMEDANG", image: "assets/images/SUMEDANG.jpg"),
          CustomCard(
              title: "TASIKMALAYA", image: "assets/images/TASIKMALAYA.jpg"),
          CustomCard(
              title: "PURWAKARTA", image: "assets/images/PURWAKARTA.jpg"),
          CustomCard(title: "SERANG", image: "assets/images/SERANG.jpg"),
        ],
      ),
    );
  }
}
