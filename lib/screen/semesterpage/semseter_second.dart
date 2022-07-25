import 'package:flutter/material.dart';

class SemesterSecondpage extends StatefulWidget {
  SemesterSecondpage({Key? key}) : super(key: key);

  @override
  State<SemesterSecondpage> createState() => _SemesterSecondpageState();
}

class _SemesterSecondpageState extends State<SemesterSecondpage> {
  var name = 'unknowing';
  String weekend = 'Friday';
  var _isVisible = false;

  var _slidervalue = 10.0;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(40),
      child: Column(
        children: [
          Text('Hello' + name),
          Text('Today is' + weekend),
          Container(
            child: TextButton(
              onPressed: () {
                setState(() {
                  name = ' World';
                  weekend = ' saturday';
                });
              },
              child: Text('Change state'),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    _isVisible = true;
                  });
                },
                child: Text('Magic'),
              ),
              SizedBox(
                width: 10,
              ),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    _isVisible = false;
                  });
                },
                child: Text(' Another Magic'),
              ),
            ],
          ),
          Visibility(
            visible: _isVisible,
            child: Container(
              color: Colors.amber,
              child: Text(
                'I am visible now',
                style: TextStyle(color: Colors.white, fontSize: 30),
              ),
            ),
          ),
          Slider(
            value: _slidervalue,
            min: 2,
            max: 100,
            label: _slidervalue.toString(),
            onChanged: (value) {
              setState(() {
                _slidervalue = value;
                print(_slidervalue);
              });
            },
          ),
          Text(
            'Rijan hero',
            style: TextStyle(fontSize: _slidervalue),
          ),
        ],
      ),
    );
  }
}
