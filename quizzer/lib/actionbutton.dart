import 'package:flutter/material.dart';

class ActionButton extends StatelessWidget {
//  const ActionButton({
//    Key key,
//  }) : super(key: key);

  ActionButton({this.colour, this.text});
  final Color colour;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.all(15.0),
        child: FlatButton(
          onPressed: () {
            print(text);
          },
          color: colour,
          child: Text(
            text,
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white,
              fontSize: 20.0,
            ),
          ),
        ),
      ),
    );
  }
}
