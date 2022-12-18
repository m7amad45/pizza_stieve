import 'package:flutter/material.dart';

import 'camera_screen.dart';
import 'package:kp/Drawer.dart';

class cameraPage extends StatelessWidget {
  static const String routeName = '/cameraPage';
@override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: DrawerScreen(),
      body: Center(
        child: MaterialButton(
          onPressed: () {
            Navigator.pushNamed(context, CameraScreen.routeName);
          },
          child: Text('camera'),
        ),
      ),
    );
  }
}

