import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';

import '../features/workout/presentation/workout_overview/bloc/workout_actor/workout_actor_bloc.dart';
import '../features/workout/presentation/workout_overview/bloc/workout_overview_bloc.dart';
import '../service_locator.dart';
import 'constants.dart';
import 'navigation_item.dart';
import 'size_config.dart';

class BottomNavigationManager extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<NavigationItemProvider>(
      builder: (context, navigationItems, child) => MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (_) => getIt<WorkoutActorBloc>(),
          ),
          BlocProvider(
            create: (_) => getIt<WorkoutOverviewBloc>()
              ..add(const WorkoutOverviewEvent.watchAllStarted()),
          ),
        ],
        child: Scaffold(
          appBar: AppBar(),
          body:
              navigationItems.items[navigationItems.selectedIndex].destination,
          bottomNavigationBar: buildCustomBottomNavigationBar(navigationItems),
        ),
      ),
    );
  }

  Container buildCustomBottomNavigationBar(
      NavigationItemProvider navigationItems) {
    return Container(
      height: getProportionateScreenHeight(60),
      width: double.infinity,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: List.generate(
          navigationItems.items.length,
          (index) => buildBottomNavigationItem(
            icon: navigationItems.items[index].icon,
            onPressed: () => navigationItems.changePage(index),
            isActive: navigationItems.selectedIndex == index,
          ),
        ),
      ),
    );
  }

  IconButton buildBottomNavigationItem({
    @required IconData icon,
    @required Function onPressed,
    @required bool isActive,
  }) {
    return IconButton(
      icon: Icon(
        icon,
        color: isActive ? kPrimaryColor : Colors.grey,
      ),
      onPressed: onPressed,
    );
  }
}
