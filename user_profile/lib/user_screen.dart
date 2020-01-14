import 'package:flutter/material.dart';
import 'services/login.dart';

class UserScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('User Profile'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.power_settings_new),
            onPressed: () async {
//              await signOut();
              signOut()
                  .then((value) => print(value))
                  .catchError((e) => print(e));
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}
