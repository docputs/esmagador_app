import 'package:flutter/material.dart';

import '../features/profile/presentation/profile_screen.dart';
import '../features/search/presentation/search_screen.dart';
import '../features/statistics/presentation/statistics_screen.dart';
import '../features/workout/presentation/pages/workout_page.dart';


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
      destination: WorkoutPage(),
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
