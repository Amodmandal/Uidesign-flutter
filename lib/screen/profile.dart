import 'package:flutter/material.dart';
class ProfilePage extends StatefulWidget {
  ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Container(color: Color.fromARGB(255, 23, 221, 13),
    child: Center(child: Text('Profile')),);
  }
}