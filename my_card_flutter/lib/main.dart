import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CircleAvatar(
                  radius: 50.0,
                  backgroundImage: AssetImage('images/user.jpeg')),
              Text(
                'Sakshi Subedi',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Pacifico',
                  fontSize: 25.0,
                ),
              ),
              Text(
                'Flutter Developer',
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'Source Sans Pro',
                  fontSize: 20.0,
                  letterSpacing: 2.5,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                  height: 20.0,
                  width: 150.0,
                  child: Divider(
                    color: Colors.teal.shade100,
//                    indent: 20.0,
//                    endIndent: 20.0,
                  )),
              Card(
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                child: ListTile(
                  leading: Icon(
                    Icons.phone,
                    color: Colors.teal.shade900,
                  ),
                  title: Text(
                    '704 538 7638',
                    style: TextStyle(
                      color: Colors.teal.shade900,
                    ),
                  ),
                ),
              ),
              Card(
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                child: ListTile(
                  leading: Icon(
                    Icons.email,
                    color: Colors.teal.shade900,
                  ),
                  title: Text(
                    'sakshisubedi@gmail.com',
                    style: TextStyle(
                      color: Colors.teal.shade900,
                    ),
                  ),
                ),
              ),
//              Container(
//                color: Colors.white,
//                padding: EdgeInsets.all(10.0),
//                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
//                child: Row(
//                  children: <Widget>[
//                    Icon(
//                      Icons.phone,
//                      color: Colors.teal.shade900,
//                    ),
//                    SizedBox(
//                      width: 10.0,
//                    ),
//                    Text(
//                      '704 538 7638',
//                      style: TextStyle(
//                        color: Colors.teal.shade900,
//                      ),
//                    )
//                  ],
//                ),
//              ),
//              Container(
//                color: Colors.white,
//                padding: EdgeInsets.all(10.0),
//                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
//                child: Row(
//                  children: <Widget>[
//                    Icon(
//                      Icons.email,
//                      color: Colors.teal.shade900,
//                    ),
//                    SizedBox(
//                      width: 10.0,
//                    ),
//                    Text(
//                      'sakshisubedi@gmail.com',
//                      style: TextStyle(
//                        color: Colors.teal.shade900,
//                      ),
//                    )
//                  ],
//                ),
//              )
            ],
          ),
        ),
      ),
    );
  }
}

//            child: Row(
//              children: <Widget>[
//                Container(
//                  height: double.infinity,
//                  width: 100.0,
//                  color: Colors.red,
//                ),
//                SizedBox(
//                  width: 20.0,
//                ),
//                Container(
//                  height: 100.0,
//                  width: 100.0,
//                  color: Colors.yellow,
//                ),
//                Container(
//                  height: 100.0,
//                  width: 100.0,
//                  color: Colors.green,
//                ),
//                SizedBox(
//                  width: 20.0,
//                ),
//                Container(
//                  height: double.infinity,
//                  width: 100.0,
//                  color: Colors.blue,
//                )
//              ],
//            ),
