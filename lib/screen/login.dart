import 'package:flutter/material.dart';
import 'package:flutter_application_2/screen/dashbord.dart';
import 'package:lottie/lottie.dart';

class loginpage extends StatefulWidget {
  loginpage({Key? key}) : super(key: key);

  @override
  State<loginpage> createState() => _loginpageState();
}

class _loginpageState extends State<loginpage> {
  final _formKey = GlobalKey<FormState>();
  bool _ispasswordshow = true;
  var userNameController = TextEditingController();
  var userPasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Form(
            key: _formKey,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  Lottie.asset('assets/anim/coder.json'),
                  TextFormField(
                    controller: userNameController,
                    keyboardType: TextInputType.name,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Enter your Name';
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                        // contentPadding: EdgeInsets.only(left: 30, right: 20),
                        labelText: 'Name',
                        border: OutlineInputBorder()),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    controller: userPasswordController,
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
                      labelText: 'Enter password',
                      border: OutlineInputBorder(),
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
                    onPressed: () {  if (_formKey.currentState!.validate()) {
                        /*ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text('all good ready to lunch'),
                          ),
                        );*/
                        String userName = userNameController.text;
                        String pass = userPasswordController.text;
                        print(userName);
                        print(pass);
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: ((context) => mainpage(
                                userNameController.text,
                                userPasswordController.text)),
                          ),
                        );
                      }},
                    child: Text('Login'),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
