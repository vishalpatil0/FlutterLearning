import 'package:flutter/material.dart';
import 'package:style_theme_demo/ui_helper.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          primarySwatch: Colors.green,
          textTheme: const TextTheme(
            titleLarge: TextStyle(fontSize: 11, fontWeight: FontWeight.bold),
            titleMedium: TextStyle(
                fontSize: 5,
                fontWeight: FontWeight.w500,
                fontStyle: FontStyle.italic),
          )),
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "Theme and Style Demo",
          ),
        ),
        body: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Hello World!',
                style: Theme.of(context).textTheme.displayLarge,
              ),
              Text(
                'Hello World!',
                style: Theme.of(context)
                    .textTheme
                    .titleMedium
                    ?.copyWith(fontStyle: FontStyle.italic),
              ),
              Text(
                'Hello World!',
                style: textStyle1(14),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
