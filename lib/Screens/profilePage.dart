import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:kp/routes/pageRoute.dart';
import 'package:kp/themes_constant.dart';
import '../Drawer.dart';

class profilePage extends StatefulWidget {
  static const String routeName = '/profilePage';

  @override
  State<profilePage> createState() => _profilePageState();
}

class _profilePageState extends State<profilePage> {
  final user = FirebaseAuth.instance.currentUser!;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HomeBgColor,
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        title: const Text("My Profile"),
        backgroundColor: HomeBgColor,
      ),
      drawer: DrawerScreen(),
      body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Center(
                child: Text(
              "${user.email!}",
              style: TextStyle(color: Colors.white),
            )),
            ElevatedButton(
              onPressed: () {
                FirebaseAuth.instance.signOut();
                Navigator.pushReplacementNamed(context, pageRoutes.welcomePage);
              },
              child: Text(
                "signout",
              ),
            ),
          ]),
    );
  }
}
