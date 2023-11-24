import 'package:exam_sharedprefence/utils/database/database.dart';
import 'package:exam_sharedprefence/view/details_screen/details_screen.dart';
import 'package:exam_sharedprefence/view/login_screen/login.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Text(
              "TOUR",
              style: TextStyle(
                  color: const Color.fromARGB(255, 15, 14, 14),
                  fontSize: 30,
                  fontWeight: FontWeight.w900),
            ),
            Text(
              "GUIDE",
              style: TextStyle(
                  color: Color.fromARGB(255, 239, 23, 23),
                  fontSize: 30,
                  fontWeight: FontWeight.w900),
            ),
          ],
        ),
        centerTitle: true,
        actions: [
          InkWell(
              onTap: () async {
                SharedPreferences pref = await SharedPreferences.getInstance();
                pref.clear();
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Loginscreen()));
              },
              child: Icon(Icons.logout))
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: Container(
              decoration:
                  BoxDecoration(border: Border.all(color: Colors.black)),
              child: ListView.builder(
                  itemCount: myimage.length,
                  itemBuilder: (context, index) => Column(
                        children: [
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          DetailsScreen(itemindex: index)));
                            },
                            child: Container(
                              height: 200,
                              width: 300,
                              child: Image.network(myimage[index]),
                            ),
                          ),
                          Text(
                            name[index],
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                                fontWeight: FontWeight.w800),
                          )
                        ],
                      )),
            ),
          )
        ],
      ),
    );
  }
}
