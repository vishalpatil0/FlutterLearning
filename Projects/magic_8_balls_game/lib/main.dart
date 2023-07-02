import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(BallPage());

class BallPage extends StatelessWidget {
  const BallPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Ask me Anything",
      debugShowCheckedModeBanner: false,
      home: Ball(),
    );
  }
}

class Ball extends StatefulWidget {
  const Ball({super.key});

  @override
  State<Ball> createState() => _BallState();
}

class _BallState extends State<Ball> {
  int imageNumber = 1;

  void randomImage() {
    setState(() {
      imageNumber = Random().nextInt(4) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Ask me anything"),
        backgroundColor: Colors.blue[900],
      ),
      body: Center(
        child: Container(
          width: double.infinity,
          height: double.infinity,
          color: Colors.blue,
          child: InkWell(
            child: Image.asset('images/ball$imageNumber.png'),
            onTap: () => randomImage(),
          ),
        ),
      ),
    );
  }
}
