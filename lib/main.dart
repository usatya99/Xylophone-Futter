import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() {
  runApp(
    XylophoneApp(),
  );
}

class XylophoneApp extends StatelessWidget {
  void PlaySound(int Number) {
    final Player = AudioCache();
    Player.play('note$Number.wav');
  }

  Expanded BuildKey({Color color, int soundNum}) {
    return Expanded(
      child: Container(
        width: double.infinity,
        child: FlatButton(
          color: color,
          onPressed: () {
            PlaySound(soundNum);
          },
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black87,
        body: SafeArea(
          child: Column(
            children: <Widget>[
              BuildKey(color: Colors.red, soundNum: 1),
              BuildKey(color: Colors.orange, soundNum: 2),
              BuildKey(color: Colors.yellow, soundNum: 3),
              BuildKey(color: Colors.green, soundNum: 4),
              BuildKey(color: Colors.blue, soundNum: 5),
              BuildKey(color: Colors.teal, soundNum: 6),
              BuildKey(color: Colors.purple, soundNum: 7),
            ],
          ),
        ),
      ),
    );
  }
}
