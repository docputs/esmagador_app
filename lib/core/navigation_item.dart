import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';

import '../features/profile/presentation/pages/profile_page.dart';
import '../features/search/presentation/search_page.dart';
import '../features/statistics/presentation/statistics_page.dart';
import '../features/workout/presentation/workout_overview/pages/workout_overview_page.dart';

class NavigationItem {
  final int id;
  final IconData icon;
  final Widget destination;

  const NavigationItem({
    @required this.id,
    @required this.icon,
    @required this.destination,
  });
}

class NavigationItemProvider with ChangeNotifier {
  int selectedIndex = 0;

  List<NavigationItem> _items = [
    NavigationItem(
      id: 1,
      icon: FeatherIcons.play,
      destination: WorkoutOverviewPage(),
    ),
    NavigationItem(
      id: 2,
      icon: FeatherIcons.search,
      destination: SearchPage(),
    ),
    NavigationItem(
      id: 3,
      icon: FeatherIcons.barChart2,
      destination: StatisticsPage(),
    ),
    NavigationItem(
      id: 4,
      icon: FeatherIcons.user,
      destination: ProfilePage(),
    ),
  ];

  List<NavigationItem> get items => [..._items];

  void changePage(int index) {
    selectedIndex = index;
    notifyListeners();
  }
}
