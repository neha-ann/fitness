import 'dart:async';

import 'package:circular_countdown/circular_countdown.dart';
import 'package:flutter/material.dart';

class Exercise extends StatefulWidget {
  final int total;
  const Exercise({super.key, required this.total});

  @override
  State<Exercise> createState() => _ExerciseState();
}

class _ExerciseState extends State<Exercise> {
  bool _showReadySetGo = true;
  int _readySetGoCounter = 3;

  @override
  void initState() {
    super.initState();
    _startReadySetGoCountdown();
  }

  void _startReadySetGoCountdown() {
    Timer.periodic(const Duration(seconds: 1), (timer) {
      setState(() {
        if (_readySetGoCounter > 1) {
          _readySetGoCounter--;
        } else {
          _showReadySetGo = false;
          timer.cancel();
        }
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: _showReadySetGo
            ? Text(
                _readySetGoCounter == 3
                    ? 'Ready'
                    : _readySetGoCounter == 2
                        ? 'Set'
                        : 'Go',
                style: const TextStyle(color: Colors.white, fontSize: 50),
              )
            : TimeCircularCountdown(
                diameter: 300,
                unit: CountdownUnit.second,
                countdownTotal: widget.total,
                textStyle: const TextStyle(color: Colors.white, fontSize: 50),
              ),
      ),
    );
  }
}
