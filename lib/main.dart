import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:kp/Drawer.dart';
import 'package:kp/Screens/AboutUs.dart';

import 'package:kp/Screens/ContactUs.dart';
import 'package:kp/Screens/login.dart';
import 'package:kp/Screens/profilePage.dart';
import 'package:kp/Screens/registration.dart';
import 'package:kp/Screens/welcom_screen.dart';
import 'package:kp/cCamera/Camare.dart';
import 'package:kp/routes/pageRoute.dart';
import 'Screens/Home_Page.dart';
import 'routes/pageRoute.dart';
import 'cCamera/Camare.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
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
      home: WelcomeScreen(),
      routes: {
        pageRoutes.welcomePage: (context) => WelcomeScreen(),
        pageRoutes.home: (context) => homePage(),
        pageRoutes.registration: (context) => registrationPage(),
        pageRoutes.aboutUs: (context) => aboutUsPage(),
        pageRoutes.profile: (context) => profilePage(),
        pageRoutes.login: (context) => loginPage(),
        pageRoutes.contactUs: (context) => contactUsPage(),
        pageRoutes.camera: (context) => cameraPage(),


      },
    );
  }
}
