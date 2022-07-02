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
      body: SafeArea(
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: ((context) => DetailPage("From Setting page")),
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
            color: Colors.amber,
            height: 300,
            decoration: bo,
            child: Column(
              children: [
                TextFormField(
                  keyboardType: TextInputType.name,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Enter your Name';
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                    hintText: 'Enter full name',
                  ),
                ),
                TextFormField(
                  validator: ((value) {
                    if (value!.isEmpty) {
                      return 'Enter your Password';
                    }
                    if (value.length < 5) {
                      return 'Enter password greater than 4';
                    }
                    return null;
                  }),
                  decoration: InputDecoration(
                    prefix: Icon(Icons.lock),
                    hintText: 'Enter password',
                    suffixIcon: IconButton(
                      icon: Icon(Icons.visibility),
                      onPressed: () {},
                    ),
                  ),
                ),
              ],
            ),
          );
        });
  }
}
