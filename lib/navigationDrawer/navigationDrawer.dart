
import 'package:flutter/material.dart';

import '../widgets/DrawerBodyItem.dart';
import '../widgets/DrawerHeader.dart';
import 'package:kp/routes/pageRoute.dart';

class navigationDrawer extends StatelessWidget {  //
 @override
 Widget build(BuildContext context) {
   
   return Drawer(
     child: ListView(
       padding: EdgeInsets.zero,
       children: <Widget>[
         createDrawerHeader(),
         createDrawerBodyItem(
           icon: Icons.home,
           text: 'Home',
           onTap: () =>
               Navigator.pushReplacementNamed(context, pageRoutes.home),
         ),
         createDrawerBodyItem(
           icon: Icons.account_circle,
           text: 'Profile',
           onTap: () =>
               Navigator.pushReplacementNamed(context, pageRoutes.profile),
         ),

         createDrawerBodyItem(
           icon: Icons.info_outline,
           text: 'About Us',
           onTap: () =>
               Navigator.pushReplacementNamed(context, pageRoutes.aboutUs),
         ),
         Divider(),
         createDrawerBodyItem(
           icon: Icons.login,
           text: 'login',
           onTap: () =>
               Navigator.pushReplacementNamed(context, pageRoutes.login),
         ),
         createDrawerBodyItem(
           icon: Icons.app_registration_outlined,
           text: 'registration',
           onTap: () =>
               Navigator.pushReplacementNamed(context, pageRoutes.registration),
         ),
         ListTile(
           title: Text('App version 1.0.0'),
           onTap: () {},
         ),
       ],
     ),
   );
 }
}
