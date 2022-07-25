import 'package:flutter/material.dart';

class SemesterOnepage extends StatefulWidget {
  SemesterOnepage({Key? key}) : super(key: key);

  @override
  State<SemesterOnepage> createState() => _SemesterOnepageState();
}

class _SemesterOnepageState extends State<SemesterOnepage> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8, left: 16, right: 16),
      child: Expanded(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Semester Overview',
              style: TextStyle(fontFamily: 'Lobster', fontSize: 30),
            ),
            SizedBox(height: 10),
            Card(
              color: Color.fromARGB(255, 245, 218, 136),
              child: Padding(
                padding: const EdgeInsets.only(
                    left: 10, right: 100, top: 20, bottom: 20),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Icon(Icons.looks_one),
                        SizedBox(width: 20),
                        Expanded(
                          child: Column(
                            children: [
                              Text(
                                  'Total Credit Hours:40\n' +
                                      'Total Subjects:6',
                                  style: TextStyle(fontSize: 20)),
                              Text('Total Sports Week:1',
                                  style: TextStyle(fontSize: 20)),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        TextButton(onPressed: null, child: Text('SGPA:4')),
                        TextButton(onPressed: null, child: Text('VIEW RESULT'))
                      ],
                    )
                  ],
                ),
              ),
            ),
            SizedBox(height: 10),
            Text(
              'Courses',
              style: TextStyle(fontFamily: 'Lobster', fontSize: 30),
            ),
            Container(
              height: 100,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Card(
                    color: Color.fromARGB(255, 184, 213, 90),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Enginneering Mathematics',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Color.fromARGB(255, 89, 8, 219)),
                          ),
                          Text('Total Chapters:10'),
                          Text('Difficulty Level: Very Hard'),
                          Text('Credit Hours:4')
                        ],
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  Card(
                      color: Colors.greenAccent,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Physics',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.blue),
                            ),
                            Text('Total Chapters:10'),
                            Text('Difficulty Level: Very Hard'),
                            Text('Credit Hours:4')
                          ],
                        ),
                      )),
                  SizedBox(width: 10),
                  Card(
                      color: Colors.orangeAccent,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Enginneering Drawing',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.blue),
                            ),
                            Text('Total Chapters:10'),
                            Text('Difficulty Level: Very Hard'),
                            Text('Credit Hours:4')
                          ],
                        ),
                      )),
                  SizedBox(width: 10),
                  Card(
                      color: Colors.blueGrey,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Compulsory English',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.blue),
                            ),
                            Text('Total Chapters:10'),
                            Text('Difficulty Level: Very Hard'),
                            Text('Credit Hours:4')
                          ],
                        ),
                      )),
                  SizedBox(width: 10),
                  Card(
                      color: Colors.lightGreen,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Mechanical Workshop',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.blue),
                            ),
                            Text('Total Chapters:10'),
                            Text('Difficulty Level: Very Hard'),
                            Text('Credit Hours:4')
                          ],
                        ),
                      )),
                  SizedBox(width: 10),
                  Card(
                      color: Colors.greenAccent,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Applied Mechanics',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.blue),
                            ),
                            Text('Total Chapters:10'),
                            Text('Difficulty Level: Very Hard'),
                            Text('Credit Hours:4')
                          ],
                        ),
                      )),
                ],
              ),
            ),
            SizedBox(height: 10),
            Text(
              'Extra Activities',
              style: TextStyle(fontFamily: 'Lobster', fontSize: 30),
            ),
            SizedBox(
              height: 10,
            ),
            Text('1.Participated in NEXT\n'
                '2.Sports Week Winner\n'
                '3.Participated in Quiz\n'
                '4.Participated in Audino Traning')
          ],
        ),
      ),
    );
  }
}
