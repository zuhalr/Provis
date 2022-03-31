import 'package:flutter/material.dart';

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
                    onChanged: (String? value) {  },
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
    );
  }
}
