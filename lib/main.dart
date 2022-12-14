import 'package:flutter/material.dart';
import 'package:kp/Screens/AboutUs.dart';
import 'package:kp/Screens/ContactUs.dart';
import 'package:kp/Screens/login.dart';
import 'package:kp/Screens/profilePage.dart';
import 'package:kp/Screens/registration.dart';
import 'package:kp/routes/pageRoute.dart';
import 'Screens/Home_Page.dart';
import 'routes/pageRoute.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Pizza Stieve',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: const homePage(),
      routes: {
        pageRoutes.home: (context) => homePage(),
        pageRoutes.registration: (context) => registrationPage(),
        pageRoutes.aboutUs: (context) => aboutUsPage(),
        pageRoutes.profile: (context) => profilePage(),
        pageRoutes.login: (context) => loginPage(),
        pageRoutes.contactUs: (context) => contactUsPage(),
      },
    );
  }
}
