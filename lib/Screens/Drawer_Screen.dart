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
          ElevatedButton Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (BuildContext context){
              return NewPage();
                 }), (r){
          return false;
             });
          listTile1(
              ListIcon: Icons.home_outlined,
              ListText: "Home",
              ListFunction: () {}),
          listTile1(
              ListIcon: Icons.info_outlined,
              ListText: "About Us",
              ListFunction: () {}),
          listTile1(
              ListIcon: Icons.info_outlined,
              ListText: "Contact Us",
              ListFunction: () {}),
        ],
      ),
    );
  }
}
