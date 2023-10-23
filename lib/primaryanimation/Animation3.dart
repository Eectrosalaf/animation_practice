import 'package:flutter/material.dart';

class Animation3 extends StatefulWidget {
  const Animation3({Key? key}) : super(key: key);

  @override
  State<Animation3> createState() => _Animation3State();
}

class _Animation3State extends State<Animation3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('TweenAnimation'),
      ),
      body: HSVCollector(),
    );
  }
}

class HSVCollector extends StatefulWidget {
  const HSVCollector({Key? key}) : super(key: key);

  @override
  State<HSVCollector> createState() => _HSVCollectorState();
}

class _HSVCollectorState extends State<HSVCollector> {
  double _hue = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
          child: TweenAnimationBuilder<double>(
              tween: Tween<double>(begin: 0, end: _hue),
              duration: Duration(seconds: 1),
              builder: (context, hue, child) {
                final hsvColor = HSVColor.fromAHSV(1, hue, 1, 1);

                return Container(
                  width: 200,
                  height: 200,
                  color: hsvColor.toColor(),
                );
              }),
        ),
        SizedBox(
          height: 40,
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            height: 30,
            decoration: BoxDecoration(
                gradient: LinearGradient(colors: [
              for (var h = 0; h <= 360; h++)
                HSVColor.fromAHSV(1, h.toDouble(), 1, 1).toColor()
            ], stops: [
              for (var h = 0; h <= 360; h++) h.toDouble() / 360,
            ])),
          ),
        ),
        Slider.adaptive(
            value: _hue,
            min: 0,
            max: 360,
            onChanged: (value) {
              setState(() {
                _hue = value;
              });
            })
      ],
    );
  }
}
