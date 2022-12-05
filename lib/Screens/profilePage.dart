import 'package:flutter/material.dart';

import '../Drawer.dart';

class profilePage extends StatelessWidget {
  static const String routeName = '/profilePage';

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: AppBar(
          title: Text("My Profile"),
        ),
        drawer: DrawerScreen(),
        body: Center(child: Text("This is profile page")));
  }
}
