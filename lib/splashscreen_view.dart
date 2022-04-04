import 'dart:async';
import 'package:flutter/material.dart';
import 'package:provis/home.dart';
import 'package:provis/Login.dart';

class SplashScreenPage extends StatefulWidget {
  const SplashScreenPage({Key? key}) : super(key: key);
  @override
  _SplashScreenPageState createState() => _SplashScreenPageState();
}

class _SplashScreenPageState extends State<SplashScreenPage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    openSplashScreen();
  }

  openSplashScreen() async {
    var durasiSplash = const Duration(seconds: 2);
    return Timer(durasiSplash, () {
      //pindah ke halaman login
      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (_) {
        //return HomePage();
        return LoginPage();
      }));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 141, 7, 7),
      appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 141, 7, 7),
          title: Center(
            child: Text('UPI DATA'),
          )),
      body: Center(
        child: Image.asset(
          "assets/images/upi.png",
          width: 200,
          height: 88,
        ),
      ),
    );
  }
}
