import 'package:flutter/material.dart';

import '../navigationDrawer/navigationDrawer.dart';

class loginPage extends StatelessWidget {
  static const String routeName = '/loginPage';

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: AppBar(
          title: Text("login"),
        ),
        drawer: navigationDrawer(),
        body: Center(child: Text("This is login page")));
  }
}
