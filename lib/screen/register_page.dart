import 'package:flutter/material.dart';
import 'package:flutter_application_2/main.dart';

class RegisterPage extends StatefulWidget {
  RegisterPage({Key? key}) : super(key: key);

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  var _formKey = GlobalKey<FormState>();
  bool _ispasswordshows = true;
  @override
  Widget build(BuildContext context) {
    Widget titleSection = RichText(
      text: TextSpan(
        text: 'Create your ',
        style: TextStyle(color: Colors.black87, fontSize: 25),
        children: const <TextSpan>[
          TextSpan(text: 'Account', style: TextStyle(color: Colors.black87)),
        ],
      ),
    );
    Widget secondTitle = Text('Please enter your data to create your account ');
    Widget nameSection = Text('Full Name*');
    Widget enternameSection = TextFormField(
      validator: (value) {
        RegExp regex = RegExp(r'(^(?=.*?[0-9])(?=.*?[!@#\$&*~]))');
        if (value!.isEmpty) {
          return ("Enter your name");
        } else if (regex.hasMatch(value)) {
          return ("Enter vaild Name");
        }
        return null;
      },
      decoration: InputDecoration(
        border: OutlineInputBorder(),
        labelText: 'Enter your full name',
      ),
    );
    Widget numberSection = Text('Phone Number');

    Widget enternumberSection = TextFormField(
      validator: (value) {
        RegExp regex = RegExp(r'(^(?:[+0]9)?[0-9]{10,12}$)');

        if (value!.isEmpty) {
          return 'Enter Phone Number';
        } else if (value.length > 10) {
          return 'Phone number must of 10 digits';
        } else if (!regex.hasMatch(value)) {
          return 'Enter Valid Phone Number';
        }
        return null;
      },
      decoration: InputDecoration(
        border: OutlineInputBorder(),
        labelText: 'Enter your phone number',
      ),
    );
    Widget emailsection = Text('Email*');

    Widget enteremailSection = TextFormField(
      validator: ((value) {
        if (value!.isEmpty || !value.contains('@')) {
          return 'Enter valid Email';
        }
        return null;
      }),
      decoration: InputDecoration(
        border: OutlineInputBorder(),
        labelText: 'Enter your email number',
        prefix: Icon(Icons.email),
      ),
    );
    Widget passwordsection = Text('Password*');

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
        labelText: 'Enter your password ',
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
    Widget invitationnsection = Text('Invitaion Code');

    Widget enterinvitationSection = TextField(
      obscureText: true,
      decoration: InputDecoration(
          border: OutlineInputBorder(), labelText: 'Enter your refer code'),
    );

    Widget loginButton = Center(
      child: ElevatedButton(
        onPressed: null,
        child: const Text('Continue'),
      ),
    );

    Widget bottomSection = RichText(
      text: TextSpan(
        text: 'Already have an accout?',
        style: TextStyle(color: Colors.black87, fontSize: 15),
      ),
    );
    Widget signenter = Center(
      child: GestureDetector(
          onTap: () {
            if (_formKey.currentState!.validate()) {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: ((context) => const MyHomePage()),
                ),
              );
            }
          },
          child: Text(
            'Sign In',
            style: TextStyle(color: Colors.red),
          )),
    );

    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.amber,
        body: Padding(
          padding: const EdgeInsets.only(top: 10),
          child: Flexible(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Icon(Icons.arrow_back_ios),
                Expanded(
                  child: Form(
                    key: _formKey,
                    child: Container(
                      padding: EdgeInsets.only(left: 10, right: 10, top: 5),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20),
                        ),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 10),
                          titleSection,
                          SizedBox(height: 15),
                          secondTitle,
                          SizedBox(height: 15),
                          nameSection,
                          SizedBox(height: 15),
                          enternameSection,
                          SizedBox(height: 15),
                          numberSection,
                          SizedBox(height: 15),
                          enternumberSection,
                          SizedBox(height: 15),
                          emailsection,
                          SizedBox(height: 15),
                          enteremailSection,
                          SizedBox(height: 15),
                          passwordsection,
                          SizedBox(height: 15),
                          enterpasswordSection,
                          SizedBox(height: 15),
                          invitationnsection,
                          SizedBox(height: 15),
                          enterinvitationSection,
                          SizedBox(height: 15),
                          loginButton,
                          SizedBox(height: 15),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [bottomSection, signenter],
                          ),
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
