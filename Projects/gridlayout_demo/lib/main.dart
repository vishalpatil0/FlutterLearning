import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
            child: GridView.extent(
              /**
               * GridView.Count : to keep count same in landscape and portrait mode
               * GridView.extend: count change as per the width of row
               */
          maxCrossAxisExtent: 67,
          crossAxisSpacing: 5.0,
          mainAxisSpacing: 5.0,
          children: [
            Container(
              color: Colors.green,
            ),
            Container(
              color: Colors.yellow,
            ),
            Container(
              color: Colors.blue,
            ),
            Container(
              color: Colors.red[500],
            ),
            Container(
              color: Colors.pink[100],
            ),
            Container(
              color: Colors.teal,
            ),
            Container(
              color: Colors.brown,
            ),
          ],
        )),
      ),
    );
  }
}
