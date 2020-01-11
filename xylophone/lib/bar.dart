import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

//using class
class Bar extends StatelessWidget {
  Bar({this.colour, this.soundNumber});

  final Color colour;
  final int soundNumber;

  void playSound(int soundNumber) {
    final player = AudioCache();
    player.play('note$soundNumber.wav');
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: FlatButton(
        onPressed: () {
          playSound(soundNumber);
        },
        child: Container(
          color: colour,
        ),
      ),
    );
  }
}
