import 'package:flutter/material.dart';

import '../Drawer.dart';

class aboutUsPage extends StatelessWidget {
  static const String routeName = '/AboutUsPage';

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: Text("About Us"),
      ),
      body: Center(
        child: Container(
          color: Theme.of(context).colorScheme.secondary,
          child: Text(
            '''Here in About us
version 
the latest version is already installed 

TERMS & Condition :
1- you are above 18 and you respones for all you do in our App
2-We can provide you with our services here with features, and you can cancel the features, and the conditions may change according to circumstances

Thank you and wish you a pleasant service''',
            style: Theme.of(context).textTheme.headline6,
          ),
        ),
      ),
    );
  }
}

Widget build(BuildContext context) {
  return new Scaffold(
      appBar: AppBar(
        title: Text("About Us"),
      ),
      drawer: DrawerScreen(),
      body: Center(
          child: Container(
              color: Theme.of(context).colorScheme.secondary,
              child: Text(
                """ 
        aaa

""",
                style: Theme.of(context).textTheme.headline6,
              ))));
}

// i take some of about us from many apps in my phone : 
//Galary , massage and whatsapp . with some limit action for the user so all control to coder 
// we make about us page alone not together is to make it easy to mold operations and change becomes
// flexible with no interfernce in other pages to avoid Errors  

