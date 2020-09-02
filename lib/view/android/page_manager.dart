import 'package:esmagador/view/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'screens/profile/profile_screen.dart';
import 'screens/workout/workout_screen.dart';
import 'screens/search/search_screen.dart';
import 'screens/statistics/statistics_screen.dart';

class PageManager extends StatefulWidget {
  @override
  _PageManagerState createState() => _PageManagerState();
}

class _PageManagerState extends State<PageManager> {
  var _selectedPageIndex = 0;

  final List _pages = [
    WorkoutScreen(),
    SearchScreen(),
    StatisticsScreen(),
    ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedPageIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: (value) {
          setState(() {
            _selectedPageIndex = value;
          });
        },
        type: BottomNavigationBarType.fixed,
        currentIndex: _selectedPageIndex,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            // icon: SvgPicture.asset('assets/icons/gym.svg', height: 24,),
            title: Text(''),
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset('assets/icons/search.svg'),
            title: Text(''),
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset('assets/icons/bar-chart-2.svg'),
            title: Text(''),
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset('assets/icons/user.svg'),
            title: Text(''),
          ),
        ],
      ),
    );
  }
}
