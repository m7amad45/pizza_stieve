import 'package:flutter/material.dart';

import '../Drawer.dart';

class registrationPage extends StatelessWidget {
  static const String routeName = '/registrationPage';

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: AppBar(
          title: Text("registration"),
        ),
        drawer: DrawerScreen(),
        body: Center(child: Text("This is registration page")));
  }
}
