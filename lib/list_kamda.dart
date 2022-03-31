import 'package:flutter/material.dart';



class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

//membuat class custom card
class ListKAMDA extends StatelessWidget {
  //konstruktor
  ListKAMDA({required this.title, required this.image});
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
          ListKAMDA(title: "CIBIRU", image: "assets/images/CIBIRU.jpeg"),
          ListKAMDA(title: "SUMEDANG", image: "assets/images/SUMEDANG.jpg"),
          ListKAMDA(title: "TASIKMALAYA", image: "assets/images/TASIKMALAYA.jpg"),
          ListKAMDA(title: "PURWAKARTA", image: "assets/images/PURWAKARTA.jpg"),
          ListKAMDA(title: "SERANG", image: "assets/images/SERANG.jpg"),
        ],
      ),
    );
  }
}