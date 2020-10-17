import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../../core/constants.dart';
import '../../../../domain/entities/workout.dart';
import '../../bloc/workout_actor/workout_actor_bloc.dart';

class WorkoutCard extends StatefulWidget {
  final Workout workout;

  const WorkoutCard({
    Key key,
    @required this.workout,
  }) : super(key: key);

  @override
  _WorkoutCardState createState() => _WorkoutCardState();
}

class _WorkoutCardState extends State<WorkoutCard> {
  bool _isExpanded = false;

  double _calculateContainerHeight() {
    if (_isExpanded) {
      final height = widget.workout.exercises.length * 80.0 + 70.0;
      if (height < 350)
        return height;
      else
        return 350.0;
    } else {
      return 80.0;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      child: InkWell(
        onTap: () {
          //TODO: implement edit
        },
        onLongPress: () {
          final workoutActorBloc = context.bloc<WorkoutActorBloc>();
          _showDeleteDialog(context, workoutActorBloc);
        },
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 200),
          padding: const EdgeInsets.all(16.0),
          height: _calculateContainerHeight(),
          child: Column(
            children: [
              buildWorkoutHeader(),
              if (_isExpanded)
                Expanded(
                  child: ListView.builder(
                    physics: BouncingScrollPhysics(),
                    itemCount: widget.workout.exercises.length,
                    itemBuilder: (context, index) {
                      final exercise = widget.workout.exercises[index];
                      return ListTile(
                        contentPadding: const EdgeInsets.all(0),
                        title: Text(exercise.exercise.title),
                        subtitle: Text(
                          exercise.exercise.mainMuscle,
                          style: TextStyle(color: Colors.grey.shade600),
                        ),
                        trailing: Text(
                          '${exercise.sets} x ${exercise.reps[0]} - ${exercise.reps[1]}',
                        ),
                      );
                    },
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }

  Future _showDeleteDialog(BuildContext context, WorkoutActorBloc bloc) {
    return showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text(
          'Excluir treino?',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        content: Text('Deseja mesmo excluir o treino ${widget.workout.title}?'),
        actions: [
          FlatButton(
            onPressed: () {
              ExtendedNavigator.of(context).pop();
            },
            child: const Text(
              'CANCELAR',
            ),
          ),
          FlatButton(
            onPressed: () {
              bloc.add(WorkoutActorEvent.workoutDeleted(widget.workout));
              Navigator.of(context).pop();
            },
            child: Text(
              'EXCLUIR',
              style: TextStyle(
                color: Theme.of(context).errorColor,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Row buildWorkoutHeader() {
    return Row(
      children: [
        Expanded(
          flex: 10,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                widget.workout.title,
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
                overflow: TextOverflow.ellipsis,
                softWrap: true,
              ),
              Text(
                '${widget.workout.exercises.length} exercícios',
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
          isExpanded: _isExpanded,
          onPressed: (value) {
            setState(() {
              _isExpanded = !value;
            });
          },
        ),
      ],
    );
  }

  @override
  void dispose() {
    super.dispose();
  }
}
