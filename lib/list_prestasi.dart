import 'package:flutter/material.dart';

class ListPrestasi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: const Text('List Prestasi'),
        backgroundColor: Color.fromARGB(255, 143, 5, 5),
      ),
      body: ListView(
        children: [
          Card(
            clipBehavior: Clip.antiAlias,
            child: Column(
              children: [
                Image.asset(
                  'images/1.jpg',
                  height: 250,
                ),
                ListTile(
                  // leading: Icon(Icons.arrow_drop_down_circle),

                  title: const Text(
                      'Juara 1 DIMAS TI Cabang Lomba Game Programming'),
                  subtitle: Text(
                    'Nasional',
                    style: TextStyle(color: Colors.red.withOpacity(1.0)),
                  ),
                ),
              ],
            ),
          ),
          Card(
            clipBehavior: Clip.antiAlias,
            child: Column(
              children: [
                ListTile(
                  // leading: Icon(Icons.arrow_drop_down_circle),
                  leading: Image.asset('images/test.png'),
                  title: const Text('Juara 1 Gemastik 2022 bidang UI/UX'),
                  subtitle: Text(
                    'Nasional',
                    style: TextStyle(color: Colors.red.withOpacity(1.0)),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(0),
                  child: Text(
                    'Desember 2021',
                    style: TextStyle(color: Colors.black.withOpacity(0.6)),
                  ),
                ),
              ],
            ),
          ),
          Card(
            clipBehavior: Clip.antiAlias,
            child: Column(
              children: [
                ListTile(
                  // leading: Icon(Icons.arrow_drop_down_circle),
                  leading: Image.asset('images/test.png'),
                  title: const Text('16 Besar Google Code Jam 2020'),
                  subtitle: Text(
                    'Internasional',
                    style: TextStyle(color: Colors.red.withOpacity(1.0)),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(0),
                  child: Text(
                    'Agustus 2020',
                    style: TextStyle(color: Colors.black.withOpacity(0.6)),
                  ),
                ),
              ],
            ),
          ),
        ],
      ), //column center
    );
  }
}
