import 'package:flutter/material.dart';
import 'list_dosen.dart';
import 'screen_ketiga.dart';
import 'list_kamda.dart';

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
      home: MyHome()
      );
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
                    child: Text('Ke screen Ketiga'),
                    onPressed: () {
                      Navigator.of(context)
                          .push(MaterialPageRoute(builder: (context) {
                        return ScreenKetiga();
                      }));
                    }),
              ),
              Padding(
                padding: EdgeInsets.all(5), //20 pixel ke semua arah
                child: ElevatedButton(
                    child: Text('List KAMDA'),
                    onPressed: () {
                      Navigator.of(context)
                          .push(MaterialPageRoute(builder: (context) {
                        return ListKAMDA(title: '', image: '',);
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
