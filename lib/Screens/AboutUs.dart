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
        body: Center(child: Text(""" 
        Here in About us

the latest version is already installed 

TERMS & Condition :
1- you are above 18 and you respones for all you do in our App
2-We can provide you with our services here with features, and you can cancel the features, and the conditions may change according to circumstances

Thank you and wish you a pleasant service
""")));
  }
}
