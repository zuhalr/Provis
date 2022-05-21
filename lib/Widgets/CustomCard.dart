import 'package:flutter/material.dart';
import 'package:provis/profil_prodi.dart';

class CustomCard extends StatelessWidget {
  //konstruktor
  CustomCard({required this.title, required this.image});
  String title;
  String image;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: Card(
        elevation: 5,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 200,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(
                        image,
                      ),
                      fit: BoxFit.cover)),
            ),
            TextButton(
              style: TextButton.styleFrom(
                primary: Colors.black,
                textStyle: const TextStyle(fontSize: 16),
              ),
              onPressed: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) {
                  return Profilprodi();
                }));
              },
              child: Text(title),
            ),
          ],
        ),
      ),
    );
  }
}
