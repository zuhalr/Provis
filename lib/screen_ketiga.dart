import 'package:flutter/material.dart';

class ScreenKetiga extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: const Text('Screen 3'),
      ),
      body: Center(
        child: ElevatedButton(
          child: Text(
              "Ini screen ketiga, tap ini untuk kembali secara manual. \n Atau bisa lewat tombol back di app bar"),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ),
    );
  }
}
