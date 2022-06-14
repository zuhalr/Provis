// import 'package:flutter/material.dart';

// class ProfilDosen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     // TODO: implement build
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Profil Dosen'),
//         backgroundColor: Color.fromARGB(255, 143, 5, 5),
//       ),
//       body: ListView(
//         children:[
//           Padding(
//             padding: const EdgeInsets.only(top: 20.0),
//             child: CircleAvatar(
//                 backgroundColor: Colors.transparent,
//                 radius: 100,
//                   child: ClipOval(
//                       child: Image.asset("Assets/Images/profile.png",
//                     ),
//                   )
//             ),
//           ),
//           const Center(
//             child: Text(
//               "John Doe",style: TextStyle(fontWeight: FontWeight.bold),
//             ),
//           ),
//           const Center(
//             child: Text(
//               "02240786xx"
//             ),
//           ),
//           Padding(
//             padding: const EdgeInsets.all(8.0),
//             child: const Text(
//                 "Jabatan : Dosen \nPendidikan : S3 \nStatus Ikatan Kerja : Tetap"
//             ),
//           ),
//           Padding(
//             padding: const EdgeInsets.all(8.0),
//             child: Card(
//                 color: Color.fromARGB(255, 153, 21, 11),
//                 clipBehavior: Clip.antiAlias,
//                 child: Column(
//                   children: [
//                     ListTile(
//                       // leading: Icon(Icons.arrow_drop_down_circle),
//                       title: const Text('Riwayat Pendidikan', style: TextStyle(color: Colors.white)),
//                       // subtitle: const Text(
//                       //   'Secondary Text',
//                       //    style: TextStyle(color: Colors.white),
//                       // ),
//                     ),
//                     Align(
//                       alignment: Alignment.centerLeft,
//                       child: Padding(
//                         padding: const EdgeInsets.all(5),
//                         child: Text(
//                           '- S1 Universitas Pendidikan Indonesia \n- S2 Universitas Pendidikan Indonesia \n- S3 Universitas Pendidikan Indonesia',
//                            style: TextStyle(color: Colors.white),
//                         ),
//                       ),
//                     ),
                    
//                   ],
//                 ),
//             ),
//           ),
//           Padding(
//             padding: const EdgeInsets.all(8.0),
//             child: Card(
//                 color: Color.fromARGB(255, 153, 21, 11),
//                 clipBehavior: Clip.antiAlias,
//                 child: Column(
//                   children: [
//                     ListTile(
//                       // leading: Icon(Icons.arrow_drop_down_circle),
//                       title: const Text('Riwayat Pengajaran', style: TextStyle(color: Colors.white)),
//                       // subtitle: const Text(
//                       //   'Secondary Text',
//                       //    style: TextStyle(color: Colors.white),
//                       // ),
//                     ),
//                     Align(
//                       alignment: Alignment.centerLeft,
//                       child: Padding(
//                         padding: const EdgeInsets.all(5),
//                         child: Text(
//                           '-  \n -  \n - ',
//                            style: TextStyle(color: Colors.white),
//                         ),
//                       ),
//                     ),
                    
//                   ],
//                 ),
//             ),
//           ),
//           Padding(
//             padding: const EdgeInsets.all(8.0),
//             child: Card(
//                 color: Color.fromARGB(255, 153, 21, 11),
//                 clipBehavior: Clip.antiAlias,
//                 child: Column(
//                   children: [
//                     ListTile(
//                       // leading: Icon(Icons.arrow_drop_down_circle),
//                       title: const Text('Riwayat Prestasi', style: TextStyle(color: Colors.white)),
//                       // subtitle: const Text(
//                       //   'Secondary Text',
//                       //    style: TextStyle(color: Colors.white),
//                       // ),
//                     ),
//                     Align(
//                       alignment: Alignment.centerLeft,
//                       child: Padding(
//                         padding: const EdgeInsets.all(5),
//                         child: Text(
//                           '-  \n -  \n - ',
//                            style: TextStyle(color: Colors.white),
//                         ),
//                       ),
//                     ),
                    
//                   ],
//                 ),
//             ),
//           ),
//         ]
//       ),
//     );
//   }
// }

