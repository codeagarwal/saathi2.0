import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sathi/pages/home_page.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:firebase_core/firebase_core.dart';

class LoginPage extends StatefulWidget {
  String name = "";

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: SingleChildScrollView(
        child: Column(
          children: [
            SafeArea(
                child: Image.asset(
              "assets/images/hp.jpg",
              fit: BoxFit.cover,
            )),
            Text(
              "Welcome to Saathi",
              style: TextStyle(
                  fontSize: 40,
                  color: const Color(0xffff6387),
                  fontWeight: FontWeight.bold),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: TextFormField(
                decoration: InputDecoration(
                    hintText: "Enter UserName",
                    labelText: "E-mail/Phone Number"),
                validator: (value) {
                  if (value!.isEmpty) {
                    return "Username cannot be Empty";
                  }
                  return null;
                },
                onChanged: (value) {
                  var name = value;
                  setState(() {});
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: TextFormField(
                decoration: InputDecoration(
                    hintText: "Enter Password", labelText: "Password"),
                validator: (value) {
                  if (value!.isEmpty) {
                    return "Password cannot be Empty";
                  } else if (value.length < 6) {
                    return "Length cannot be less than 6.";
                  }
                  return null;
                },
                onChanged: (value) {
                  var name = value;
                  setState(() {});
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: (const Color(0xffff6387)),
                  fixedSize: const Size(100, 10),
                ),
                child: const Text(
                  "Login",
                  style: TextStyle(fontSize: 20),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => HomePage(),
                    ),
                  );
                },
              ),
            ),
            SizedBox(
              height: 15,
            ),
            "OR".text.bold.xl4.make(),
            SizedBox(
              height: 20,
            ),
            "Continue with...".text.xl.make(),
            Padding(
              padding: const EdgeInsets.only(left: 70, top: 10),
              child: Row(
                children: [
                  IconButton(
                    icon: Image.asset(
                      "assets/images/alogo.png",
                    ),
                    iconSize: 70,
                    onPressed: () {},
                  ),
                  IconButton(
                    icon: Image.asset(
                      "assets/images/glogo.png",
                    ),
                    iconSize: 100,
                    onPressed: () {},
                  ),
                  IconButton(
                    icon: Image.asset(
                      "assets/images/flogo.png",
                    ),
                    iconSize: 70,
                    onPressed: () {},
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                "Don't Have an Account".text.semiBold.xl.make().pOnly(left: 80),
                TextButton(
                  style: TextButton.styleFrom(
                    textStyle: const TextStyle(
                        fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  onPressed: () {},
                  child: const Text('SignUp'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
