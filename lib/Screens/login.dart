import 'package:flutter/material.dart';

import '../Drawer.dart';

class loginPage extends StatelessWidget {
  static const String routeName = '/loginPage';

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: AppBar(
          title: Text("login"),
        ),
        drawer: DrawerScreen(),
        body: Center(child: Text("This is login page")));
  }
}
