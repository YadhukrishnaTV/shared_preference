// import 'package:exam_sharedprefence/view/home_screen/home_screen.dart';
// import 'package:flutter/material.dart';
// import 'package:shared_preferences/shared_preferences.dart';

// class LoginScreen extends StatefulWidget {
//   const LoginScreen({super.key});

//   @override
//   State<LoginScreen> createState() => _LoginScreenState();
// }

// class _LoginScreenState extends State<LoginScreen> {
//   TextEditingController _name = TextEditingController();
//   TextEditingController _password = TextEditingController();

//   Future<void> sharedpref(String name, String password) async {
//     final SharedPreferences pref = await SharedPreferences.getInstance();
//     pref.setString("name", name);
//     pref.setString("password", password);
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.black,
//       body: Padding(
//         padding: const EdgeInsets.all(8.0),
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Text(
//               "Log In Here",
//               style: TextStyle(
//                   color: Colors.white,
//                   fontSize: 20,
//                   fontWeight: FontWeight.w800),
//             ),
//             Center(
//               child: TextField(
//                 controller: _name,
//                 decoration: InputDecoration(
//                     border: OutlineInputBorder(
//                         borderRadius: BorderRadius.circular(10),
//                         borderSide: BorderSide(width: 10, color: Colors.black)),
//                     hintText: "name",
//                     hintStyle: TextStyle(color: Colors.white)),
//               ),
//             ),
//             SizedBox(
//               height: 15,
//             ),
//             TextField(
//               controller: _password,
//               decoration: InputDecoration(
//                   border: OutlineInputBorder(
//                       borderRadius: BorderRadius.circular(10),
//                       borderSide: BorderSide(width: 10, color: Colors.black)),
//                   hintText: "Password",
//                   hintStyle: TextStyle(color: Colors.white),
//                   suffixStyle: TextStyle(color: Colors.white)),
//             ),
//             SizedBox(
//               height: 15,
//             ),
//             ElevatedButton(
//               onPressed: () {
//                 sharedpref(_name.text, _password.text);
//                 Navigator.push(context,
//                     MaterialPageRoute(builder: (context) => HomeScreen()));
//               },
//               child: Text("Login"),
//               style: ButtonStyle(),
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }

import 'package:exam_sharedprefence/view/home_screen/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Loginscreen extends StatefulWidget {
  const Loginscreen({super.key});

  @override
  State<Loginscreen> createState() => _LoginscreenState();
}

final TextEditingController usernamecontroller = TextEditingController();
final TextEditingController password = TextEditingController();

class _LoginscreenState extends State<Loginscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Login Here",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.w900),
            ),
            TextFormField(
              controller: usernamecontroller,
              style: TextStyle(color: Colors.black),
              decoration: InputDecoration(
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                hintText: "Username",
                hintStyle: TextStyle(color: Colors.black),
              ),
            ),
            SizedBox(height: 30),
            TextFormField(
              style: TextStyle(color: Colors.black),
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "Password",
                  hintStyle: TextStyle(color: Colors.black)),
            ),
            SizedBox(
              height: 90,
            ),
            ElevatedButton(
                style: ButtonStyle(),
                onPressed: () async {
                  SharedPreferences pref =
                      await SharedPreferences.getInstance();
                  pref.setString("username", usernamecontroller.text);
                  setState(() {});
                  Navigator.of(context).pushReplacement(MaterialPageRoute(
                      builder: (BuildContext context) => HomeScreen()));
                },
                child: Text("Login"))
          ],
        ),
      ),
    );
  }
}
