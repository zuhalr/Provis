// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:provis/Widgets/theme.dart';
import 'home_view.dart';

class Addprestasi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 143, 5, 5),
        title: Center(
          child: Text("Tambah Prestasi",
              style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white)),
        ),
      ),
      backgroundColor: colorLight,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.fromLTRB(24, 40, 24, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Form(
                  child: Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                        color: textWhiteGrey,
                        borderRadius: BorderRadius.circular(10)),
                    child: TextFormField(
                      decoration: InputDecoration(
                          hintText: 'Jenis Prestasi (Kerjasama / Prestasi)',
                          hintStyle: heading6.copyWith(color: textGrey),
                          border:
                              OutlineInputBorder(borderSide: BorderSide.none)),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: textWhiteGrey,
                        borderRadius: BorderRadius.circular(10)),
                    child: TextFormField(
                      decoration: InputDecoration(
                          hintText: 'Nama Perlombaan / Kerjasama',
                          hintStyle: heading6.copyWith(color: textGrey),
                          border:
                              OutlineInputBorder(borderSide: BorderSide.none)),
                    ),
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: textWhiteGrey,
                        borderRadius: BorderRadius.circular(10)),
                    child: TextFormField(
                      decoration: InputDecoration(
                          hintText: 'Tingkat',
                          hintStyle: heading6.copyWith(color: textGrey),
                          border:
                              OutlineInputBorder(borderSide: BorderSide.none)),
                    ),
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: textWhiteGrey,
                        borderRadius: BorderRadius.circular(10)),
                    child: TextFormField(
                      decoration: InputDecoration(
                          hintText: 'Tahun',
                          hintStyle: heading6.copyWith(color: textGrey),
                          border:
                              OutlineInputBorder(borderSide: BorderSide.none)),
                    ),
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: textWhiteGrey,
                        borderRadius: BorderRadius.circular(10)),
                    child: TextFormField(
                      decoration: InputDecoration(
                          hintText: 'Juara',
                          hintStyle: heading6.copyWith(color: textGrey),
                          border:
                              OutlineInputBorder(borderSide: BorderSide.none)),
                    ),
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: textWhiteGrey,
                        borderRadius: BorderRadius.circular(10)),
                    child: TextFormField(
                      decoration: InputDecoration(
                          hintText: 'Ketua Tim',
                          hintStyle: heading6.copyWith(color: textGrey),
                          border:
                              OutlineInputBorder(borderSide: BorderSide.none)),
                    ),
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: textWhiteGrey,
                        borderRadius: BorderRadius.circular(10)),
                    child: TextFormField(
                      decoration: InputDecoration(
                          hintText: 'Anggota 1',
                          hintStyle: heading6.copyWith(color: textGrey),
                          border:
                              OutlineInputBorder(borderSide: BorderSide.none)),
                    ),
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: textWhiteGrey,
                        borderRadius: BorderRadius.circular(10)),
                    child: TextFormField(
                      decoration: InputDecoration(
                          hintText: 'Anggota 2',
                          hintStyle: heading6.copyWith(color: textGrey),
                          border:
                              OutlineInputBorder(borderSide: BorderSide.none)),
                    ),
                  ),
                  SizedBox(
                    height: 12,
                  ),
                ],
              )),
              SizedBox(
                height: 30,
              ),
              Container(
                height: 80,
                width: 500,
                child: Padding(
                  padding: EdgeInsets.all(20),
                  //20 pixel ke semua arah
                  child: ElevatedButton(
                      style: TextButton.styleFrom(
                          backgroundColor: Color.fromARGB(255, 143, 5, 5)),
                      child: Align(
                        alignment: Alignment.center,
                        child: Text(
                          "Tambah",
                          style: heading5,
                        ),
                      ),
                      onPressed: () {
                        Navigator.of(context)
                            .push(MaterialPageRoute(builder: (context) {
                          return HomePage();
                        }));
                      }),
                ),
              ),
              SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
