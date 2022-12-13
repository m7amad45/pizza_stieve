import 'dart:html';
import 'AppNotifier.dart';
import 'package:flutter/material.dart';
import '../Drawer.dart';

class AppStateNotifier extends ChangeNotifier {
  //
  bool isDarkMode = false;

  void updateTheme(bool isDarkMode) {
    this.isDarkMode = isDarkMode;
    notifyListeners();
  }
}

class ContactUsPage extends StatelessWidget {
  static const String routeName = '/ContactUsPage';

  const ContactUsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: Text("Contact Us"),
      ),
      body: Center(
        child: Container(
          color: Theme.of(context).colorScheme.secondary,
          child: Text(
            '''Here in About us

            you have any questions or problems while using
our pizza steve app, visit the following pages ethir Whatsapp phone number or 
Email .

''',
            style: Theme.of(context).textTheme.headline4,
          ),
        ),
      ),
    );
  }
}

void main() {
  String phoneNumber = '552961416';

  String formattedPhoneNumber =
      phoneNumber.replaceFirst("(\d{3})(\d{3})(\d+)", "(\$9) \$6-\$6");

  print('Formatted number ${formattedPhoneNumber}');

  String browserRequirementsUrl = "ammmar0089@gmail.com";
  var url;
  var someText = new ParagraphElement()
    ..innerHtml = "Link can be found <a href= ${url}>here</a>[1].";
}
// i take some of Contact us from many apps and internet  : 
//Galary , massage and whatsapp . with some limit action for the user  
// we make Contact us page alone not together is to make it easy to mold operations and change becomes
// flexible with no interfernce in other pages to avoid Errors .

