import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';
import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/rendering.dart';

void main() {
  runApp(
      XylophoneApp()
  );
  }

class XylophoneApp extends StatelessWidget {
  void playSound(int note_number) {
    final player = new AudioCache();
    player.play('note$note_number.wav');
  }

  Expanded buildKey({Color color , int note_number}) {
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: () {
          playSound(note_number);
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
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildKey(color : Colors.red, note_number : 1),
              buildKey(color : Colors.orange, note_number : 2),
              buildKey(color : Colors.yellow, note_number : 3),
              buildKey(color : Colors.green, note_number : 4),
              buildKey(color : Colors.teal, note_number : 5),
              buildKey(color : Colors.blue, note_number : 6),
              buildKey(color : Colors.purple, note_number : 7),
            ],
          ),
        ),
      ),
    );
  }
}
