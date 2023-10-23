// ignore_for_file: prefer_const_constructors

import 'dart:async';

import 'package:animation_practice/watch/elapsedtimebasic.dart';
import 'package:flutter/material.dart';

class Stopwatch extends StatefulWidget {
  const Stopwatch({Key? key}) : super(key: key);

  @override
  State<Stopwatch> createState() => _StopwatchState();
}

class _StopwatchState extends State<Stopwatch> {
  Duration _elapsed = Duration.zero;
  late final Timer _timer;
  late DateTime _initialTime;
  @override
  void initState() {
    super.initState();
    _initialTime = DateTime.now();

    Timer.periodic(Duration(milliseconds: 50), (_) {
      final now = DateTime.now();
      setState(() {
        _elapsed = now.difference(_initialTime);
      });
    });

  }
  @override
  void dispose() {
    _timer.cancel();
    super.dispose();

  }

  @override
  Widget build(BuildContext context) {
    return ElapsedTimeTextBasic(elapsed: _elapsed);
  }
}
