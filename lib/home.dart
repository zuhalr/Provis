import 'package:flutter/material.dart';
import 'package:provis/list_prestasi.dart';
import 'daftardosen.dart';
import 'fasilitas.dart';
import 'daftarfakultas.dart';
import 'profil_dosen.dart';
import 'home_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
          primarySwatch: Colors.red,
          elevatedButtonTheme: ElevatedButtonThemeData(
            style: ElevatedButton.styleFrom(
              primary:
                  Color.fromARGB(255, 143, 5, 5), // background (button) color
              onPrimary: Colors.white, // foreground (text) color
            ),
          ),
        ),
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
          backgroundColor: Color.fromARGB(255, 143, 5, 5),
          title: const Text('List Page'),
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
                    child: Text('Daftar Fakultas'),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => DaftarFakultas()),
                      );
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
              Padding(
                padding: EdgeInsets.all(5), //20 pixel ke semua arah
                child: ElevatedButton(
                    child: Text('Daftar Kampus Daerah'),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => DaftarFakultas()),
                      );
                    }),
              ),
              Padding(
                padding: EdgeInsets.all(5), //20 pixel ke semua arah
                child: ElevatedButton(
                    child: Text('Slider'),
                    onPressed: () {
                      Navigator.of(context)
                          .push(MaterialPageRoute(builder: (context) {
                        return HomePage();
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
