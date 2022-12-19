import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:kp/routes/pageRoute.dart';
import 'package:kp/themes_constant.dart';
import '../Drawer.dart';
import '../local_notification.dart';

class contactUsPage extends StatelessWidget {
  static const String routeName = '/contactUsPage';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HomeBgColor,
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        title: const Text(
          "Contact Us",
          style: TextStyle(color: Colors.orange),
        ),
        backgroundColor: HomeBgColor,
      ),
      drawer: DrawerScreen(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          SizedBox(
            height: 50,
          ),
          Center(
              child: Image.asset(
            'assets/pngwing1.png',
            height: 250,
          )),
          SizedBox(
            height: 10,
          ),
          Text(
            'If you need help \n feel free to contact us',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white70,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration: BoxDecoration(color: Colors.white, boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      blurRadius: 0,
                    )
                  ]),
                  height: 100,
                  width: 150,
                  child: Column(
                    children: [
                      Icon(
                        Icons.alternate_email,
                        color: Colors.orange,
                        size: 50,
                      ),
                      Text(
                        'pizzasteve\n@gmail.com',
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration: BoxDecoration(color: Colors.white, boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      blurRadius: 0,
                    )
                  ]),
                  height: 100,
                  width: 150,
                  // color: Colors.white,
                  child: Column(
                    children: [
                      Icon(
                        Icons.phone,
                        color: Colors.orange,
                        size: 50,
                      ),
                      Text('+966 546962593'),
                    ],
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 50,
          ),
          Text(
            'Copyright . 2022 Shelby limted company',
            style: TextStyle(color: Colors.orange),
          ),
          Text(
            'All Rights Reserved',
            style: TextStyle(color: Colors.orange),
          ),
        ],
      ),
    );
  }
}
