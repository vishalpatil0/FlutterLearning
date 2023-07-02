import 'dart:ffi';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    final growableList = <String>['A', 'B'];
    for(int i = 0; i < 30; i++) {
      growableList.add("$i");
    }
    return Scaffold(
      appBar: AppBar(
        // TRY THIS: Try changing the color here to a specific color (to
        // Colors.amber, perhaps?) and trigger a hot reload to see the AppBar
        // change color while the other colors stay the same.
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: ListView.separated(itemBuilder:(context, index) {
        if(index > 10 && index < 20) {
          return Text(growableList[index], style: const TextStyle(fontSize: 23, color: Colors.green, fontWeight: FontWeight.bold, backgroundColor: Colors.pink));
        }
        return Text(growableList[index], style: const TextStyle(fontSize: 20));
      },
      itemCount: growableList.length,
      reverse: true,
        scrollDirection: Axis.vertical,
        separatorBuilder: (context, index) {
        return Divider(height: 4);
        },
      )// This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}