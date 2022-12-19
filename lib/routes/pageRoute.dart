import 'package:flutter/material.dart';
import 'package:kp/Screens/AboutUs.dart';
import 'package:kp/Screens/ContactUs.dart';
import 'package:kp/Screens/Home_Page.dart';
import 'package:kp/Screens/profilePage.dart';
import 'package:kp/Screens/registration.dart';
import 'package:kp/Screens/login.dart';
import 'package:kp/Screens/noti.dart';
import 'package:kp/Screens/welcom_screen.dart';
import 'package:kp/cCamera/camera_screen.dart';

class pageRoutes {
  static const String welcomePage = WelcomeScreen.routeName;
  static const String home = homePage.routeName;
  static const String registration = registrationPage.routeName;
  static const String aboutUs = aboutUsPage.routeName;
  static const String profile = profilePage.routeName;
  static const String login = loginPage.routeName;
  // static const String ContactUs = contactUsPage.routeName;
  static const String notif = noti.routeName;
  static const String camera = CameraScreen.routeName;
}
