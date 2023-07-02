import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
            title: const Text(
              "Learning Demo App",
              style: TextStyle(color: Colors.white),
            ),
            backgroundColor: Colors.blue[700],
            leading: Icon(Icons.fork_right)),
        body: const Center(
          child: Image(
            image: NetworkImage(
                'https://images.unsplash.com/photo-1617854818583-09e7f077a156?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1470&q=80'),
          ),
        ),
        floatingActionButton: FloatingActionButton(
            onPressed: () {},
            backgroundColor: Colors.amber,
            child: Icon(Icons.add)),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
