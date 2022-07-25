import 'package:flutter/material.dart';
import 'package:flutter_application_2/screen/home.dart';
import 'package:flutter_application_2/screen/profile.dart';
import 'package:flutter_application_2/screen/semesterPage.dart';
import 'package:flutter_application_2/screen/setting.dart';

class mainpage extends StatefulWidget {
  String password;
  String userName;
  mainpage(this.userName, this.password);

  @override
  State<mainpage> createState() => _mainpageState();
}

class _mainpageState extends State<mainpage> {
  var _screens = [];

  var _selectedIndex = 0;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _screens = [
      SettingPage(),
      ProfilePage(widget.userName, widget.password),
      Hompage()
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: _screens[_selectedIndex],
        ),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            ListTile(
              leading: Icon(Icons.abc_rounded),
              title: Text("Semester"),
              trailing: Icon(Icons.ac_unit_rounded),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => semesterPage()),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.share),
              title: Text("Item 2"),
              trailing: Icon(Icons.ac_unit_rounded),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: ((context) => Hompage()),
                  ),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.abc_rounded),
              title: Text("Item 3"),
              trailing: Icon(Icons.ac_unit_rounded),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: ((context) => ProfilePage('amod', 'mandal')),
                  ),
                );
              },
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.settings), label: "Settings"),
          BottomNavigationBarItem(
              icon: Icon(Icons.person_off), label: "Profile"),
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
        ],
        currentIndex: _selectedIndex,
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
            print('=========');
            print(index);
            print('=========');
          });
        },
      ),
    );
  }
}
