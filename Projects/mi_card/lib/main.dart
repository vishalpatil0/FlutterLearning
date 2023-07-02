import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 50.0,
              backgroundImage: AssetImage("assets/dp.jpg"),
            ),
            Text(
              "Vishal Patil",
              style: TextStyle(
                  fontSize: 25,
                  fontFamily: "Playfair",
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
            Text(
              "ANDROID DEVELOPER",
              style: TextStyle(
                  fontFamily: "SourceSans",
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  letterSpacing: 1.0),
            ),
            SizedBox(
              height: 20.0,
              width: 240.0,
              child: Divider(
                color: Colors.white,
              ),
            ),
            Card(
              margin: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
              color: Colors.white,
              child: ListTile(
                leading: Icon(
                  Icons.phone,
                  color: Colors.teal,
                ),
                title: Text(
                  "+91 7410760563",
                  style: TextStyle(color: Colors.teal),
                ),
              ),
            ),
            Card(
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                color: Colors.white,
                child: ListTile(
                  leading: Icon(
                    Icons.email,
                    color: Colors.teal,
                  ),
                  title: Text(
                    "vishalgpatil@gmail.com",
                    style: TextStyle(color: Colors.teal),
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
