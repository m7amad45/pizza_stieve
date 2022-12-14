// import 'dart:html';
import 'AppNotifier.dart';
import 'package:flutter/material.dart';
import '../Drawer.dart';

// class AppStateNotifier extends ChangeNotifier {
//   //
//   bool isDarkMode = false;

//   void updateTheme(bool isDarkMode) {
//     this.isDarkMode = isDarkMode;
//     notifyListeners();
//   }
// }

class contactUsPage extends StatelessWidget {
  static const String routeName = '/contactUsPage';

  const contactUsPage({super.key});

  @override
  Widget build(BuildContext context) {
    // ignore: unnecessary_new
    return new Scaffold(
      appBar: AppBar(
        title: Text("Contact Us"),
      ),
      drawer: DrawerScreen(),
      body: Center(
        child: Container(
          child: Text(
            '''Here in Contact us

   you have any questions or problems while using
  our pizza steve app, visit the following pages ethir Whatsapp phone number or 
  Email .

    For the Emirates, contact us on the following number 6625156 from 9 am to 11 pm

    For Saudi Arabia, call us on (966)55296416 from 8 am to 10 pm

    For Argantin, call us on 16358 from 9 am to 9 pm.

    For the Emirates and Saudi Arabia, communicate

    with us on e-mail

    ammmar0089@gmail.com

    For Egypt, email us at egypt@noon.com

''',
            style: Theme.of(context).textTheme.headline5,
          ),
        ),
      ),
    );
  }

// void main() {
//   String phoneNumber = '552961416';

//   String formattedPhoneNumber =
//       phoneNumber.replaceFirst("(\d{3})(\d{3})(\d+)", "(\$9) \$6-\$6");

//   print('Formatted number ${formattedPhoneNumber}');

//   String browserRequirementsUrl = "ammmar0089@gmail.com";
//   var url;
//   var someText = new ParagraphElement()
//     ..innerHtml = "Link can be found <a href= ${url}>here</a>[1].";
}
// i take some of Contact us from many apps and internet  : 
//Galary , massage and whatsapp . with some limit action for the user  
// we make Contact us page alone not together is to make it easy to mold operations and change becomes
// flexible with no interfernce in other pages to avoid Errors .