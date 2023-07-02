import 'package:audiofileplayer/audiofileplayer.dart';
import 'package:flutter/material.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Pak(),
    );
  }
}

class Pak extends StatefulWidget {
  const Pak({super.key});

  @override
  State<Pak> createState() => _PakState();
}

class _PakState extends State<Pak> {
  void playSound(String audioName) {
    print("sound name --> $audioName");
    Audio audio = Audio.load('assets/note$audioName.wav');
    audio.play();
    audio.dispose();
  }

  Expanded buildBellBar(Color? c, int sound) {
    return Expanded(
      child: InkWell(
        child: Container(
          color: c,
        ),
        onTap: () => playSound(sound.toString()),
      ),
    );
  }

  var colours = [
    Colors.red[700],
    const Color.fromARGB(255, 225, 165, 74),
    Colors.yellow[300],
    Colors.green[400],
    Colors.teal[300],
    Colors.blue[400],
    Colors.purple[700]
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Packages"), backgroundColor: Colors.pink),
        body: Column(
          children: [
            for (int i = 0; i < colours.length; i++)
              buildBellBar(colours[i], i + 1)
          ],
        ));
  }
}