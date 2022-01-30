import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sathi/pages/camera.dart';
import 'package:sathi/pages/history.dart';
import 'package:sathi/pages/voice.dart';
import 'package:sathi/utils/drawer.dart';
import 'package:velocity_x/velocity_x.dart';

class HomePage extends StatefulWidget {
  static List<Widget> _widgetOptions = <Widget>[
    Camera(),
    VoicePage(),
    History(),
  ];

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xffff6387),
        title: "Saathi".text.xl3.make(),
      ),
      backgroundColor: Colors.white,
      body: Center(
        child: HomePage._widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              CupertinoIcons.camera,
              size: 30,
            ),
            label: 'Camera',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              CupertinoIcons.mic,
              size: 50,
            ),
            label: 'Voice',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              CupertinoIcons.doc_plaintext,
              size: 30,
            ),
            label: 'History',
          ),
        ],
        currentIndex: _selectedIndex,
        unselectedItemColor: Colors.black,
        selectedItemColor: Color(0xffff6387),
        onTap: _onItemTapped,
      ),
      drawer: MyDrawer(),
    );
  }
}
