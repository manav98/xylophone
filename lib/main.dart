import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() {
  runApp(XylophoneApp());
}

class XylophoneApp extends StatelessWidget {
  void playSound(int noteNUmber) {
    final player = AudioCache();
    player.play('note$noteNUmber.wav');
  }

  Expanded buildKey({Color buttonColor, int noteNumber}) {
    return Expanded(
      child: FlatButton(
        padding: EdgeInsets.fromLTRB(0, 20, 0, 20),
        color: buttonColor,
        onPressed: () {
          playSound(noteNumber);
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                buildKey(Colors.red, 1),
                buildKey(Colors.orange, 2),
                buildKey(Colors.yellow, 3),
                buildKey(Colors.green, 4),
                buildKey(Colors.cyan, 5),
                buildKey(Colors.blueAccent, 6),
                buildKey(Colors.purpleAccent, 7)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
