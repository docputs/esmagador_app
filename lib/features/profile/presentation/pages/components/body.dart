import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/constants.dart';
import '../../../../workout/presentation/create_workout/pages/components/custom_header.dart';
import '../../bloc/profile_actor/profile_actor_bloc.dart';
import '../../bloc/profile_bloc.dart';
import 'options_list.dart';

class Body extends StatelessWidget {
  Body({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocListener<ProfileActorBloc, ProfileActorState>(
      listener: (context, state) {
        state.map(
          initial: (_) {},
          success: (_) {
            context.bloc<ProfileBloc>().add(const ProfileEvent.started());
            Scaffold.of(context).showSnackBar(
              SnackBar(content: Text('Perfil atualizado com sucesso!')),
            );
          },
          failure: (state) {
            Scaffold.of(context).showSnackBar(
              SnackBar(
                  content: Text(state.failure.maybeMap(
                orElse: () => '',
                requiresRecentLogin: (_) => 'Ação requer login recente',
                serverError: (_) => 'Erro no servidor',
                unknownError: (_) => 'Erro desconhecido',
              ))),
            );
          },
        );
      },
      child: BlocBuilder<ProfileBloc, ProfileState>(
        builder: (context, state) {
          return state.map(
            initial: (_) => const SizedBox(),
            loading: (_) => const Center(child: CircularProgressIndicator()),
            error: (state) => Center(
              child: Text(
                state.failure.maybeMap(
                  orElse: () => '',
                  serverError: (_) => 'Erro no servidor',
                  unknownError: (_) => 'Erro desconhecido',
                ),
              ),
            ),
            success: (state) {
              return Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: CustomHeader(
                      title: state.profile.displayName ?? 'Usuário',
                      subtitle: Text(state.profile.email ?? 'E-mail'),
                    ),
                  ),
                  const SizedBox(height: 30),
                  Container(
                    height: 150,
                    decoration: BoxDecoration(
                      color: kPrimaryColor,
                      shape: BoxShape.circle,
                    ),
                  ),
                  const SizedBox(height: 30),
                  Expanded(
                    child: OptionsList(),
                  ),
                ],
              );
            },
          );
        },
      ),
    );
  }
}
