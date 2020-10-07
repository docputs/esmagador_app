import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';

import '../components/custom_header.dart';
import 'components/selected_exercises_list.dart';

class SelectedExercisesPage extends StatelessWidget {
  static const routeName = '/selected-exercises';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(
            FeatherIcons.arrowLeft,
            color: Colors.black,
          ),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          children: [
            CustomHeader(title: 'Exercícios selecionados', subtitle: null),
            SizedBox(height: 30),
            Expanded(
              child: SelectedExercisesList(),
            ),
          ],
        ),
      ),
    );
  }
}

