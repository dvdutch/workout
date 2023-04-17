import 'package:flutter/material.dart';
import 'package:workout/models/exercise.dart';
import 'package:workout/screens/exercise_page.dart';

class LegsPage extends StatelessWidget {
  const LegsPage({Key? key}) : super(key: key);

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
                            name: 'Squats', imagePath: 'assets/squats.jpg'))),
              );
            },
            child: Text(
              'Squats',
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
                            name: 'Lunges', imagePath: 'assets/lunges.jpg'))),
              );
            },
            child: Text(
              'Lunges',
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
