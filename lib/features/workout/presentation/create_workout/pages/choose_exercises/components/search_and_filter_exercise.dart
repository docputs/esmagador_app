import 'package:esmagador/features/workout/presentation/create_workout/bloc/search_exercise_bloc/search_exercise_bloc.dart';
import 'package:esmagador/features/workout/presentation/create_workout/pages/filter/filter_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SearchAndFilterExercise extends StatelessWidget {
  const SearchAndFilterExercise({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16.0),
      child: Row(
        children: [
          Expanded(
            child: TextField(
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
                    Navigator.of(context).pushNamed(FilterPage.routeName);
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
