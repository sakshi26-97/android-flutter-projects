import 'package:flutter/material.dart';
//import 'package:google_sign_in/google_sign_in.dart';
import 'package:geolocator/geolocator.dart';
import 'login_screen.dart';
import 'user_screen.dart';

void main() => runApp(UserProfile());

class UserProfile extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => LoginScreen(),
        '/userScreen': (context) => UserScreen(),
      },
//      home: LoginScreen(),
    );
  }
}
