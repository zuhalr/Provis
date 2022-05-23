// ignore_for_file: unnecessary_new

import 'package:flutter/material.dart';
import 'package:provis/profil_dosen.dart';

import 'Widgets/theme.dart';
import 'compare.dart';
import 'daftarfakultas.dart';
import 'daftarprodi.dart';
import 'dashboard.dart';
import 'home_view.dart';

class ListDosen extends StatelessWidget {
  // Initial Selected Value
  String dropdownvalue = '↑ Nama';

  // List of items in our dropdown menu
  var items = [
    '↑ Nama',
    '↓ Nama',
    '↑ Jabatan',
    '↓ Jabatan',
  ];
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: const Text('List Dosen'),
        backgroundColor: const Color.fromARGB(255, 143, 5, 5),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: TextFormField(
              cursorColor: Theme.of(context).cursorColor,
              initialValue: 'Input text',
              maxLength: 50,
              decoration: const InputDecoration(
                icon: Icon(Icons.search),
                labelText: 'Pencarian',
                labelStyle: TextStyle(
                  color: Color(0xFF6200EE),
                ),
                helperText: 'Masukkan Nama Dosen',
                // suffixIcon: Icon(
                //   Icons.check_circle,
                // ),
                border: OutlineInputBorder(),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Text('Urut Berdasarkan :'),
                DropdownButton(
                  // Initial Value
                  value: dropdownvalue,

                  // Down Arrow Icon
                  icon: const Icon(Icons.keyboard_arrow_down),

                  // Array list of items
                  items: items.map((String items) {
                    return DropdownMenuItem(
                      value: items,
                      child: Text(items),
                    );
                  }).toList(),
                  onChanged: (String? value) {},
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              clipBehavior: Clip.antiAlias,
              child: Column(
                children: [
                  ListTile(
                    // leading: Icon(Icons.arrow_drop_down_circle),
                    leading: Image.asset('assets/images/profile.png'),
                    title: const Text('John Doe'),
                    subtitle: Text(
                      '02240786xx',
                      style: TextStyle(color: Colors.black.withOpacity(0.6)),
                    ),
                    onTap: () {
                      Navigator.of(context)
                          .push(MaterialPageRoute(builder: (context) {
                        return ProfilDosen();
                      }));
                    },
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              clipBehavior: Clip.antiAlias,
              child: Column(
                children: [
                  ListTile(
                    // leading: Icon(Icons.arrow_drop_down_circle),
                    leading: Image.asset('assets/images/profile.png'),
                    title: const Text('John Doe'),
                    subtitle: Text(
                      '02240786xx',
                      style: TextStyle(color: Colors.black.withOpacity(0.6)),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
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
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) {
                    return Daftarfakultas();
                  }));
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
                    return Dashboard(); //sementara jadi halaman list page yang belum nyambung
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
                    return Daftarprodi(); //ganti aja, ini cuman mau debug doang
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
