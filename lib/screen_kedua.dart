import 'package:flutter/material.dart';

class ScreenKedua extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: const Text('Screen 2'),
      ),
      body: Center(
        child: ElevatedButton(
          child: Text(
              "Ini screen kedua, tap ini untuk kembali secara manual. \n Atau bisa lewat tombol back di app bar"),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ),
    );
  }
}
