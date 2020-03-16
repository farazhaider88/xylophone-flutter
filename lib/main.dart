import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound({int index}) {
    final player = AudioCache();
    player.play('note$index.wav');
  }

  Expanded buildKey({Color color, int SoundNumber}) {
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: () {
          playSound(index: SoundNumber);
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
              buildKey(color: Colors.red, SoundNumber: 1),
              buildKey(color: Colors.yellow, SoundNumber: 2),
              buildKey(color: Colors.grey, SoundNumber: 3),
              buildKey(color: Colors.green, SoundNumber: 4),
              buildKey(color: Colors.blue, SoundNumber: 5),
              buildKey(color: Colors.orange, SoundNumber: 6),
              buildKey(color: Colors.lightBlueAccent, SoundNumber: 7),
            ],
          ),
        ),
      ),
    );
  }
}
