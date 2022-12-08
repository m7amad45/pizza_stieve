import 'package:flutter/material.dart';
import 'package:kp/themes_constant.dart';

import '../Drawer.dart';

class registrationPage extends StatefulWidget {
  static const String routeName = '/registrationPage';

  @override
  State<registrationPage> createState() => _registrationPageState();
}

class _registrationPageState extends State<registrationPage> {
  bool passwordVisiblity = true;

  TextField cTextField(
      {required String Name,
      required Widget customIcon,
      required TextInputType inputType,
      bool obscureText = false}) {
    return TextField(
      decoration: InputDecoration(
        labelText: Name,
        icon: customIcon,
      ),
      keyboardType: inputType,
      obscureText: obscureText,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: HomeBgColor,
          centerTitle: true,
          title: const Text("registration"),
        ),
        drawer: DrawerScreen(),
        body: Column(
          children: [
            cTextField(
                Name: 'Name',
                customIcon: Icon(Icons.person),
                inputType: TextInputType.name),
            cTextField(
                Name: 'Number',
                customIcon: Icon(Icons.phone),
                inputType: TextInputType.phone),
            cTextField(
                Name: 'Email',
                customIcon: Icon(Icons.alternate_email),
                inputType: TextInputType.emailAddress),
            cTextField(
                Name: 'Passowrd',
                customIcon: IconButton(
                  icon: Icon(passwordVisiblity
                      ? Icons.visibility
                      : Icons.visibility_off),
                  onPressed: () {
                    setState(() {
                      passwordVisiblity = !passwordVisiblity;
                    });
                  },
                ),
                inputType: TextInputType.visiblePassword,
                obscureText: passwordVisiblity),
          ],
        ));
  }
}
