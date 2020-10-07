import 'package:esmagador/features/workout/presentation/create_workout/bloc/create_workout_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoadingPage extends StatefulWidget {
  static const routeName = '/loading';

  @override
  _LoadingPageState createState() => _LoadingPageState();
}

class _LoadingPageState extends State<LoadingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<CreateWorkoutBloc, CreateWorkoutState>(
        builder: (context, state) {
          if (state.isSubmitting) {
            return Center(
              child: CircularProgressIndicator(),
            );
          } else {
            return Center(
              child: Text('sucesso'),
            );
          }
        },
      ),
    );
  }
}
