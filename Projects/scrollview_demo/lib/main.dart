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
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
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
        body: SingleChildScrollView (
          child: Column(
            children: [
              SingleChildScrollView(
                scrollDirection: axisDirectionToAxis(AxisDirection.right),
                child: Row(
                  children: [
                    Container(
                      margin: const EdgeInsets.all(8.0),
                      height: 200,
                      width: 100,
                      color: Colors.lightBlue,
                    ),
                    Container(
                      margin: const EdgeInsets.all(8.0),
                      height: 200,
                      width: 100,
                      color: Colors.blueGrey,
                    ),
                    Container(
                      margin: const EdgeInsets.all(8.0),
                      height: 200,
                      width: 100,
                      color: Colors.black38,
                    ),
                    Container(
                      margin: const EdgeInsets.all(8.0),
                      height: 200,
                      width: 100,
                      color: Colors.yellowAccent[200],
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.all(8.0),
                height: 200,
                
                color: Colors.blue[700],
              ),
              Container(
                margin: const EdgeInsets.all(8.0),
                height: 200,
                color: Colors.redAccent,
              ),
              Container(
                margin: const EdgeInsets.all(8.0),
                height: 200,
                
                color: Colors.yellow[400],
              ),
              Container(
                margin: const EdgeInsets.all(8.0),
                height: 200,
                
                color: Colors.brown[400],
              ),
              Container(
                margin: const EdgeInsets.all(8.0),
                height: 200,
                
                color: Colors.green[700],
              ),
              Container(
                margin: const EdgeInsets.all(8.0),
                height: 200,
                
                color: Colors.pink[700],
              ),
            ],
          ),
        ) // This trailing comma makes auto-formatting nicer for build methods.
        );
  }
}