import 'package:flutter/material.dart';

class sempage extends StatefulWidget {
  sempage({Key? key}) : super(key: key);

  @override
  State<sempage> createState() => _sempageState();
}

class _sempageState extends State<sempage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 30,
              ),
              TextField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Enter Id to delete / update'),
              ),
              SizedBox(height: 20),
              TextField(
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Enter semester',
                ),
              ),
              SizedBox(height: 20),
              TextField(
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Enter Grade',
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Wrap(
                spacing: 20,
                children: [
                  OutlinedButton(
                    onPressed: () {
                      Addgrade();
                    },
                    child: Text('Add'),
                  ),
                  OutlinedButton(
                    onPressed: () {
                      UpdateGrade();
                    },
                    child: Text('Udate'),
                  ),
                  OutlinedButton(
                    onPressed: () {
                      ReadAllGrade();
                    },
                    child: Text('Delete'),
                  ),
                  OutlinedButton(
                    onPressed: () {
                      ReadGrade();
                    },
                    child: Text('Read'),
                  )
                ],
              ),
            ],
          ),
        ),
      )),
    );
  }

  void Addgrade() {
    print('Bottom clicked');
  }

  void UpdateGrade() {}

  void ReadAllGrade() {}

  void ReadGrade() {}
}
