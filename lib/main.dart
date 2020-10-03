import 'package:flutter/material.dart';
import 'package:random_words/random_words.dart';
import 'package:audioplayers/audio_cache.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  void playSound(int a) {
    final player = AudioCache();
    player.play('note$a.wav');
  }

  Expanded buildButton(int a, Color color) {
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: () {
          playSound(a);
        },
      ),
    );
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildButton(1, Colors.red.shade700),
              buildButton(2, Colors.deepOrange.shade400),
              buildButton(3, Colors.yellow),
              buildButton(4, Colors.purple),
              buildButton(5, Colors.blue.shade900),
              buildButton(6, Colors.blue),
              buildButton(7, Colors.lightBlueAccent),
            ],
          ),
        ),
      ),
    );
  }
}
