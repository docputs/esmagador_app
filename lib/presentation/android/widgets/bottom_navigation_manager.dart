import 'package:esmagador/data/models/navigation_item.dart';
import 'package:esmagador/presentation/constants.dart';
import 'package:esmagador/presentation/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';

class BottomNavigationManager extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<NavigationItemProvider>(
      builder: (context, navigationItems, child) => Scaffold(
        appBar: AppBar(),
        body: navigationItems.items[navigationItems.selectedIndex].destination,
        bottomNavigationBar: Container(
          height: getProportionateScreenHeight(60),
          width: double.infinity,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: List.generate(
              navigationItems.items.length,
              (index) => buildBottomNavigationItem(
                asset: navigationItems.items[index].asset,
                onPressed: () => navigationItems.changePage(index),
                isActive: navigationItems.selectedIndex == index,
              ),
            ),
          ),
        ),
      ),
    );
  }

  IconButton buildBottomNavigationItem({
    @required String asset,
    @required Function onPressed,
    @required bool isActive,
  }) {
    return IconButton(
      icon: SvgPicture.asset(
        asset,
        color: isActive ? kPrimaryColor : Colors.grey,
      ),
      onPressed: onPressed,
    );
  }
}
