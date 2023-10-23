import 'dart:math';

import 'package:flutter/material.dart';

class Animation2 extends StatefulWidget {
  const Animation2({Key? key}) : super(key: key);

  @override
  State<Animation2> createState() => _Animation2State();
}

class _Animation2State extends State<Animation2> {
  double _opacity = 1;
  final random = Random();
  void _opacitycheck() {
    setState(() {
      _opacity = _opacity == 0 ? 1.0 : 0.0;
      //_opacity = random.nextInt(0).toDouble();

    });

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Animated Opacity'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedOpacity(
              opacity: _opacity,
              duration: Duration(seconds: 1),
              curve: Curves.easeIn,
              child: FlutterLogo(
                size: 200,
              ),
            ),
            ElevatedButton(
                onPressed: () {
                  _opacitycheck();
                  print('my n $_opacity');
                },
                child: Text(' Fade logo')),
          ],
        ),
      ),
    );
  }
}
