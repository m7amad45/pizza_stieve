import 'package:flutter/material.dart';
import 'package:kp/themes_constant.dart';

import '../Drawer.dart';

class aboutUsPage extends StatelessWidget {
  static const String routeName = '/AboutUsPage';

  @override
  Widget build(BuildContext context) {
    // ignore: unnecessary_new
    return Scaffold(
      backgroundColor: HomeBgColor,
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        title: const Text(
          "About Us",
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
                  height: 200,
                  width: 300,
                  child: Column(
                    children: [
                      Text(
                        "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and ",
                        textAlign: TextAlign.center,
                      ),
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

// Widget build(BuildContext context) {
//   // ignore: unnecessary_new
//   return new Scaffold(
//       appBar: AppBar(
//         title: Text("About Us"),
//       ),
//       drawer: DrawerScreen(),
//       body: Center(
//           child: Container(
//               color: Theme.of(context).colorScheme.secondary,
//               child: Text(
//                 """ 
//         aaa

// """,
//                 style: Theme.of(context).textTheme.headline6,
//               ))));
// }

// // i take some of about us from many apps in my phone : 
// Galary , massage and whatsapp . with some limit action for the user so all control to coder 
// we make about us page alone not together is to make it easy to mold operations and change becomes
// flexible with no interfernce in other pages to avoid Errors  

