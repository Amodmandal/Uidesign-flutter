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
      appBar: AppBar(
        title: Text('Settings'),
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
            onPressed: () {
              print("Acess  alarm clicked");
            },
            icon: Icon(Icons.access_alarm),
          )
        ],
      ),
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
    {
      showModalBottomSheet(
          context: context,
          builder: (context) {
            return Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                ListTile(
                  leading: new Icon(Icons.photo),
                  title: new Text('Photo'),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
                ListTile(
                  leading: new Icon(Icons.music_note),
                  title: new Text('Music'),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
                ListTile(
                  leading: new Icon(Icons.videocam),
                  title: new Text('Video'),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
                ListTile(
                  leading: new Icon(Icons.share),
                  title: new Text('Share'),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
              ],
            );
          });
    }
  }
}
