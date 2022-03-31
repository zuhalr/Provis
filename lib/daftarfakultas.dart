// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

//membuat class custom card
class CustomCard extends StatelessWidget {
  //konstruktor
  CustomCard({required this.title, required this.image});
  String title;
  String image;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: Card(
        elevation: 5,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 200,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(
                        image,
                      ),
                      fit: BoxFit.cover)),
            ),
            TextButton(
              style: TextButton.styleFrom(
                primary: Colors.black,
                textStyle: const TextStyle(fontSize: 16),
              ),
              onPressed: () {},
              child: Text(title),
            ),
          ],
        ),
      ),
    );
  }
}

class _MyAppState extends State<MyApp> {
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
        //widget yang akan ditampilkan dalam 1 baris adalah 2
        crossAxisCount: 2,
        children: [
          //saya membuat custom card di bawah agar kodingan tidak terlalu panjang
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
