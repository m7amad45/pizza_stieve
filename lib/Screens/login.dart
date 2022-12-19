import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:kp/themes_constant.dart';
import 'package:kp/routes/pageRoute.dart';

import 'package:kp/themes_constant.dart';
import '../Drawer.dart';

class loginPage extends StatefulWidget {
  static const String routeName = '/loginPage';

  @override
  State<loginPage> createState() => _loginPageState();
}

class _loginPageState extends State<loginPage> {
  bool passwordVisiblity = true;
  final _email = TextEditingController();
  final _password = TextEditingController();
  var errorMessage;
//
  Future logIn() async {
    try {
      final user = await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: _email.text.trim(),
        password: _password.text.trim(),
      );
      if (user != null) {
        Navigator.pushNamed(context, pageRoutes.profile);
      }
    } on FirebaseAuthException catch (e) {
      print(e);
    }
  }

//
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _email.dispose();
    _password.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Column(
            children: [
              Container(
                height: 180,
                child: Image.asset('assets/pngwing3.png'),
              ),
            ],
          ),
          SizedBox(height: 20.0),
          TextFormField(
            controller: _email,
            decoration: InputDecoration(
              hintText: 'Email',
              icon: Icon(Icons.alternate_email),
              contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
            ),
            keyboardType: TextInputType.emailAddress,
          ),
          SizedBox(height: 20.0),
          //pass
          TextField(
            controller: _password,
            decoration: InputDecoration(
              hintText: 'Passowrd',
              contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
              icon: Icon(Icons.lock),
              suffixIcon: IconButton(
                icon: Icon(passwordVisiblity
                    ? Icons.visibility
                    : Icons.visibility_off),
                onPressed: () {
                  setState(() {
                    passwordVisiblity = !passwordVisiblity;
                  });
                },
              ),
            ),
            keyboardType: TextInputType.visiblePassword,
            obscureText: passwordVisiblity,
          ),
          SizedBox(height: 20.0),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: Material(
              elevation: 5,
              color: Colors.yellow[900],
              borderRadius: BorderRadius.circular(10),
              child: MaterialButton(
                onPressed: logIn,
                minWidth: 200,
                height: 42,
                child: Text(
                  'Log in',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ),
        ],
      ),
    ));
  }
}

