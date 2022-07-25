import 'package:flutter/material.dart';
import 'package:flutter_application_2/screen/semesterpage/semester_eight.dart';
import 'package:flutter_application_2/screen/semesterpage/semester_fifth.dart';
import 'package:flutter_application_2/screen/semesterpage/semester_forth.dart';
import 'package:flutter_application_2/screen/semesterpage/semester_one.dart';
import 'package:flutter_application_2/screen/semesterpage/semester_seventh.dart';
import 'package:flutter_application_2/screen/semesterpage/semester_sixth.dart';
import 'package:flutter_application_2/screen/semesterpage/semester_three.dart';
import 'package:flutter_application_2/screen/semesterpage/semseter_second.dart';

class semesterPage extends StatefulWidget {
  semesterPage({Key? key}) : super(key: key);

  @override
  State<semesterPage> createState() => _semesterPageState();
}

class _semesterPageState extends State<semesterPage> {
  bool _isDarktheme = false;
  var themelight = ThemeData(
      brightness: Brightness.light,
      primarySwatch: Colors.green,
      backgroundColor: Colors.red,
      fontFamily: "Lobster",
      textTheme: TextTheme());

  var themeDark =
      ThemeData(brightness: Brightness.dark, primarySwatch: Colors.amber);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: _isDarktheme ? themeDark : themelight,
      home: DefaultTabController(
        length: 8,
        child: Scaffold(
          appBar: AppBar(
            title: Text('My Semester Tracker'),
            actions: [
              Switch(
                value: _isDarktheme,
                onChanged: (value) {
                  setState(() {
                    _isDarktheme = value;
                  });
                },
              )
            ],
            backgroundColor: Color.fromARGB(255, 8, 182, 240),
            bottom: TabBar(
              indicatorColor: Colors.white,
              isScrollable: true,
              tabs: [
                Tab(text: 'First', icon: Icon(Icons.filter_1_rounded)),
                Tab(text: 'second', icon: Icon(Icons.filter_1_rounded)),
                Tab(text: 'third', icon: Icon(Icons.filter_1_rounded)),
                Tab(text: 'fourth', icon: Icon(Icons.filter_1_rounded)),
                Tab(text: 'Fifth', icon: Icon(Icons.filter_1_rounded)),
                Tab(text: 'sixth', icon: Icon(Icons.filter_1_rounded)),
                Tab(text: 'seventh', icon: Icon(Icons.filter_1_rounded)),
                Tab(text: 'Eight', icon: Icon(Icons.filter_1_rounded)),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              SemesterOnepage(),
              SemesterSecondpage(),
              SemesterThirdPage(),
              SemesterForthpage(),
              SemesterFifthpage(),
              SemesterSixthpage(),
              SemesterSeventhpage(),
              SemsterEightpage()
            ],
          ),
        ),
      ),
    );
  }
}
