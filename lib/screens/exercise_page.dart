import 'package:flutter/material.dart';
import 'package:workout/models/exercise.dart';

class ExercisePage extends StatelessWidget {
  const ExercisePage({Key? key, required this.exercise}) : super(key: key);
  final Exercise exercise;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(exercise.name)),
      body: Center(
        child: Image.asset(exercise.imagePath),
      ),
    );
  }
}
