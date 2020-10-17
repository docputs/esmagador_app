import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';

import '../../../../../core/constants.dart';
import '../../../../auth/presentation/auth_bloc.dart';
import '../../bloc/profile_actor/profile_actor_bloc.dart';

class OptionsList extends StatefulWidget {
  OptionsList({
    Key key,
  }) : super(key: key);

  @override
  _OptionsListState createState() => _OptionsListState();
}

class _OptionsListState extends State<OptionsList> {
  List<Map<String, dynamic>> _items;

  @override
  void initState() {
    super.initState();
    _items = [
      {
        'title': 'Alterar nome',
        'dialogTitle': 'Digite seu novo nome',
        'handler': (displayName) {
          context
              .bloc<ProfileActorBloc>()
              .add(ProfileActorEvent.changeDisplayNamePressed(displayName));
        },
        'value': '',
      },
      {
        'title': 'Alterar email',
        'dialogTitle': 'Digite seu novo email',
        'handler': (emailAddress) {
          context
              .bloc<ProfileActorBloc>()
              .add(ProfileActorEvent.changeEmailAddressPressed(emailAddress));
        },
        'value': '',
      },
      {
        'title': 'Alterar senha',
        'dialogTitle': 'Digite sua nova senha',
        'handler': (password) {
          context
              .bloc<ProfileActorBloc>()
              .add(ProfileActorEvent.changePasswordPressed(password));
        },
        'value': '',
      },
    ];
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: BouncingScrollPhysics(),
      children: [
        ..._items
            .map(
              (item) => ListTile(
                title: Text(item['title']),
                trailing: Icon(FeatherIcons.chevronRight),
                onTap: () {
                  buildDialog(context, item);
                },
              ),
            )
            .toList(),
        ListTile(
          trailing: Icon(FeatherIcons.chevronRight),
          title: Text('Apagar histórico'),
          onTap: () {},
        ),
        ListTile(
          trailing: Icon(FeatherIcons.chevronRight),
          title: Text('Sair da conta'),
          onTap: () {
            context.bloc<AuthBloc>().add(const AuthEvent.signedOut());
          },
        ),
      ],
    );
  }

  Future buildDialog(BuildContext context, Map<String, dynamic> item) {
    return showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text(item['title']),
        content: TextField(
          onChanged: (value) => item['value'] = value,
        ),
        actions: [
          FlatButton(
            onPressed: () => ExtendedNavigator.of(context).pop(),
            child: Text(
              'CANCELAR',
              style: TextStyle(color: kPrimaryColor),
            ),
          ),
          FlatButton(
            onPressed: () {
              item['handler'](item['value']);
              ExtendedNavigator.of(context).pop();
            },
            child: Text(
              'SALVAR',
              style: TextStyle(color: kPrimaryColor),
            ),
          ),
        ],
      ),
    );
  }
}
