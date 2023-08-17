import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int soundnumber){
    final player = AudioPlayer();
    player.play(DeviceFileSource('assets/note$soundnumber.wav'));
  }
  Expanded BuildKey({required Color color, required int soundno}){
     return Expanded(
      child: Container(
        color: color,
        //width: double.infinity,
        child: TextButton(
          child: Text(''),
          onPressed: () {
            playSound(soundno);
          },
        ),
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
            children: [
              BuildKey(color: Colors.red,soundno: 1),
              BuildKey(color: Colors.orange,soundno: 2),
              BuildKey(color: Colors.yellow,soundno: 3),
              BuildKey(color: Colors.green,soundno: 4),
              BuildKey(color: Colors.teal,soundno: 5),
              BuildKey(color: Colors.blue,soundno: 6),
              BuildKey(color: Colors.purple,soundno: 7),
            ],
          ),
        ),
      ),
    );
  }
}
