import 'package:flutter/material.dart';

import 'package:kp/routes/pageRoute.dart';

import 'package:flutter/material.dart';

// for drawer screen

class DrawerScreen extends StatelessWidget {
  const DrawerScreen({Key? key}) : super(key: key);

  ListTile listTile1({ListIcon, ListText, ListFunction}) {
    return ListTile(
      leading: Icon(
        ListIcon,
        color: Colors.white,
      ),
      title: Text(
        ListText,
        style: TextStyle(color: Colors.white),
      ),
      onTap: ListFunction,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Color.fromRGBO(47, 47, 47, 1),
      child: ListView(
        children: [
          listTile1(
            ListIcon: Icons.info_outline,
            ListText: "about Us",
            ListFunction: () =>
                Navigator.pushNamed(context, pageRoutes.aboutUs),
          ),
          listTile1(
            ListIcon: Icons.home_outlined,
            ListText: "Home",
            ListFunction: () => Navigator.pushNamed(context, pageRoutes.home),
          ),
          listTile1(
            ListIcon: Icons.login,
            ListText: "login",
            ListFunction: () => Navigator.pushNamed(context, pageRoutes.login),
          ),
          listTile1(
            ListIcon: Icons.account_circle,
            ListText: "profile",
            ListFunction: () =>
                Navigator.pushNamed(context, pageRoutes.profile),
          ),
          listTile1(
            ListIcon: Icons.app_registration_outlined,
            ListText: "registration",
            ListFunction: () =>
                Navigator.pushNamed(context, pageRoutes.registration),
          ),
          listTile1(
            ListIcon: Icons.info_outline,
            ListText: "Contact Us",
            ListFunction: () =>
                Navigator.pushNamed(context, pageRoutes.ContactUs),
          ),
          listTile1(
            ListIcon: Icons.camera,
            ListText: "Camera",
            ListFunction: () => Navigator.pushNamed(context, pageRoutes.camera),
          ),
        ],
      ),
    );
  }
}
