import 'dart:math';

import 'package:flutter/material.dart';

class Animation1 extends StatefulWidget {
  const Animation1({Key? key}) : super(key: key);

  @override
  State<Animation1> createState() => _Animation1State();
}

class _Animation1State extends State<Animation1> {
  double _width = 200;
  double _height = 200;
  Color _color = Colors.lightGreen;
  BorderRadiusGeometry _borderRadius = BorderRadius.circular(40);
  final random = Random();
  void _Randomise() {
    setState(() {
      _width = random.nextInt(300).toDouble();
      _height = random.nextInt(400).toDouble();
      _color = Color.fromRGBO(
          random.nextInt(300), random.nextInt(300), random.nextInt(300), 1);
      _borderRadius = BorderRadius.circular(random.nextInt(100).toDouble());
      print(
          'my color is $_color and my width and height are $_width and $_height');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Animated Controller'),
      ),
      body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
        children: [
          AnimatedContainer(
            curve: Curves.bounceInOut,
            duration: Duration(milliseconds: 100),
            height: _height,
            width: _width,
            decoration:
                BoxDecoration(color: _color, borderRadius: _borderRadius),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              color: Colors.blue,
              height: 30,
              width: double.infinity,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                    'my color is $_color and my width and height are $_width and $_height'),
              ),
            ),
          )
        ],
      )),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _Randomise();
        },
        child: Icon(Icons.play_circle),
      ),
    );
  }
}
