import 'package:flutter/material.dart';
import 'package:provis/list_prestasi.dart';
import 'list_dosen.dart';
import 'fasilitas.dart';
import 'daftarfakultas.dart';
import 'profil_dosen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(primarySwatch: Colors.red),
        title: 'UPI DATA',
        home: MyHome());
  }
}

//perlu  dipisah karena Navigator perlu punya parent Material App
class MyHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Hello'),
        ),
        body: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Padding(
                padding: EdgeInsets.all(5), //20 pixel ke semua arah
                child: ElevatedButton(
                    child: Text('List Dosen Prodi'),
                    onPressed: () {
                      Navigator.of(context)
                          .push(MaterialPageRoute(builder: (context) {
                        return ListDosen();
                      }));
                    }),
              ),
              Padding(
                padding: EdgeInsets.all(5), //20 pixel ke semua arah
                child: ElevatedButton(
                    child: Text('DaftarFakultas'),
                    onPressed: () {
                      Navigator.of(context)
                          .push(MaterialPageRoute(builder: (context) {
                        return Daftarfakultas();
                      }));
                    }),
              ),
              Padding(
                padding: EdgeInsets.all(5), //20 pixel ke semua arah
                child: ElevatedButton(
                    child: Text('Fasilitas'),
                    onPressed: () {
                      Navigator.of(context)
                          .push(MaterialPageRoute(builder: (context) {
                        return Fasilitas();
                      }));
                    }),
              ),
              Padding(
                padding: EdgeInsets.all(5), //20 pixel ke semua arah
                child: ElevatedButton(
                    child: Text('Profil Dosen'),
                    onPressed: () {
                      Navigator.of(context)
                          .push(MaterialPageRoute(builder: (context) {
                        return ProfilDosen();
                      }));
                    }),
              ),
              Padding(
                padding: EdgeInsets.all(5), //20 pixel ke semua arah
                child: ElevatedButton(
                    child: Text('List Prestasi'),
                    onPressed: () {
                      Navigator.of(context)
                          .push(MaterialPageRoute(builder: (context) {
                        return ListPrestasi();
                      }));
                    }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
