import 'package:flutter/material.dart';

// ignore: camel_case_types
class forgotpasswordpage extends StatefulWidget {
  const forgotpasswordpage({Key? key}) : super(key: key);

  @override
  State<forgotpasswordpage> createState() => forgotpasswordpageState();
}

// ignore: camel_case_types
class forgotpasswordpageState extends State<forgotpasswordpage> {
  bool _ispasswordshows = true;
  @override
  Widget build(BuildContext context) {
    Widget titleSection = RichText(
      text: const TextSpan(
        text: 'Create new ',
        style: TextStyle(color: Colors.black87, fontSize: 25),
        children: <TextSpan>[
          TextSpan(text: 'Password', style: TextStyle(color: Colors.black87)),
        ],
      ),
    );
    Widget secondTitle = const Text(
        'Your new password must be differnet from previous password');
    Widget passwordSection = const Text('Password');
    Widget enterpasswordSection = TextFormField(
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
        labelText: 'Enter your password',
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
    Widget confirmpasswordSection = const Text('Confirm Password');
    Widget enterconfirmSection = const TextField(
      obscureText: true,
      decoration: InputDecoration(
        border: OutlineInputBorder(),
        labelText: 'Enter your confirm password',
      ),
    );
    Widget loginButton = Center(
      child: ElevatedButton(
        onPressed: null,
        child: const Text('Reset Password'),
      ),
    );

    return SafeArea(
      child: Scaffold(
          backgroundColor: Colors.amber,
          body: Padding(
            padding: const EdgeInsets.only(top: 40),
            child: Container(
              padding: EdgeInsets.only(left: 20, right: 20, top: 20),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 15),
                  titleSection,
                  SizedBox(height: 15),
                  secondTitle,
                  SizedBox(height: 15),
                  passwordSection,
                  SizedBox(height: 5),
                  enterpasswordSection,
                  SizedBox(height: 15),
                  confirmpasswordSection,
                  SizedBox(height: 5),
                  enterconfirmSection,
                  SizedBox(
                    height: 15,
                  ),
                  loginButton,
                ],
              ),
            ),
          )),
    );
  }
}
