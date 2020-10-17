import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';

import '../../../../../routes/router.gr.dart';
import '../../create_workout/bloc/create_workout_bloc.dart';
import 'components/workout_content.dart';

class WorkoutOverviewPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocListener<CreateWorkoutBloc, CreateWorkoutState>(
      listenWhen: (previous, current) =>
          previous.saveSuccessOrFailureOption !=
          current.saveSuccessOrFailureOption,
      listener: (context, state) {
        state.saveSuccessOrFailureOption.fold(
          () {},
          (failureOrSuccess) {
            failureOrSuccess.fold(
              (failure) {
                Scaffold.of(context).showSnackBar(
                  SnackBar(
                    content: Text(
                      failure.map(
                        couldNotSave: (_) => 'Erro ao salvar',
                        couldNotDelete: (_) => 'Erro ao deletar',
                        couldNotEdit: (_) => 'Erro ao editar',
                        couldNotFetch: (_) => 'Erro ao mostrar treinos',
                      ),
                    ),
                  ),
                );
              },
              (_) {
                ExtendedNavigator.of(context)
                    .popUntilPath(Routes.bottomNavigationManager);
                Scaffold.of(context).showSnackBar(
                    SnackBar(content: Text('Treino criado com sucesso!')));
              },
            );
          },
        );
      },
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  flex: 6,
                  child: Text(
                    'Meus treinos',
                    style: TextStyle(
                      fontSize: 26,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Spacer(),
                IconButton(
                  icon: Icon(FeatherIcons.plus),
                  onPressed: () {
                    ExtendedNavigator.of(context).push(Routes.chooseTitlePage);
                  },
                ),
              ],
            ),
            Expanded(child: WorkoutContent()),
          ],
        ),
      ),
    );
  }
}
