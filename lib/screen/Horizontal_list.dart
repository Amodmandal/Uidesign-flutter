import 'package:flutter/material.dart';

class HorizontalList extends StatefulWidget {
  HorizontalList({Key? key}) : super(key: key);

  @override
  State<HorizontalList> createState() => _HorizontalListState();
}

class _HorizontalListState extends State<HorizontalList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: [
            Container(
              color: Colors.blue,
              width: 160,
              child: Center(
                child: Text(
                  'First Item',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Container(
              height: 150,
              width: 300,
              child: Center(
                child: Text(
                  'Second Item',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
              ),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('images/b.jpg'),
                  fit: BoxFit.fill,
                ),
              ),
            ),
            Container(
              width: 160,
              color: Color.fromARGB(255, 212, 0, 0),
              child: Center(
                child: Text(
                  'Third Item',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Container(
              width: 160,
              color: Color.fromARGB(255, 53, 0, 212),
              child: Center(
                child: Text(
                  'Fourth Item',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Container(
              width: 160,
              color: Colors.cyan,
              child: Text(
                'Fifth Item',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              color: Color.fromARGB(255, 92, 0, 212),
              child: Center(
                child: Text(
                  'First Item',
                  style: TextStyle(
                    color: Color.fromARGB(255, 255, 255, 255),
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
