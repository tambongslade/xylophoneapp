import 'dart:ffi';
import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/services.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    void playSound(int a) {
      final player = AudioPlayer();
      player.play(AssetSource('note$a.wav'));
    }

    Expanded building(Color a) {
      return (Expanded(
        child: Container(
          color: a,
          child: TextButton(
            onPressed: () {
              playSound(1);
            },
            child: Text(''),
          ),
        ),
      ));
    }

    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              building(Colors.red),
              building(Colors.red.shade300),
              building(Colors.yellow),
              building(Colors.green),
              building(Colors.green.shade300),
              building(Colors.blue),
              building(Colors.purple),
            ],
          ),
        ),
      ),
    );
  }
}
