import 'package:flutter/material.dart';
import 'package:flutter_application_2/screen/dashbord.dart';

class loginpage extends StatefulWidget {
  loginpage({Key? key}) : super(key: key);

  @override
  State<loginpage> createState() => _loginpageState();
}

class _loginpageState extends State<loginpage> {
  final _formKey = GlobalKey<FormState>();
  bool _ispasswordshow = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Form(
          key: _formKey,
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
                  contentPadding: EdgeInsets.only(left: 20),
                  hintText: 'Enter full name',
                ),
              ),
              TextFormField(
                obscureText: _ispasswordshow,
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
                    icon: Icon(_ispasswordshow
                        ? Icons.visibility
                        : Icons.visibility_off),
                    onPressed: () {
                      setState(() {
                        _ispasswordshow = !_ispasswordshow;
                      });
                    },
                  ),
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    /*ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text('all good ready to lunch'),
                      ),
                    );*/
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: ((context) => mainpage()),
                      ),
                    );
                  }
                },
                child: Text('Login'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
