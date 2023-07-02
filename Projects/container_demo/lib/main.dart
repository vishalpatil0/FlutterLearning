import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Container Demo App",
      theme: ThemeData.dark(),
      home: Scaffold(
          appBar: AppBar(
            title: Text(
              "Container App Demo",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          body: Scaffold(
            backgroundColor: Colors.teal,
            body: SafeArea(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 100,
                    color: Colors.red[700],
                  ),
                  Container(
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            width: 100,
                            height: 100,
                            color: Colors.yellow,
                          ),
                          Container(
                            width: 100,
                            height: 100,
                            color: Colors.yellowAccent,
                          ),
                        ]),
                  ),
                  Container(
                    width: 100,
                    color: Colors.blue,
                  )
                ],
              ),
            ),
          )),
      debugShowCheckedModeBanner: false,
    );
  }
}
