import 'dart:html';
import 'AppNotifier.dart';
import 'package:flutter/material.dart';
import '../Drawer.dart';

class AppStateNotifier extends ChangeNotifier {
<<<<<<< HEAD
=======
  //
>>>>>>> fa3281a7a703649714b6a6a568ea282a892c3ba3
  bool isDarkMode = false;

  void updateTheme(bool isDarkMode) {
    this.isDarkMode = isDarkMode;
    notifyListeners();
  }
}

<<<<<<< HEAD
class ContactUsPage extends StatelessWidget {
  static const String routeName = '/ContactUsPage';

  const ContactUsPage({super.key});
=======
class contactUsPage extends StatelessWidget {
  static const String routeName = '/contactUsPage';

  const contactUsPage({super.key});
>>>>>>> fa3281a7a703649714b6a6a568ea282a892c3ba3

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: Text("Contact Us"),
      ),
<<<<<<< HEAD
=======
      drawer: DrawerScreen(),
>>>>>>> fa3281a7a703649714b6a6a568ea282a892c3ba3
      body: Center(
        child: Container(
          color: Theme.of(context).colorScheme.secondary,
          child: Text(
<<<<<<< HEAD
            '''Here in Contact us

             you have any questions or problems while using
 our pizza steve app, visit the following pages ethir Whatsapp phone number or 
 Email .
 
 For the Emirates, contact us on the following number 80038888 from 9 am to 11 pm

 For Saudi Arabia, contact us at (966) 552961416 from 8 am to 10 pm

 For Egypt, call us on 16358 from 9 am to 9 pm.

 For the Emirates and Saudi Arabia, communicate

 with us on e-mail

 ammmar0089@gmail.com

 For Egypt, email us at egypt@noon.com


 ''',
=======
            '''Here in About us

            you have any questions or problems while using
our pizza steve app, visit the following pages ethir Whatsapp phone number or 
Email .

''',
>>>>>>> fa3281a7a703649714b6a6a568ea282a892c3ba3
            style: Theme.of(context).textTheme.headline4,
          ),
        ),
      ),
    );
  }
}

// // void main() {
// //   String phoneNumber = '552961416';

// //   String formattedPhoneNumber =
// //       phoneNumber.replaceFirst("(\d{3})(\d{3})(\d+)", "(\$9) \$6-\$6");

// //   print('Formatted number ${formattedPhoneNumber}');

// //   String browserRequirementsUrl = "ammmar0089@gmail.com";
// //   var url;
// //   var someText = new ParagraphElement()
// //     ..innerHtml = "Link can be found <a href= ${url}>here</a>[1].";
// // }
// // i take some of Contact us from many apps and internet  : 
// //Galary , massage and whatsapp . with some limit action for the user  
// // we make Contact us page alone not together is to make it easy to mold operations and change becomes
// // flexible with no interfernce in other pages to avoid Errors .

