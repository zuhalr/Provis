// ignore_for_file: prefer_const_constructors, unnecessary_new
import 'package:flutter/material.dart';
import 'package:provis/Widgets/theme.dart';
import 'daftarfakultas.dart';
import 'home_view.dart';
import 'dashboard.dart';
import 'package:provis/editprodi.dart';

class Compare extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 143, 5, 5),
        title: Center(
          child: Text("Compare",
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
      body: Center(
        child: GridView.count(
          primary: false,
          padding: const EdgeInsets.all(2),
          crossAxisSpacing: 1,
          mainAxisSpacing: 1,
          crossAxisCount: 2,
          childAspectRatio: (1 / .2),
          children: [
            // CustomCard(title: "FPMIPA", image: "assets/images/fpmipa.jpg"),
            // CustomCard(title: "FIP", image: "assets/images/FIP.jpg"),
            Container(
              height: 80,
              width: 500,
              child: Padding(
                padding: EdgeInsets.all(2),
                //20 pixel ke semua arah
                child: ElevatedButton(
                    style: TextButton.styleFrom(
                        backgroundColor: Color.fromARGB(255, 143, 5, 5)),
                    child: Align(
                      alignment: Alignment.center,
                      child: Text(
                        "Nama Fakultas",
                        style: heading5,
                      ),
                    ),
                    onPressed: () {}),
              ),
            ),
            Container(
              height: 80,
              width: 500,
              child: Padding(
                padding: EdgeInsets.all(2),
                //20 pixel ke semua arah
                child: ElevatedButton(
                    style: TextButton.styleFrom(
                        backgroundColor: Color.fromARGB(255, 143, 5, 5)),
                    child: Align(
                      alignment: Alignment.center,
                      child: Text(
                        "Nama Fakultas",
                        style: heading5,
                      ),
                    ),
                    onPressed: () {}),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(8),
              child: const Text('Fakultas Ilmu Pendidikan'),
              alignment: Alignment.center,
            ),
            Container(
              padding: const EdgeInsets.all(8),
              child: const Text(
                  'Fakultas Pendidikan Matematika dan Ilmu Pengetahuan Alam'),
              alignment: Alignment.center,
            ),
            Container(
              height: 80,
              width: 500,
              child: Padding(
                padding: EdgeInsets.all(2),
                //20 pixel ke semua arah
                child: ElevatedButton(
                    style: TextButton.styleFrom(
                        backgroundColor: Color.fromARGB(255, 143, 5, 5)),
                    child: Align(
                      alignment: Alignment.center,
                      child: Text(
                        "Status",
                        style: heading5,
                      ),
                    ),
                    onPressed: () {}),
              ),
            ),
            Container(
              height: 80,
              width: 500,
              child: Padding(
                padding: EdgeInsets.all(2),
                //20 pixel ke semua arah
                child: ElevatedButton(
                    style: TextButton.styleFrom(
                        backgroundColor: Color.fromARGB(255, 143, 5, 5)),
                    child: Align(
                      alignment: Alignment.center,
                      child: Text(
                        "Status",
                        style: heading5,
                      ),
                    ),
                    onPressed: () {}),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(8),
              child: const Text('Aktif'),
              alignment: Alignment.center,
            ),
            Container(
              padding: const EdgeInsets.all(8),
              child: const Text('Aktif'),
              alignment: Alignment.center,
            ),
            Container(
              height: 80,
              width: 500,
              child: Padding(
                padding: EdgeInsets.all(2),
                //20 pixel ke semua arah
                child: ElevatedButton(
                    style: TextButton.styleFrom(
                        backgroundColor: Color.fromARGB(255, 143, 5, 5)),
                    child: Align(
                      alignment: Alignment.center,
                      child: Text(
                        "Akreditasi",
                        style: heading5,
                      ),
                    ),
                    onPressed: () {}),
              ),
            ),
            Container(
              height: 80,
              width: 500,
              child: Padding(
                padding: EdgeInsets.all(2),
                //20 pixel ke semua arah
                child: ElevatedButton(
                    style: TextButton.styleFrom(
                        backgroundColor: Color.fromARGB(255, 143, 5, 5)),
                    child: Align(
                      alignment: Alignment.center,
                      child: Text(
                        "Akreditasi",
                        style: heading5,
                      ),
                    ),
                    onPressed: () {}),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(8),
              child: const Text('A'),
              alignment: Alignment.center,
            ),
            Container(
              padding: const EdgeInsets.all(8),
              child: const Text('A'),
              alignment: Alignment.center,
            ),
            Container(
              height: 80,
              width: 500,
              child: Padding(
                padding: EdgeInsets.all(2),
                //20 pixel ke semua arah
                child: ElevatedButton(
                    style: TextButton.styleFrom(
                        backgroundColor: Color.fromARGB(255, 143, 5, 5)),
                    child: Align(
                      alignment: Alignment.center,
                      child: Text(
                        "Jumlah Prodi",
                        style: heading5,
                      ),
                    ),
                    onPressed: () {}),
              ),
            ),
            Container(
              height: 80,
              width: 500,
              child: Padding(
                padding: EdgeInsets.all(2),
                //20 pixel ke semua arah
                child: ElevatedButton(
                    style: TextButton.styleFrom(
                        backgroundColor: Color.fromARGB(255, 143, 5, 5)),
                    child: Align(
                      alignment: Alignment.center,
                      child: Text(
                        "Jumlah Prodi",
                        style: heading5,
                      ),
                    ),
                    onPressed: () {}),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(8),
              child: const Text('9 Prodi'),
              alignment: Alignment.center,
            ),
            Container(
              padding: const EdgeInsets.all(8),
              child: const Text('12 Prodi'),
              alignment: Alignment.center,
            ),
            Container(
              height: 80,
              width: 500,
              child: Padding(
                padding: EdgeInsets.all(2),
                //20 pixel ke semua arah
                child: ElevatedButton(
                    style: TextButton.styleFrom(
                        backgroundColor: Color.fromARGB(255, 143, 5, 5)),
                    child: Align(
                      alignment: Alignment.center,
                      child: Text(
                        "Rasio Dosen/Mahasiswa",
                        style: heading5,
                      ),
                    ),
                    onPressed: () {}),
              ),
            ),
            Container(
              height: 80,
              width: 500,
              child: Padding(
                padding: EdgeInsets.all(2),
                //20 pixel ke semua arah
                child: ElevatedButton(
                    style: TextButton.styleFrom(
                        backgroundColor: Color.fromARGB(255, 143, 5, 5)),
                    child: Align(
                      alignment: Alignment.center,
                      child: Text(
                        "Rasio Dosen/Mahasiswa",
                        style: heading5,
                      ),
                    ),
                    onPressed: () {}),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(8),
              child: const Text('1 : 10'),
              alignment: Alignment.center,
            ),
            Container(
              padding: const EdgeInsets.all(8),
              child: const Text('1 : 18'),
              alignment: Alignment.center,
            ),
            Container(
              height: 80,
              width: 500,
              child: Padding(
                padding: EdgeInsets.all(2),
                //20 pixel ke semua arah
                child: ElevatedButton(
                    style: TextButton.styleFrom(
                        backgroundColor: Color.fromARGB(255, 143, 5, 5)),
                    child: Align(
                      alignment: Alignment.center,
                      child: Text(
                        "Rata-Rata Waktu Kelulusan",
                        style: heading5,
                      ),
                    ),
                    onPressed: () {}),
              ),
            ),
            Container(
              height: 80,
              width: 500,
              child: Padding(
                padding: EdgeInsets.all(2),
                //20 pixel ke semua arah
                child: ElevatedButton(
                    style: TextButton.styleFrom(
                        backgroundColor: Color.fromARGB(255, 143, 5, 5)),
                    child: Align(
                      alignment: Alignment.center,
                      child: Text(
                        "Rata-Rata Waktu Kelulusan",
                        style: heading5,
                      ),
                    ),
                    onPressed: () {}),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(8),
              child: const Text('4 Tahun'),
              alignment: Alignment.center,
            ),
            Container(
              padding: const EdgeInsets.all(8),
              child: const Text('3.8 Tahun'),
              alignment: Alignment.center,
            ),
          ],
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
                    return Dashboard();
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
