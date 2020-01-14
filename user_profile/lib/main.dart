import 'package:flutter/material.dart';
//import 'package:google_sign_in/google_sign_in.dart';
//import 'package:geolocator/geolocator.dart';
//import 'login_screen.dart';
import 'user_screen.dart';
import 'services/location.dart';
import 'services/login.dart';

void main() {
  runApp(MaterialApp(
    home: LoginScreen(),
  ));
}

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 25.0),
        child: Center(
          child: OutlineButton(
              borderSide: BorderSide(color: Color(0xFF4fc3f7)),
              padding: EdgeInsets.all(10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Image.asset(
                    'images/google_logo.png',
                    height: 35.0,
                    width: 35.0,
                  ),
                  SizedBox(
                    width: 20.0,
                  ),
                  Text(
                    'Sign in with Google',
                    style: TextStyle(
                      fontSize: 18.0,
                      color: Colors.black,
                    ),
                  )
                ],
              ),
              onPressed: () async {
                await signIn();

                Route route =
                    MaterialPageRoute(builder: (context) => UserScreen());
                Navigator.push(context, route);

                //get location
//                Location location = Location();
//                await location.getCurrentLocation();

//                Route route =
//                    MaterialPageRoute(builder: (context) => UserScreen());
//                Navigator.push(context, route);
              },
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0))),
        ),
      ),
    );
  }
}
