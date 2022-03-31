import 'package:flutter/material.dart';
import 'screen_kedua.dart';
import 'screen_ketiga.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: 'Hello App', home: MyHome());
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
                    child: Text('Ke screen Kedua'),
                    onPressed: () {
                      Navigator.of(context)
                          .push(MaterialPageRoute(builder: (context) {
                        return ScreenKedua();
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
            ],
          ),
        ),
      ),
    );
  }
}
