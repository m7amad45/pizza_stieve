import 'package:flutter/material.dart';
import 'package:kp/routes/pageRoute.dart';

class WelcomeScreen extends StatefulWidget {
  static const String routeName = '/welcomePage';
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Column(
              children: [
                Container(
                  height: 180,
                  child: Image.asset('assets/pngwing1.png'),
                ),
                Text(
                  'Pizza Stieve',
                  style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.w900,
                    color: Color(0xff2e386b),
                  ),
                ),
              ],
            ),
            SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Material(
                elevation: 5,
                color: Colors.yellow[900],
                borderRadius: BorderRadius.circular(10),
                child: MaterialButton(
                  onPressed: () => Navigator.pushNamed(context, pageRoutes.login),
                  minWidth: 200,
                  height: 42,
                  child: Text(
                    'Sign in',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ),
            //
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Material(
                elevation: 5,
                color: Colors.red[800],
                borderRadius: BorderRadius.circular(10),
                child: MaterialButton(
                  onPressed: () =>
                      Navigator.pushNamed(context, pageRoutes.registration),
                  minWidth: 200,
                  height: 42,
                  child: Text(
                    'register',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
