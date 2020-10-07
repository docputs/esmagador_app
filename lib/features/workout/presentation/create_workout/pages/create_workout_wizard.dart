import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/bottom_navigation_manager.dart';
import '../bloc/create_workout_bloc.dart';
import 'choose_title/choose_title_page.dart';

class CreateWorkoutWizard extends StatelessWidget {
  static const routeName = '/create-workout';

  @override
  Widget build(BuildContext context) {
    return BlocListener<CreateWorkoutBloc, CreateWorkoutState>(
      listener: (context, state) {
        state.saveSuccessOrFailureOption.fold(
          () {
            print(state.toString());
          },
          (failureOrSuccess) {
            failureOrSuccess.fold(
              (failure) => print(failure),
              (_) async {
                await Future.delayed(const Duration(seconds: 3));
                Navigator.of(context).popUntil(
                    ModalRoute.withName(BottomNavigationManager.routeName));
              },
            );
          },
        );
      },
      child: ChooseTitlePage(),
    );
  }
}
