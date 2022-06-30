import 'package:flutter/material.dart';

class MyGridPage extends StatefulWidget {
  MyGridPage({Key? key}) : super(key: key);

  @override
  State<MyGridPage> createState() => _MyGridPageState();
}

class _MyGridPageState extends State<MyGridPage> {
  var _icons = [
    Icons.mail,
    Icons.abc_rounded,
    Icons.abc_sharp,
    Icons.ac_unit_rounded,
    Icons.access_alarm,
    Icons.ac_unit,
    Icons.access_alarm,
    Icons.abc,
    Icons.mail,
    Icons.abc_rounded,
    Icons.abc_sharp,
    Icons.ac_unit_rounded,
    Icons.access_alarm,
    Icons.ac_unit,
    Icons.access_alarm,
    Icons.abc_rounded,
    Icons.abc_sharp,
    Icons.ac_unit_rounded,
    Icons.access_alarm,
    Icons.ac_unit,
    Icons.access_alarm,
    Icons.abc
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.count(
        crossAxisCount: 3,
        children: List.generate(
          _icons.length,
          (index) {
            return Center(
              child: Padding(
                padding: const EdgeInsets.all(45.0),
                child: Column(
                  children: [
                    Icon(_icons[index]),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
