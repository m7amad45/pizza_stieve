import 'package:flutter/material.dart';

import '../Drawer.dart';

class aboutUsPage extends StatelessWidget {
  static const String routeName = '/aboutUsPage';

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: AppBar(
          title: Text("About Us"),
        ),
        drawer: DrawerScreen(),
        body: Center(child: Text("About Us page")));
  }
}
