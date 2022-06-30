import 'package:flutter/material.dart';
import 'package:flutter_application_2/screen/forgotpassword.dart';
import 'package:flutter_application_2/screen/login.dart';

import 'package:flutter_application_2/screen/register_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: loginpage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var _formKey = GlobalKey<FormState>();

  bool _ispasswordshows = true;
  @override
  Widget build(BuildContext context) {
    Widget titleSection = RichText(
      text: TextSpan(
        text: 'Welcome to ',
        style: TextStyle(color: Colors.black87, fontSize: 25),
        children: const <TextSpan>[
          TextSpan(text: 'Referly', style: TextStyle(color: Colors.deepOrange)),
        ],
      ),
    );

    Widget secondTitle =
        Text('Enter you registered email address of phone number to login ');

    Widget nameSection = Text('Email or phone number');
    Widget enterEmailSection = TextFormField(
      validator: ((value) {
        if (value!.isEmpty || !value.contains('@')) {
          return 'Enter valid Email';
        }
        return null;
      }),
      decoration: InputDecoration(
        border: OutlineInputBorder(),
        labelText: 'Enter email or phone number',
        prefix: Icon(Icons.email),
      ),
    );

    Widget passwordSection = Text('Enter your password');

    Widget enterPasswordSection = TextFormField(
      obscureText: _ispasswordshows,
      validator: (Value) {
        RegExp regex =
            RegExp(r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~])');
        //  var passNonNullValue=PassCurrentValue??"";
        if (Value!.isEmpty) {
          return ("Password is required");
        } else if (Value.length < 8) {
          return ("Password Must be more than  7 characters");
        } else if (!regex.hasMatch(Value)) {
          return ("Password should contain upper,lower,digit and Special character ");
        }
        return null;
      },
      decoration: InputDecoration(
        border: OutlineInputBorder(),
        labelText: 'Enter password',
        prefix: Icon(Icons.lock),
        suffixIcon: IconButton(
          icon:
              Icon(_ispasswordshows ? Icons.visibility : Icons.visibility_off),
          onPressed: () {
            setState(() {
              _ispasswordshows = !_ispasswordshows;
            });
          },
        ),
      ),
    );

    Widget forgotPassword = Align(
      child: GestureDetector(
        onTap: () {
          Navigator.push(context,
              MaterialPageRoute(builder: ((context) => forgotpasswordpage())));
        },
        child: Text('Forgot Password?'),
      ),
      alignment: Alignment.centerRight,
    );

    Widget loginButton = Center(
        child: ElevatedButton(
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
              builder: ((context) => RegisterPage()),
            ),
          );
        }
      },
      child: Text('Login'),
    ));

    Widget bottomSection = RichText(
      text: TextSpan(
        text: 'Don\'t have an accout?',
        style: TextStyle(color: Colors.black87, fontSize: 15),
        children: const <TextSpan>[
          TextSpan(text: 'Sign Up', style: TextStyle(color: Colors.deepOrange)),
        ],
      ),
    );

    return SafeArea(
      child: SingleChildScrollView(
        child: Scaffold(
          backgroundColor: Colors.amber,
          body: Padding(
            padding: const EdgeInsets.only(top: 15.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: EdgeInsets.only(left: 20),
                  child: Icon(Icons.arrow_back_ios),
                ),
                SizedBox(height: 10),
                Flexible(
                  child: Form(
                    key: _formKey,
                    child: Container(
                      padding: EdgeInsets.only(left: 20, right: 20),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(20),
                              topRight: Radius.circular(20))),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 20),
                          titleSection,
                          SizedBox(height: 10),
                          secondTitle,
                          SizedBox(height: 10),
                          nameSection,
                          SizedBox(height: 10),
                          enterEmailSection,
                          SizedBox(height: 10),
                          passwordSection,
                          SizedBox(height: 10),
                          enterPasswordSection,
                          SizedBox(height: 10),
                          forgotPassword,
                          SizedBox(height: 10),
                          loginButton,
                          SizedBox(height: 50),
                          Center(child: bottomSection),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
