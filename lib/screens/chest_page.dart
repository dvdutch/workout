import 'package:flutter/material.dart';
import 'package:workout/models/exercise.dart';
import 'package:workout/screens/exercise_page.dart';

class ChestPage extends StatelessWidget {
  const ChestPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Chest Exercises')),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text('Pick an exercise:'),
          const SizedBox(height: 16.0),
          TextButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => ExercisePage(
                        exercise: Exercise(
                            name: 'Push-ups',
                            imagePath: 'assets/push_ups.jpg'))),
              );
            },
            child: Text(
              'Push-ups',
              style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                    color: Colors.white,
                  ),
            ),
          ),
          const SizedBox(height: 8.0),
          TextButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => ExercisePage(
                        exercise: Exercise(
                            name: 'Bench Press',
                            imagePath: 'assets/bench_press.jpg'))),
              );
            },
            child: Text(
              'Bench Press',
              style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                    color: Colors.white,
                  ),
            ),
          ),
        ],
      )),
    );
  }
}
