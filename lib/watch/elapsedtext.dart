// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class ElapsedTimeTextBasic extends StatelessWidget {
  const ElapsedTimeTextBasic({Key? key, required this.elapsed})
      : super(key: key);
  final Duration elapsed;

  @override
  Widget build(BuildContext context) {
    final hundreds = (elapsed.inMilliseconds / 10) % 100;
    final seconds = elapsed.inSeconds % 60;
    final minutes = elapsed.inMinutes % 60;
    final hundredsStr = hundreds.toStringAsFixed(0).padLeft(2, ' 0');
    final secondsStr = seconds.toStringAsFixed(0).padLeft(2, '0');
    final minutesStr = minutes.toStringAsFixed(0).padLeft(2, '0');
    const double digitwidth = 24;

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        TimeDigit( minutesStr.substring(0,1),width:digitwidth),
        TimeDigit( minutesStr.substring(0,1),width:digitwidth),
        TimeDigit( ':',width:6),
        TimeDigit( minutesStr.substring(0,1),width:digitwidth),
        TimeDigit( minutesStr.substring(0,1),width:digitwidth),
        TimeDigit( ':',width:6),
        TimeDigit( minutesStr.substring(0,1),width:digitwidth),
        TimeDigit( minutesStr.substring(0,1),width:digitwidth),

      ],
    );
  }
}
class TimeDigit extends StatelessWidget {
  const TimeDigit(this.texts,{Key? key,  required this.width}) : super(key: key);
  final String texts;
  final double width;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      child: Text(texts,),
    );
  }
}
