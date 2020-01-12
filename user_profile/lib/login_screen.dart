import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  static const String id = 'login_screen';
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
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
              onPressed: () {
                print('button pressesd');
                Navigator.pushNamed(context, '/userScreen');
              },
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0))),
        ),
      ),
    );
  }
}
