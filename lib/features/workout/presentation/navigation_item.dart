import 'package:flutter/material.dart';

import 'screens/profile/profile_screen.dart';
import 'screens/search/search_screen.dart';
import 'screens/statistics/statistics_screen.dart';
import 'screens/workout/workout_screen.dart';


class NavigationItem {
  final int id;
  final String asset;
  final Widget destination;

  const NavigationItem({
    @required this.id,
    @required this.asset,
    @required this.destination,
  });
}

class NavigationItemProvider with ChangeNotifier {
  int selectedIndex = 0;

  List<NavigationItem> _items = [
    NavigationItem(
      id: 1,
      asset: 'assets/icons/gym.svg',
      destination: WorkoutScreen(),
    ),
    NavigationItem(
      id: 2,
      asset: 'assets/icons/search.svg',
      destination: SearchScreen(),
    ),
    NavigationItem(
      id: 3,
      asset: 'assets/icons/bar-chart-2.svg',
      destination: StatisticsScreen(),
    ),
    NavigationItem(
      id: 4,
      asset: 'assets/icons/user.svg',
      destination: ProfileScreen(),
    ),
  ];

  List<NavigationItem> get items => [..._items];

  void changePage(int index) {
    selectedIndex = index;
    notifyListeners();
  }
}
