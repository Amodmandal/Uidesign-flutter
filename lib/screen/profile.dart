import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  String userName;
  String pass;
  ProfilePage(this.userName, this.pass);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Hello there!\n"+
                  widget.userName + " " + widget.pass,
                  style: TextStyle(fontSize: 30,fontFamily: 'Lobster'),
                ),
                // Image.asset(
                //   'images/c.jpg',
                //   height: 100,
                //   width: 150,
                //   fit: BoxFit.cover,
                // ),
                GestureDetector(
                  onTap: () {

                  },
                  child: CircleAvatar(
                    backgroundImage: AssetImage('images/c.jpg'),
                    radius: 40,
                  ),
                )

                // Container(
                //   decoration: BoxDecoration(
                //     image: DecorationImage(
                //       image: AssetImage('images/c.jpg'),

                //     ),
                //   ),
                // )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
