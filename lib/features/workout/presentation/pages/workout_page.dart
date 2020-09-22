import 'package:flutter/material.dart';

import '../../../../core/constants.dart';
import '../../../../core/size_config.dart';
import 'create_workout_screen.dart';

class WorkoutPage extends StatelessWidget {
  static const routeName = '/workout';

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: getProportionateScreenWidth(16),
      ),
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Meus treinos',
                    style: Theme.of(context)
                        .textTheme
                        .headline4
                        .copyWith(fontWeight: FontWeight.bold),
                  ),
                  IconButton(
                    icon: Icon(Icons.edit),
                    onPressed: () {},
                  ),
                ],
              ),
              Text('Nenhum treino encontrado :c'),
            ],
          ),
          IconButton(
            iconSize: getProportionateScreenHeight(70),
            color: kPrimaryColor,
            icon: Icon(Icons.add_circle),
            onPressed: () {
              Navigator.of(context).pushNamed(CreateWorkoutScreen.routeName);
            },
          )
        ],
      ),
    );
  }
}
