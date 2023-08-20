import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MyState();
  }
}

class MyState extends StatefulWidget {
  const MyState({super.key});

  @override
  State<MyState> createState() => _MyStateState();
}

class _MyStateState extends State<MyState> {
  static const platform = MethodChannel('vishal.patil/battery');
  String batterylevel = "%";
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Battery level app"),
          backgroundColor: Colors.green,
        ),
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              batterylevel,
            ),
            ElevatedButton(
              onPressed: _getBatteryLevel,
              child: const Text("Get Battery Level"),
            ),
          ],
        )),
      ),
      debugShowCheckedModeBanner: false,
    );
  }

  Future _getBatteryLevel() async {
    String _batteryLevel;
    try {
      final int result = await platform.invokeMethod('getBatteryLevel');
      _batteryLevel = 'Battery level at $result % .';
    } on PlatformException catch (e) {
      _batteryLevel = "Failed to get battery level: '${e.message}'.";
    }

    setState(() {
      batterylevel = _batteryLevel;
    });
  }
}
