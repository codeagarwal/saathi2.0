import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sathi/utils/drawer.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: const Color(0xffff6387),
        items: <Widget>[
          Icon(Icons.camera_alt_outlined, size: 30),
          Icon(
            CupertinoIcons.mic,
            size: 30,
            semanticLabel: "Speak Now",
          ),
          Icon(
            Icons.library_books_outlined,
            size: 30,
          ),
        ],
        onTap: (index) {
          //Handle button tap
        },
      ),
      appBar: AppBar(
        title: Text("Saathi"),
        backgroundColor: const Color(0xffff6387),
      ),
      backgroundColor: Colors.white,
      body: Center(
        child: ButtonBar(
          buttonHeight: 20,
        ),
      ),
      drawer: MyDrawer(),
    );
  }
}
