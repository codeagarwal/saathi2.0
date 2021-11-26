import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

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
                child: Image.asset("assets/images/pic.png", fit: BoxFit.cover)),
            Text(
              "Login",
              style: TextStyle(
                  fontSize: 50,
                  color: Colors.deepPurple,
                  fontWeight: FontWeight.bold),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16, right: 16),
              child: TextFormField(
                decoration: InputDecoration(
                    hintText: "Enter UserName", labelText: "UserName"),
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
              padding: const EdgeInsets.only(left: 16, right: 16),
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
                  primary: (Colors.deepPurpleAccent),
                ),
                child: const Text(
                  "Login",
                  style: TextStyle(fontSize: 20),
                ),
                onPressed: () {},
              ),
            ),
            IconButton(
              icon: Image.asset(
                "assets/images/apple.png",
                fit: BoxFit.cover,
              ),
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
