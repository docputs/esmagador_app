import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';

import '../../widgets/default_button.dart';

class CreateWorkoutScreen extends StatelessWidget {
  static const routeName = '/create-workout';

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
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              flex: 4,
              child: Column(
                children: [
                  Text(
                    'Dê um nome para o seu treino',
                    style: Theme.of(context)
                        .textTheme
                        .headline4
                        .copyWith(fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                      width: double.infinity,
                      child: Text('Ex: Costas e bíceps')),
                      Spacer(),
                  TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                    ),
                  ),
                  Spacer(flex: 2),
                ],
              ),
            ),
            DefaultButton(
              text: 'Avançar',
              handler: () {
                // TODO
              },
            ),
          ],
        ),
      ),
    );
  }
}
