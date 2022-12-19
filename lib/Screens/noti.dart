import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:kp/routes/pageRoute.dart';
import '../Drawer.dart';
import '../local_notification.dart';

class noti extends StatefulWidget {
  static const String routeName = '/notiPage';

  @override
  State<noti> createState() => _noti();
}

bool notiTime = true;

class _noti extends State<noti> {
  Future notiOn() async {
    await service.showScheduledNotification(
      id: 0,
      title: 'Notification Title',
      body: 'Some body',
      seconds: 4,
    );
  }

  late final LocalNotificationService service;

  @override
  void initState() {
    service = LocalNotificationService();
    service.intialize();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("noti"),
      ),
      drawer: DrawerScreen(),
      body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Center(child: Text("kh")),
            ElevatedButton(
              onPressed: notiOn,
              child: Text("signout"),
            )
          ]),
    );
  }
}
