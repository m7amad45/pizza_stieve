import 'package:flutter/material.dart';

import '../navigationDrawer/navigationDrawer.dart';

class aboutUsPage extends StatelessWidget {
  static const String routeName = '/aboutUsPage';

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: AppBar(
          title: Text("About Us"),
        ),
        drawer: navigationDrawer(),
        body: Center(child: Text("About Us page")));
  }
}
