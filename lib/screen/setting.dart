import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_2/screen/Secondsetting.dart';

class SettingPage extends StatefulWidget {
  SettingPage({Key? key}) : super(key: key);

  @override
  State<SettingPage> createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
       
        child: SafeArea(
          child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('images/d.jpg'),
                fit: BoxFit.fill,
              ),
             
            ),
            padding: EdgeInsets.all(100),
            child: Center(
              child: Column(
                children: [
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: ((context) =>
                              DetailPage("From Setting page")),
                        ),
                      );
                    },
                    child: Text('Send Data'),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      print('Helo show dialog');
                      showMeDialog(context);
                    },
                    child: Text('Show Dialog'),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      print('Helo show dialog');
                      showiOSDialog(context);
                    },
                    child: Text('Show  ios Dialog'),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      _showBottomSheet();
                    },
                    child: Text('Bottom Sheet'),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  void showMeDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) => AlertDialog(
        title: Text('Exit'),
        content: Text('Are you sure yiu want to exit'),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: Text('Yes'),
          ),
          TextButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: Text('No'),
          ),
        ],
      ),
    );
  }

  void showiOSDialog(BuildContext context) {
    showCupertinoDialog(
      context: context,
      builder: (BuildContext context) => CupertinoAlertDialog(
        title: Text('Exit'),
        content: Text('MESSAGE'),
        actions: [
          CupertinoDialogAction(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text('Yes'),
          ),
          CupertinoDialogAction(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text('No'),
          ),
        ],
      ),
    );
  }

  void _showBottomSheet() {
    showModalBottomSheet(
        context: context,
        builder: (BuildContext context) {
          return Container(
            color: Color.fromARGB(255, 214, 197, 145),
            height: 300,
            child: Container(
              padding: EdgeInsets.only(left: 20, top: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                      child: Row(
                    children: [
                      Icon(Icons.messenger, size: 30),
                       SizedBox(
                        width: 10,
                      ),
                      Text('Messenger'),
                    ],
                  )),
                  SizedBox(height: 20),
                  Container(
                      child: Row(
                    children: [
                      Icon(Icons.share, size: 30),
                       SizedBox(
                        width: 10,
                      ),
                      Text('share'),
                    ],
                  )),
                  SizedBox(height: 20),
                  Container(
                      child: Row(
                    children: [
                      Icon(Icons.more, size: 30),
                      SizedBox(
                        width: 10,
                      ),
                      Text('More options'),
                    ],
                  )),
                ],
              ),
            ),
          );
        });
  }
}
