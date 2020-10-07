import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';

import '../../../../domain/entities/exercise.dart';
import '../../bloc/choose_exercise/choose_exercise_bloc.dart';

class ExerciseContent extends StatefulWidget {
  const ExerciseContent({
    Key key,
    @required this.exercise,
  }) : super(key: key);

  final Exercise exercise;

  @override
  _ExerciseContentState createState() => _ExerciseContentState();
}

class _ExerciseContentState extends State<ExerciseContent> {
  TextEditingController minRepsController;
  TextEditingController maxRepsController;

  @override
  void initState() {
    super.initState();
    minRepsController = TextEditingController(text: '8');
    maxRepsController = TextEditingController(text: '12');
    context
        .bloc<ChooseExerciseBloc>()
        .add(ChooseExerciseEvent.hasChosenExercise(exercise: widget.exercise));
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ChooseExerciseBloc, ChooseExerciseState>(
      builder: (context, state) {
        print(state.userExercise.toString());
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            buildExerciseHeader(),
            SizedBox(height: 30),
            buildSetsInput(state),
            SizedBox(height: 50),
            buildRepsInput(),
            SizedBox(height: 50),
            Text(
              'DESCRIÇÃO',
              style: TextStyle(
                fontSize: 18,
                color: Colors.grey,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(widget.exercise.description),
          ],
        );
      },
    );
  }

  Row buildRepsInput() {
    return Row(
      children: [
        Text(
          'REPETIÇÕES',
          style: TextStyle(
            fontSize: 18,
            color: Colors.grey,
            fontWeight: FontWeight.bold,
          ),
        ),
        Spacer(flex: 2),
        Expanded(
          child: TextField(
            controller: minRepsController,
            autocorrect: false,
            keyboardType: TextInputType.number,
            textAlign: TextAlign.center,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
            ),
            onChanged: (_) {
              context.bloc<ChooseExerciseBloc>().add(
                  ChooseExerciseEvent.changedMinimumReps(
                      value: int.parse(minRepsController.text)));
            },
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Text('A'),
        ),
        Expanded(
          child: TextField(
            controller: maxRepsController,
            onChanged: (_) {
              context.bloc<ChooseExerciseBloc>().add(
                  ChooseExerciseEvent.changedMaximumReps(
                      value: int.parse(maxRepsController.text)));
            },
            keyboardType: TextInputType.number,
            autocorrect: false,
            textAlign: TextAlign.center,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
            ),
          ),
        ),
      ],
    );
  }

  Row buildSetsInput(ChooseExerciseState state) {
    return Row(
      children: [
        Text(
          'SÉRIES',
          style: TextStyle(
            fontSize: 18,
            color: Colors.grey,
            fontWeight: FontWeight.bold,
          ),
        ),
        Spacer(),
        IconButton(
          icon: Icon(FeatherIcons.minusSquare),
          onPressed: () {
            context
                .bloc<ChooseExerciseBloc>()
                .add(ChooseExerciseEvent.decrementedSets());
          },
        ),
        SizedBox(width: 10),
        Text(
          '${state.userExercise.sets}',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(width: 10),
        IconButton(
          icon: Icon(FeatherIcons.plusSquare),
          onPressed: () {
            context
                .bloc<ChooseExerciseBloc>()
                .add(ChooseExerciseEvent.incrementedSets());
          },
        ),
      ],
    );
  }

  Row buildExerciseHeader() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            FittedBox(
              child: Text(
                widget.exercise.title,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Text(
              widget.exercise.mainMuscle,
              style: TextStyle(
                fontSize: 14,
                color: Colors.grey,
              ),
            ),
          ],
        ),
        IconButton(
          icon: Icon(FeatherIcons.heart),
          onPressed: () {},
        ),
      ],
    );
  }

  @override
  void dispose() {
    super.dispose();
    minRepsController.dispose();
    maxRepsController.dispose();
  }
}
