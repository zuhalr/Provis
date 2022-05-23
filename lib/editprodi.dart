// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:provis/Widgets/theme.dart';
import 'package:provis/addprestasi.dart';
import 'package:provis/profil_dosen.dart';
import 'package:provis/compare.dart';
import 'daftarfakultas.dart';
import 'list_dosen.dart';
import 'fasilitas.dart';
import 'profil_dosen.dart';
import 'home_view.dart';

class EditProdi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 143, 5, 5),
        title: Center(
          child: Text("Edit Prodi",
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
                          hintText: 'Jumlah Mahasiswa',
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
                          hintText: 'Jumlah Dosen',
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
                          hintText: 'Akreditasi',
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
                          hintText: 'Jenjang',
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
                          hintText: 'Rata-rata Waktu Kelulusan',
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
                          hintText: 'Riwayat Kerjasama',
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
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton(
                        style: TextButton.styleFrom(
                            backgroundColor: Color.fromARGB(255, 143, 5, 5)),
                        child: Align(
                          alignment: Alignment.center,
                          child: Text(
                            "Update",
                            style: heading5,
                          ),
                        ),
                        onPressed: () {
                          Navigator.of(context)
                              .push(MaterialPageRoute(builder: (context) {
                            return EditProdi();
                          }));
                        }),
                    ElevatedButton(
                        style: TextButton.styleFrom(
                            backgroundColor: Color.fromARGB(255, 143, 5, 5)),
                        child: Align(
                          alignment: Alignment.center,
                          child: Text(
                            "Tambahkan Prestasi",
                            style: heading5,
                          ),
                        ),
                        onPressed: () {
                          Navigator.of(context)
                              .push(MaterialPageRoute(builder: (context) {
                            return Addprestasi();
                          }));
                        }),
                  ],
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
