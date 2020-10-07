import 'package:flutter/material.dart';

import '../../../../../../core/constants.dart';
import '../../../../domain/entities/workout.dart';

class WorkoutCard extends StatelessWidget {
  final Workout workout;

  const WorkoutCard({
    Key key,
    @required this.workout,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: InkWell(
        onTap: () {},
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            children: [
              Expanded(
                flex: 10,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      workout.title,
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                      overflow: TextOverflow.ellipsis,
                      softWrap: true,
                    ),
                    Text(
                      '${workout.exercises.length} exercícios',
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.grey.shade600,
                      ),
                    ),
                  ],
                ),
              ),
              Spacer(),
              RaisedButton(
                onPressed: () {},
                child: Text(
                  'TREINAR',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                color: kPrimaryColor,
                colorBrightness: Brightness.dark,
              ),
              ExpandIcon(
                onPressed: (value) {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
