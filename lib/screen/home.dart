import 'package:flutter/material.dart';
import 'package:flutter_application_2/screen/Horizontal_list.dart';
import 'package:flutter_application_2/screen/MyGridViewPage.dart';

class Hompage extends StatefulWidget {
  Hompage({Key? key}) : super(key: key);

  @override
  State<Hompage> createState() => _HompageState();
}

class _HompageState extends State<Hompage> {
  var _name = ['Amod Mandal', 'Rishi shah', 'Sagat', 'Akhil'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('images/b.jpg'),
          fit: BoxFit.fill,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              OutlinedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => HorizontalList(),
                    ),
                  );
                },
                child: Text(
                  'Horizontal List',
                  style: TextStyle(fontSize: 20),
                ),
              ),
              OutlinedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => MyGridPage(),
                    ),
                  );
                },
                child: Text(
                  'Grid View',
                  style: TextStyle(fontSize: 20),
                ),
              ),
            ],
          ),
          Expanded(
            child: ListView.builder(
              itemCount: _name.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Container(
                    padding: EdgeInsets.only(top: 20, left: 20),
                    child: Text(
                      _name[index],
                      style: TextStyle(
                          decoration: TextDecoration.underline,
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Colors.red),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    ));
  }
}
