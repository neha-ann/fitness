import 'package:fitness/Exercise.dart';
import 'package:fitness/utils/MyText.dart';
import 'package:fitness/utils/cardio_card.dart';
import 'package:flutter/material.dart';

class Cardio extends StatefulWidget {
  Cardio({super.key});

  @override
  _CardioState createState() => _CardioState();
}

class _CardioState extends State<Cardio> {
  final List<List<String>> _exercise = [
    ['Jumping Jacks', 'assets/jumping_jacks.png'],
    ['Squats', 'assets/squats.png'],
    ['Pushups', 'assets/pushups.png'],
    ['Plank', 'assets/plank.png'],
    ['Burpees', 'assets/burpees.png'],
    ['Mountain Climbers', 'assets/cardio.png'],
    ['Lunges', 'assets/lunges.png'],
  ];

  final List<double> _numbers = List<double>.filled(7, 20.0);

  void _updateNumber(int index, double newNumber) {
    setState(() {
      _numbers[index] = newNumber;
    });
  }

  void _navigateToExercise(BuildContext context, int index) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => Exercise(total: _numbers[index].toInt()),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Mytext(
          color: Colors.white,
          text: 'CARDIO',
          size: 30,
        ),
      ),
      body: ListView.builder(
        itemCount: _exercise.length,
        itemBuilder: (context, index) {
          return InkWell(
            onTap: () => _navigateToExercise(context, index),
            child: CardioCard(
              text: '\t\t\t\t${_exercise[index][0]}',
              image: _exercise[index][1],
              number: _numbers[index],
              onNumberChanged: (newNumber) => _updateNumber(index, newNumber),
            ),
          );
        },
      ),
    );
  }
}
