import 'package:exam_sharedprefence/utils/database/database.dart';
import 'package:flutter/material.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key, required this.itemindex});

  final int itemindex;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Details"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Text(
              name[itemindex],
              style: TextStyle(
                  color: const Color.fromARGB(255, 24, 36, 255),
                  fontSize: 25,
                  fontWeight: FontWeight.w900),
            ),
            Container(
              height: 300,
              width: double.infinity,
              child: Image.network(
                myimage[itemindex],
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                des[itemindex],
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.w600),
              ),
            )
          ],
        ),
      ),
    );
  }
}
