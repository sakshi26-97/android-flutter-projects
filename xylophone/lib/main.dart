import 'package:flutter/material.dart';
import 'bar.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  //using function
//  void playSound(int soundNumber) {
//    final player = AudioCache();
//    player.play('note$soundNumber.wav');
//  }

//  Expanded bar({Color colour, int soundNumber}) {
//    return Expanded(
//      child: FlatButton(
//        onPressed: () {
//          print(soundNumber);
//          playSound(soundNumber);
//        },
//        child: Container(
//          color: colour,
//        ),
//      ),
//    );
//  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            children: <Widget>[
              //using function
//              bar(colour: Colors.red, soundNumber: 1),
              //using class
              Bar(colour: Colors.red, soundNumber: 1),
              Bar(colour: Colors.orange, soundNumber: 2),
              Bar(colour: Colors.yellow, soundNumber: 3),
              Bar(colour: Colors.green, soundNumber: 4),
              Bar(colour: Colors.blue, soundNumber: 5),
              Bar(colour: Colors.teal, soundNumber: 6),
              Bar(colour: Colors.purple, soundNumber: 7),
            ],
          ),
        ),
      ),
    );
  }
}
