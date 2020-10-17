import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';

import '../../../../../../../routes/router.gr.dart';
import '../../../bloc/search_exercise_bloc/search_exercise_bloc.dart';

class SearchAndFilterExercise extends StatelessWidget {
  final TextEditingController _controller;

  const SearchAndFilterExercise(this._controller);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16.0),
      child: Row(
        children: [
          Expanded(
            child: TextField(
              controller: _controller,
              textInputAction: TextInputAction.search,
              autocorrect: false,
              onChanged: (value) {
                context
                    .bloc<SearchExerciseBloc>()
                    .add(SearchExerciseEvent.userTyped(text: value));
              },
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Digite aqui para pesquisar',
                suffixIcon: IconButton(
                  icon: Icon(FeatherIcons.filter),
                  onPressed: () {
                    ExtendedNavigator.of(context).push(Routes.filterPage);
                  },
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
