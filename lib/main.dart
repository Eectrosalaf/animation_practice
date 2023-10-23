// ignore_for_file: prefer_const_constructors

import 'package:animation_practice/primaryanimation/Animation1.dart';
import 'package:animation_practice/primaryanimation/Animation3.dart';
import 'package:flutter/material.dart';
import 'watch/stopwatch.dart';
import 'primaryanimation/Animation2.dart';

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
      home: const MyHomePage(title: 'Animation Test'),
      //home: Center(child: const StopWatch())
    );
  }
}

class StopWatch extends StatelessWidget {
  const StopWatch({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF030728),
      body: Center(child: Stopwatch(),),
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
  int _counter = 0 + 1;
  //
  // void _incrementCounter() {
  //   setState(() {
  //     // This call to setState tells the Flutter framework that something has
  //     // changed in this State, which causes it to rerun the build method below
  //     // so that the display can reflect the updated values. If we changed
  //     // _counter without calling setState(), then the build method would not be
  //     // called again, and so nothing would appear to happen.
  //     _counter++;
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Center(child: Text(widget.title)),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            MaterialButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) =>  Animation1()),
                );
              },
              child: Text(
                'Animation 1',
                style: TextStyle(color: Colors.black, fontSize: 20),
              ),
              textTheme: ButtonTextTheme.primary,
            ),
            TextField(),
            MaterialButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) =>  Animation2()),
                );
              },
              child: Text(
                'Animation 2',
                style: TextStyle(color: Colors.black, fontSize: 20),
              ),
              textTheme: ButtonTextTheme.primary,
            ),
            MaterialButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) =>  Animation3()),
                );
              },
              child: Text(
                'Animation 3',
                style: TextStyle(color: Colors.black, fontSize: 20),
              ),
              textTheme: ButtonTextTheme.primary,
            ),
            MaterialButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) =>  StopWatch()),
                );
              },
              child: Text(
                'StopWatch',
                style: TextStyle(color: Colors.black, fontSize: 20),
              ),
              textTheme: ButtonTextTheme.primary,
            ),



          ],
        ),
      ),
    );
  }
}
