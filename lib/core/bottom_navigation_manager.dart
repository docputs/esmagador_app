import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'constants.dart';
import 'size_config.dart';
import 'navigation_item.dart';

class BottomNavigationManager extends StatelessWidget {
  static const routeName = '/bottom-navigation-manager';

  @override
  Widget build(BuildContext context) {
    return Consumer<NavigationItemProvider>(
      builder: (context, navigationItems, child) => Scaffold(
        appBar: AppBar(),
        body: navigationItems.items[navigationItems.selectedIndex].destination,
        bottomNavigationBar: buildCustomBottomNavigationBar(navigationItems),
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
